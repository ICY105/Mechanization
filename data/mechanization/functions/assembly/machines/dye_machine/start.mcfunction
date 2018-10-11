replaceitem block ~ ~ ~ container.0 diamond_shovel{Unbreakable:1,UIPart:1,display:{Name:"{\"text\":\" \",\"italic\":false}"},Damage:43,HideFlags:63}
replaceitem block ~ ~ ~ container.2 diamond_shovel{Unbreakable:1,UIPart:1,display:{Name:"{\"text\":\" \",\"italic\":false}"},Damage:43,HideFlags:63}
replaceitem block ~ ~ ~ container.3 diamond_shovel{Unbreakable:1,UIPart:1,display:{Name:"{\"text\":\" \",\"italic\":false}"},Damage:43,HideFlags:63}
replaceitem block ~ ~ ~ container.4 diamond_shovel{Unbreakable:1,UIPart:1,display:{Name:"{\"text\":\" \",\"italic\":false}"},Damage:203,HideFlags:63}
replaceitem block ~ ~ ~ container.5 diamond_shovel{Unbreakable:1,UIPart:1,display:{Name:"{\"text\":\" \",\"italic\":false}"},Damage:43,HideFlags:63}
replaceitem block ~ ~ ~ container.6 diamond_shovel{Unbreakable:1,UIPart:1,display:{Name:"{\"text\":\" \",\"italic\":false}"},Damage:43,HideFlags:63}
replaceitem block ~ ~ ~ container.8 diamond_shovel{Unbreakable:1,UIPart:1,display:{Name:"{\"text\":\" \",\"italic\":false}"},Damage:43,HideFlags:63}

execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[1].Count
execute store result score temp_1 mech_data run data get block ~ ~ ~ Items[7].Count



execute if score temp_1 mech_data matches 8.. if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:bone_meal"}]} run function mechanization:assembly/machines/dye_machine/white
execute if score temp_1 mech_data matches 8.. if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:orange_dye"}]} run function mechanization:assembly/machines/dye_machine/orange
execute if score temp_1 mech_data matches 8.. if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:magenta_dye"}]} run function mechanization:assembly/machines/dye_machine/magenta
execute if score temp_1 mech_data matches 8.. if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:light_blue_dye"}]} run function mechanization:assembly/machines/dye_machine/light_blue
execute if score temp_1 mech_data matches 8.. if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:dandelion_yellow"}]} run function mechanization:assembly/machines/dye_machine/yellow
execute if score temp_1 mech_data matches 8.. if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:lime_dye"}]} run function mechanization:assembly/machines/dye_machine/lime
execute if score temp_1 mech_data matches 8.. if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:pink_dye"}]} run function mechanization:assembly/machines/dye_machine/pink
execute if score temp_1 mech_data matches 8.. if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:gray_dye"}]} run function mechanization:assembly/machines/dye_machine/gray
execute if score temp_1 mech_data matches 8.. if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:light_gray_dye"}]} run function mechanization:assembly/machines/dye_machine/light_gray
execute if score temp_1 mech_data matches 8.. if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:cyan_dye"}]} run function mechanization:assembly/machines/dye_machine/cyan
execute if score temp_1 mech_data matches 8.. if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:purple_dye"}]} run function mechanization:assembly/machines/dye_machine/purple
execute if score temp_1 mech_data matches 8.. if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:lapis_lazuli"}]} run function mechanization:assembly/machines/dye_machine/blue
execute if score temp_1 mech_data matches 8.. if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:cocoa_beans"}]} run function mechanization:assembly/machines/dye_machine/brown
execute if score temp_1 mech_data matches 8.. if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:cactus_green"}]} run function mechanization:assembly/machines/dye_machine/green
execute if score temp_1 mech_data matches 8.. if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:rose_red"}]} run function mechanization:assembly/machines/dye_machine/red
execute if score temp_1 mech_data matches 8.. if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:ink_sac"}]} run function mechanization:assembly/machines/dye_machine/black



scoreboard players remove temp_0 mech_data 1
scoreboard players remove temp_1 mech_data 8
execute if entity @e[type=item,tag=mech_comp_new] store result block ~ ~ ~ Items[7].Count byte 1 run scoreboard players get temp_1 mech_data
execute if entity @e[type=item,tag=mech_comp_new] store result block ~ ~ ~ Items[1].Count byte 1 run scoreboard players get temp_0 mech_data

execute if entity @s[nbt={Rotation:[0.01f,0.0f]}] run tp @e[type=item,tag=mech_comp_new] ~ ~ ~1
execute if entity @s[nbt={Rotation:[90f,0.0f]}] run tp @e[type=item,tag=mech_comp_new] ~-1 ~ ~
execute if entity @s[nbt={Rotation:[180f,0.0f]}] run tp @e[type=item,tag=mech_comp_new] ~ ~ ~-1
execute if entity @s[nbt={Rotation:[270f,0.0f]}] run tp @e[type=item,tag=mech_comp_new] ~1 ~ ~

execute store result score temp_0 mech_data if entity @e[type=item,tag=mech_comp_new]
scoreboard players set temp_1 mech_data 16
scoreboard players operation temp_0 mech_data *= temp_1 mech_data
scoreboard players operation @s mech_power -= temp_0 mech_data
tag @e[type=item,tag=mech_comp_new] remove mech_comp_new
