execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:end_stone"}] run scoreboard players add @s mechanization.data 4
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:purpur_block"}] run scoreboard players add @s mechanization.data 8
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:ender_pearl"}] run scoreboard players add @s mechanization.data 30
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:ender_eye"}] run scoreboard players add @s mechanization.data 80
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:dragon_breath"}] run scoreboard players add @s mechanization.data 80
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:end_crystal"}] run scoreboard players add @s mechanization.data 250

execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:shulker_shell"}] run scoreboard players add @s mechanization.data 500
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:dragon_head"}] run scoreboard players add @s mechanization.data 2000
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:elytra"}] run scoreboard players add @s mechanization.data 8000

scoreboard players operation @s mechanization.data *= #machines.cf.dimensional_generator.fuel mechanization.data
scoreboard players operation @s mechanization.data /= #cons.100 mechanization.data

item modify block ~ ~ ~ container.0 mechanization:decrement_count
