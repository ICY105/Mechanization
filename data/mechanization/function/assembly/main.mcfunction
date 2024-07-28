																					
execute if score #timer.10 mechanization.data matches 9 as @e[type=minecraft:item_display,tag=mechanization.terminal,tag=!mechanization.active] at @s run function mechanization:assembly/blocks/mss/terminal

execute if score #timer.20 mechanization.data matches 19 as @e[type=minecraft:item_display,tag=mechanization.compressor] at @s run function mechanization:assembly/blocks/compressor/compressor
execute if score #timer.20 mechanization.data matches 18 as @e[type=minecraft:item_display,tag=mechanization.decompressor] at @s run function mechanization:assembly/blocks/decompressor/decompressor
execute if score #timer.20 mechanization.data matches 17 as @e[type=minecraft:item_display,tag=mechanization.stone_cutter] at @s run function mechanization:assembly/blocks/stone_cutter/stone_cutter
execute if score #timer.20 mechanization.data matches 16 as @e[type=minecraft:item_display,tag=mechanization.dye_machine] at @s run function mechanization:assembly/blocks/dye_machine/dye_machine
execute if score #timer.20 mechanization.data matches 15 as @e[type=minecraft:item_display,tag=mechanization.ender_hopper] at @s run function mechanization:assembly/blocks/ender_hopper/ender_hopper
execute if score #timer.20 mechanization.data matches 14 as @e[type=minecraft:item_display,tag=mechanization.auto_jukebox] at @s run function mechanization:assembly/blocks/auto_jukebox/auto_jukebox
execute if score #timer.20 mechanization.data matches 13 as @e[type=minecraft:item_display,tag=mechanization.drive_bay] at @s run function mechanization:assembly/blocks/mss/drive_bay
execute if score #timer.20 mechanization.data matches 12 as @e[type=minecraft:item_frame,tag=mechanization.item_extractor] at @s run function mechanization:assembly/blocks/item_extractor/item_extractor
execute if score #timer.20 mechanization.data matches 11 as @e[type=minecraft:item_frame,tag=mechanization.item_inserter] at @s run function mechanization:assembly/blocks/item_inserter/item_inserter

execute if score #timer.100 mechanization.data matches 90 as @e[type=minecraft:item_display,tag=mechanization.item_pipe] at @s run function mechanization:assembly/blocks/item_pipe/item_pipe
