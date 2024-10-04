
execute if items block ~ ~ ~ container.0 minecraft:end_stone run scoreboard players add @s mechanization.data 2
execute if items block ~ ~ ~ container.0 minecraft:purpur_block run scoreboard players add @s mechanization.data 4
execute if items block ~ ~ ~ container.0 minecraft:ender_pearl run scoreboard players add @s mechanization.data 8
execute if items block ~ ~ ~ container.0 minecraft:ender_eye run scoreboard players add @s mechanization.data 24
execute if items block ~ ~ ~ container.0 minecraft:dragon_breath run scoreboard players add @s mechanization.data 60
execute if items block ~ ~ ~ container.0 minecraft:end_crystal run scoreboard players add @s mechanization.data 240

execute if items block ~ ~ ~ container.0 minecraft:shulker_shell run scoreboard players add @s mechanization.data 300
execute if items block ~ ~ ~ container.0 minecraft:dragon_head run scoreboard players add @s mechanization.data 4000
execute if items block ~ ~ ~ container.0 minecraft:elytra run scoreboard players add @s mechanization.data 8000

scoreboard players operation @s mechanization.data *= #machines.cf.dimensional_generator.fuel mechanization.data
scoreboard players operation @s mechanization.data /= #cons.100 mechanization.data

item modify block ~ ~ ~ container.0 mechanization:decrement_count
