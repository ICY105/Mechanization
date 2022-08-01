																					
# machine tick
execute if score #timer.2 mechanization.data matches 1 as @e[type=#mechanization:item_frames,tag=mechanization.unlimited_storage_unit] at @s run function mechanization:assembly/machines/unlimited_storage_unit/unlimited_storage_unit
execute if score #timer.2 mechanization.data matches 0 as @e[type=#mechanization:item_frames,tag=mechanization.fast_hopper] at @s run function mechanization:assembly/machines/fast_hopper/fast_hopper

execute if score #timer.10 mechanization.data matches 9 as @e[type=#mechanization:item_frames,tag=mechanization.terminal,tag=!mechanization.active] at @s run function mechanization:assembly/machines/mss/terminal
execute as @e[type=#mechanization:item_frames,tag=mechanization.terminal,tag=mechanization.active] at @s run function mechanization:assembly/machines/mss/terminal

execute if score #timer.20 mechanization.data matches 19 as @e[type=#mechanization:item_frames,tag=mechanization.compressor] at @s run function mechanization:assembly/machines/compressor/compressor
execute if score #timer.20 mechanization.data matches 18 as @e[type=#mechanization:item_frames,tag=mechanization.decompressor] at @s run function mechanization:assembly/machines/decompressor/decompressor
execute if score #timer.20 mechanization.data matches 17 as @e[type=#mechanization:item_frames,tag=mechanization.stone_cutter] at @s run function mechanization:assembly/machines/stone_cutter/stone_cutter
execute if score #timer.20 mechanization.data matches 16 as @e[type=#mechanization:item_frames,tag=mechanization.dye_machine] at @s run function mechanization:assembly/machines/dye_machine/dye_machine
execute if score #timer.20 mechanization.data matches 15 as @e[type=#mechanization:item_frames,tag=mechanization.ender_hopper] at @s run function mechanization:assembly/machines/ender_hopper/ender_hopper
execute if score #timer.20 mechanization.data matches 14 as @e[type=#mechanization:item_frames,tag=mechanization.auto_jukebox] at @s run function mechanization:assembly/machines/auto_jukebox/auto_jukebox
execute if score #timer.20 mechanization.data matches 13 as @e[type=#mechanization:item_frames,tag=mechanization.drive_bay] at @s run function mechanization:assembly/machines/mss/drive_bay
execute if score #timer.20 mechanization.data matches 12 as @e[type=#mechanization:item_frames,tag=mechanization.item_extractor] at @s run function mechanization:assembly/machines/item_extractor/item_extractor
execute if score #timer.20 mechanization.data matches 11 as @e[type=#mechanization:item_frames,tag=mechanization.item_inserter] at @s run function mechanization:assembly/machines/item_inserter/item_inserter

execute if score #timer.100 mechanization.data matches 90 as @e[type=#mechanization:item_frames,tag=mechanization.item_pipe] at @s run function mechanization:assembly/machines/item_pipe/item_pipe

# player
execute as @a at @s run function mechanization:assembly/player/tick
