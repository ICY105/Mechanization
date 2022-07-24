scoreboard players set #energy mechanization.data 0
execute if block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:cactus"}]} run scoreboard players add #energy mechanization.data 6
execute if block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:melon_slice"}]} run scoreboard players add #energy mechanization.data 6

execute if block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:sugar_cane"}]} run scoreboard players add #energy mechanization.data 12
execute if block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:kelp"}]} run scoreboard players add #energy mechanization.data 12
execute if block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:bamboo"}]} run scoreboard players add #energy mechanization.data 12
execute if block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:rotten_flesh"}]} run scoreboard players add #energy mechanization.data 12

execute if block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:sweet_berries"}]} run scoreboard players add #energy mechanization.data 18
execute if block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:cocoa_beans"}]} run scoreboard players add #energy mechanization.data 18
execute if block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:beetroot"}]} run scoreboard players add #energy mechanization.data 18
execute if block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:potato"}]} run scoreboard players add #energy mechanization.data 18
execute if block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:carrot"}]} run scoreboard players add #energy mechanization.data 18

execute if block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:wheat"}]} run scoreboard players add #energy mechanization.data 24
execute if block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:pumpkin"}]} run scoreboard players add #energy mechanization.data 24
execute if block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:apple"}]} run scoreboard players add #energy mechanization.data 24
execute if block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:cod"}]} run scoreboard players add #energy mechanization.data 24
execute if block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:salmon"}]} run scoreboard players add #energy mechanization.data 24
execute if block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:glow_berries"}]} run scoreboard players add #energy mechanization.data 24

execute if block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:melon"}]} run scoreboard players add #energy mechanization.data 30
execute if block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:nether_wart"}]} run scoreboard players add #energy mechanization.data 30
execute if block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:rabbit"}]} run scoreboard players add #energy mechanization.data 30
execute if block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:chicken"}]} run scoreboard players add #energy mechanization.data 30

execute if block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:red_mushroom"}]} run scoreboard players add #energy mechanization.data 36
execute if block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:brown_mushroom"}]} run scoreboard players add #energy mechanization.data 36
execute if block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:chorus_fruit"}]} run scoreboard players add #energy mechanization.data 36
execute if block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:beef"}]} run scoreboard players add #energy mechanization.data 36
execute if block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:porkchop"}]} run scoreboard players add #energy mechanization.data 36
execute if block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:mutton"}]} run scoreboard players add #energy mechanization.data 36

execute if block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:warped_fungus"}]} run scoreboard players add #energy mechanization.data 42
execute if block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:crimson_fungus"}]} run scoreboard players add #energy mechanization.data 42

execute if block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:chorus_flower"}]} run scoreboard players add #energy mechanization.data 48
execute if block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:hay_block"}]} run scoreboard players add #energy mechanization.data 48

scoreboard players operation #energy mechanization.data *= #machines.cf.bio_gen.power mechanization.data
scoreboard players operation #energy mechanization.data /= #cons.100 mechanization.data
scoreboard players operation @s energy.storage += #energy mechanization.data
execute if score #energy mechanization.data matches 1.. run function mechanization:machines/machines/bio_generator/decrease_counts
