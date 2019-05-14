data merge entity @s {Fire:32676}

#load scoreboard values
execute unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s ArmorItems[3].tag.mech_power
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s ArmorItems[3].tag.mech_gridid

#main
particle minecraft:enchant ~ ~1 ~ 0 0 0 1 25
execute if score @s mech_power matches 2048.. if block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{Enchantments:[{}]}},{Slot:1b,id:"minecraft:book"},{Slot:2b,id:"minecraft:lapis_lazuli"}]} unless block ~ ~ ~ dropper{Items:[{Slot:4b},{Slot:5b}]} run function mechanization:machines/machines/disenchanter/activate

execute unless block ~ ~ ~ dropper{Items:[{Slot:5b}]} run replaceitem block ~ ~ ~ container.5 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
execute unless block ~ ~ ~ dropper{Items:[{Slot:6b}]} run replaceitem block ~ ~ ~ container.6 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
execute unless block ~ ~ ~ dropper{Items:[{Slot:7b}]} run replaceitem block ~ ~ ~ container.7 minecraft:structure_block{CustomModelData:6422205,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
execute unless block ~ ~ ~ dropper{Items:[{Slot:8b}]} run replaceitem block ~ ~ ~ container.8 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}

#store scoreboard values
execute store result entity @s ArmorItems[3].tag.mech_power int 1 run scoreboard players get @s mech_power
execute store result entity @s ArmorItems[3].tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

#cleanup
execute unless block ~ ~ ~ dropper run loot spawn ~ ~ ~ loot mechanization:base/tier_3_machine_frame
execute unless block ~ ~ ~ dropper run kill @s
