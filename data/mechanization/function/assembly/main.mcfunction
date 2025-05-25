																					
execute if score #timer.20 mechanization.data matches 0 as @e[type=minecraft:item_display,tag=mechanization.compressor] at @s run function mechanization:assembly/blocks/compressor/compressor
execute if score #timer.20 mechanization.data matches 1 as @e[type=minecraft:item_display,tag=mechanization.decompressor] at @s run function mechanization:assembly/blocks/decompressor/decompressor
execute if score #timer.20 mechanization.data matches 2 as @e[type=minecraft:item_display,tag=mechanization.ender_hopper] at @s run function mechanization:assembly/blocks/ender_hopper/ender_hopper
execute if score #timer.20 mechanization.data matches 3 as @e[type=minecraft:item_display,tag=mechanization.drive_bay] at @s run function mechanization:assembly/blocks/mss/drive_bay
execute if score #timer.20 mechanization.data matches 4 as @e[type=minecraft:item_display,tag=mechanization.terminal] at @s run function mechanization:assembly/blocks/mss/terminal
execute if score #timer.20 mechanization.data matches 5 as @e[type=minecraft:item_frame,tag=mechanization.item_extractor] at @s run function mechanization:assembly/blocks/item_extractor/item_extractor
execute if score #timer.20 mechanization.data matches 6 as @e[type=minecraft:item_frame,tag=mechanization.item_inserter] at @s run function mechanization:assembly/blocks/item_inserter/item_inserter

execute if score #timer.100 mechanization.data matches 90 as @e[type=minecraft:item_display,tag=mechanization.item_pipe] at @s run function mechanization:assembly/blocks/item_pipe/item_pipe
