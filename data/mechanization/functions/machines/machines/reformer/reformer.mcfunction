data merge entity @s {Fire:32676}

#load scoreboard values
execute unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s ArmorItems[3].tag.mech_power
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s ArmorItems[3].tag.mech_gridid

#main
execute unless block ~ ~ ~ dropper{Items:[{Slot:0b}]} run replaceitem block ~ ~ ~ container.0 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
execute unless block ~ ~ ~ dropper{Items:[{Slot:1b}]} run replaceitem block ~ ~ ~ container.1 minecraft:structure_block{CustomModelData:6422204,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
execute unless block ~ ~ ~ dropper{Items:[{Slot:2b}]} run replaceitem block ~ ~ ~ container.2 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
execute unless block ~ ~ ~ dropper{Items:[{Slot:3b}]} run replaceitem block ~ ~ ~ container.3 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
execute unless block ~ ~ ~ dropper{Items:[{Slot:5b}]} run replaceitem block ~ ~ ~ container.5 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
execute unless block ~ ~ ~ dropper{Items:[{Slot:6b}]} run replaceitem block ~ ~ ~ container.6 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
execute unless block ~ ~ ~ dropper{Items:[{Slot:7b}]} run replaceitem block ~ ~ ~ container.7 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
execute unless block ~ ~ ~ dropper{Items:[{Slot:8b}]} run replaceitem block ~ ~ ~ container.8 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}

execute if score @s mech_power matches 128.. if block ~ ~ ~ dropper{Items:[{Slot:4b}]} unless block ~ ~ ~ dropper{Items:[{Slot:4b,tag:{Unbreakable:1b}}]} unless block ~ ~ ~ dropper{Items:[{Slot:4b,tag:{Damage:0}}]} unless block ~ ~ ~ dropper{Items:[{Slot:4b,tag:{du_dur:{enabled:1b}}}]} run function mechanization:machines/machines/reformer/normal_repair
execute if score @s mech_power matches 128.. if block ~ ~ ~ dropper{Items:[{Slot:4b,tag:{du_dur:{init:1b}}}]} unless block ~ ~ ~ dropper{Items:[{Slot:4b,tag:{Damage:0}}]} run function mechanization:machines/machines/reformer/du_repair

#store scoreboard values
execute store result entity @s ArmorItems[3].tag.mech_power int 1 run scoreboard players get @s mech_power
execute store result entity @s ArmorItems[3].tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

#cleanup
execute unless block ~ ~ ~ dropper run loot spawn ~ ~ ~ loot mechanization:base/tier_2_machine_frame
execute unless block ~ ~ ~ dropper run kill @s
