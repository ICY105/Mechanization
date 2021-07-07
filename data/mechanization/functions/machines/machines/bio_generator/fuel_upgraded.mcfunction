scoreboard players set temp_0 mech_data 0
execute if block ~ ~ ~ dropper{Items:[{id:"minecraft:cactus"}]} run scoreboard players add temp_0 mech_data 4
execute if block ~ ~ ~ dropper{Items:[{id:"minecraft:melon_slice"}]} run scoreboard players add temp_0 mech_data 4

execute if block ~ ~ ~ dropper{Items:[{id:"minecraft:sugar_cane"}]} run scoreboard players add temp_0 mech_data 8
execute if block ~ ~ ~ dropper{Items:[{id:"minecraft:kelp"}]} run scoreboard players add temp_0 mech_data 8
execute if block ~ ~ ~ dropper{Items:[{id:"minecraft:bamboo"}]} run scoreboard players add temp_0 mech_data 8
execute if block ~ ~ ~ dropper{Items:[{id:"minecraft:rotten_flesh"}]} run scoreboard players add temp_0 mech_data 8

execute if block ~ ~ ~ dropper{Items:[{id:"minecraft:sweet_berries"}]} run scoreboard players add temp_0 mech_data 12
execute if block ~ ~ ~ dropper{Items:[{id:"minecraft:cocoa_beans"}]} run scoreboard players add temp_0 mech_data 12
execute if block ~ ~ ~ dropper{Items:[{id:"minecraft:beetroot"}]} run scoreboard players add temp_0 mech_data 12
execute if block ~ ~ ~ dropper{Items:[{id:"minecraft:potato"}]} run scoreboard players add temp_0 mech_data 12
execute if block ~ ~ ~ dropper{Items:[{id:"minecraft:carrot"}]} run scoreboard players add temp_0 mech_data 12

execute if block ~ ~ ~ dropper{Items:[{id:"minecraft:wheat"}]} run scoreboard players add temp_0 mech_data 16
execute if block ~ ~ ~ dropper{Items:[{id:"minecraft:pumpkin"}]} run scoreboard players add temp_0 mech_data 16
execute if block ~ ~ ~ dropper{Items:[{id:"minecraft:apple"}]} run scoreboard players add temp_0 mech_data 16
execute if block ~ ~ ~ dropper{Items:[{id:"minecraft:cod"}]} run scoreboard players add temp_0 mech_data 16
execute if block ~ ~ ~ dropper{Items:[{id:"minecraft:salmon"}]} run scoreboard players add temp_0 mech_data 16
execute if block ~ ~ ~ dropper{Items:[{id:"minecraft:glow_berries"}]} run scoreboard players add temp_0 mech_data 16

execute if block ~ ~ ~ dropper{Items:[{id:"minecraft:melon"}]} run scoreboard players add temp_0 mech_data 20
execute if block ~ ~ ~ dropper{Items:[{id:"minecraft:nether_wart"}]} run scoreboard players add temp_0 mech_data 20
execute if block ~ ~ ~ dropper{Items:[{id:"minecraft:rabbit"}]} run scoreboard players add temp_0 mech_data 20
execute if block ~ ~ ~ dropper{Items:[{id:"minecraft:chicken"}]} run scoreboard players add temp_0 mech_data 20

execute if block ~ ~ ~ dropper{Items:[{id:"minecraft:red_mushroom"}]} run scoreboard players add temp_0 mech_data 24
execute if block ~ ~ ~ dropper{Items:[{id:"minecraft:brown_mushroom"}]} run scoreboard players add temp_0 mech_data 24
execute if block ~ ~ ~ dropper{Items:[{id:"minecraft:chorus_fruit"}]} run scoreboard players add temp_0 mech_data 24
execute if block ~ ~ ~ dropper{Items:[{id:"minecraft:beef"}]} run scoreboard players add temp_0 mech_data 24
execute if block ~ ~ ~ dropper{Items:[{id:"minecraft:porkchop"}]} run scoreboard players add temp_0 mech_data 24
execute if block ~ ~ ~ dropper{Items:[{id:"minecraft:mutton"}]} run scoreboard players add temp_0 mech_data 24

execute if block ~ ~ ~ dropper{Items:[{id:"minecraft:warped_fungus"}]} run scoreboard players add temp_0 mech_data 28
execute if block ~ ~ ~ dropper{Items:[{id:"minecraft:crimson_fungus"}]} run scoreboard players add temp_0 mech_data 28

execute if block ~ ~ ~ dropper{Items:[{id:"minecraft:chorus_flower"}]} run scoreboard players add temp_0 mech_data 32
execute if block ~ ~ ~ dropper{Items:[{id:"minecraft:hay_block"}]} run scoreboard players add temp_0 mech_data 32

scoreboard players operation @s mech_power += temp_0 mech_data
execute if score temp_0 mech_data matches 1.. run function mechanization:machines/machines/bio_generator/decrease_counts
