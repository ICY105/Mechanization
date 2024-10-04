
execute if items block ~ ~ ~ container.0 minecraft:nether_brick run scoreboard players add @s mechanization.data 4
execute if items block ~ ~ ~ container.0 minecraft:soul_sand run scoreboard players add @s mechanization.data 1
execute if items block ~ ~ ~ container.0 minecraft:soul_soil run scoreboard players add @s mechanization.data 1
execute if items block ~ ~ ~ container.0 minecraft:magma_block run scoreboard players add @s mechanization.data 8
execute if items block ~ ~ ~ container.0 minecraft:glowstone_dust run scoreboard players add @s mechanization.data 8
execute if items block ~ ~ ~ container.0 minecraft:quartz run scoreboard players add @s mechanization.data 15
execute if items block ~ ~ ~ container.0 minecraft:blaze_powder run scoreboard players add @s mechanization.data 15
execute if items block ~ ~ ~ container.0 minecraft:ghast_tear run scoreboard players add @s mechanization.data 120

execute if items block ~ ~ ~ container.0 minecraft:wither_rose run scoreboard players add @s mechanization.data 120
execute if items block ~ ~ ~ container.0 minecraft:wither_skeleton_skull run scoreboard players add @s mechanization.data 600
execute if items block ~ ~ ~ container.0 minecraft:nether_star run scoreboard players add @s mechanization.data 4000

scoreboard players operation @s mechanization.data *= #machines.cf.dimensional_generator.fuel mechanization.data
scoreboard players operation @s mechanization.data /= #cons.100 mechanization.data

item modify block ~ ~ ~ container.0 mechanization:decrement_count
