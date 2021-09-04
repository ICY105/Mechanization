
#machine tick
execute if score $base.timer_20 du_data matches 19 as @e[type=minecraft:glowing_item_frame,tag=mech_compressor] at @s run function mechanization:assembly/machines/compressor/compressor
execute if score $base.timer_20 du_data matches 18 as @e[type=minecraft:glowing_item_frame,tag=mech_decompresser] at @s run function mechanization:assembly/machines/decompresser/decompresser
execute if score $base.timer_20 du_data matches 17 as @e[type=minecraft:glowing_item_frame,tag=mech_stone_cutter] at @s run function mechanization:assembly/machines/stone_cutter/stone_cutter
execute if score $base.timer_20 du_data matches 16 as @e[type=minecraft:glowing_item_frame,tag=mech_dye_machine] at @s run function mechanization:assembly/machines/dye_machine/dye_machine
execute if score $base.timer_20 du_data matches 15 as @e[type=minecraft:glowing_item_frame,tag=mech_ender_hopper] at @s run function mechanization:assembly/machines/ender_hopper
execute if score $base.timer_20 du_data matches 14 as @e[type=minecraft:glowing_item_frame,tag=mech_auto_jukebox] at @s run function mechanization:assembly/machines/auto_jukebox
execute if score $base.timer_20 du_data matches 13 as @e[type=minecraft:glowing_item_frame,tag=mech_drive_bay] at @s run function mechanization:assembly/machines/mss/drive_bay
execute if score $base.timer_20 du_data matches 12 as @e[type=minecraft:item_frame,tag=mech_item_extractor] at @s run function mechanization:assembly/machines/item_extractor/item_extractor
execute if score $base.timer_20 du_data matches 11 as @e[type=minecraft:item_frame,tag=mech_item_inserter] at @s run function mechanization:assembly/machines/item_inserter/item_inserter

execute if score $base.timer_2 du_data matches 1 as @e[type=minecraft:item_frame,tag=mech_unlimited_storage] at @s run function mechanization:assembly/machines/unlimited_storage/unlimited_storage
execute if score $base.timer_2 du_data matches 0 as @e[type=minecraft:item_frame,tag=mech_speed_hopper] at @s run function mechanization:assembly/machines/speed_hopper

execute if score $base.timer_10 du_data matches 9 as @e[type=minecraft:glowing_item_frame,tag=mech_terminal,tag=!mech_active] at @s run function mechanization:assembly/machines/mss/terminal
execute as @e[type=minecraft:glowing_item_frame,tag=mech_terminal,tag=mech_active] at @s run function mechanization:assembly/machines/mss/terminal

execute if score $base.timer_100 du_data matches 90 as @e[type=minecraft:item_frame,tag=mech_item_pipe] at @s run function mechanization:assembly/machines/item_pipe/item_pipe

#item filter
execute as @a at @s run function mechanization:assembly/player
