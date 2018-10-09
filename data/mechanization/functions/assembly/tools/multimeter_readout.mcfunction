
#storage unit
scoreboard players set temp_0 mech_data 0
scoreboard players set temp_1 mech_data 0
execute as @e[tag=mech_unlimited_storage,distance=..5] if block ~ ~ ~ hopper{Items:[{Slot:0b}]} store result score temp_0 mech_data run data get entity @s ArmorItems[3].tag.mech_storage
execute as @e[tag=mech_unlimited_storage,distance=..5] if block ~ ~ ~ hopper{Items:[{Slot:0b}]} store result score temp_1 mech_data run data get block ~ ~ ~ Items[0].Count
execute if entity @e[tag=mech_unlimited_storage,distance=..5] run scoreboard players operation temp_0 mech_data += temp_1 mech_data
execute if entity @e[tag=mech_unlimited_storage,distance=..5] run tellraw @p ["",{"translate":"mech.text.multimeter.storage","color":"dark_green"},{"score":{"name":"temp_0","objective":"mech_data"},"color":"dark_aqua"}]
