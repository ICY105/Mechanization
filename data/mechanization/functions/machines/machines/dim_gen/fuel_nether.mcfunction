
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:nether_brick"}]} run scoreboard players add @s mechanization.data 4
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:soul_sand"}]} run scoreboard players add @s mechanization.data 10
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:magma_block"}]} run scoreboard players add @s mechanization.data 40
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:glowstone_dust"}]} run scoreboard players add @s mechanization.data 40
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:quartz"}]} run scoreboard players add @s mechanization.data 60
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:blaze_powder"}]} run scoreboard players add @s mechanization.data 60
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:ghast_tear"}]} run scoreboard players add @s mechanization.data 250

execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:wither_rose"}]} run scoreboard players add @s mechanization.data 500
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:wither_skeleton_skull"}]} run scoreboard players add @s mechanization.data 2000
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:nether_star"}]} run scoreboard players add @s mechanization.data 6000

scoreboard players operation @s mechanization.data *= $machines.cf.dim_gen.fuel mech_data
scoreboard players operation @s mechanization.data /= $cons.100 du_data

item modify block ~ ~ ~ container.0 mechanization:decrement_count
