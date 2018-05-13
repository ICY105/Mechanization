
#machine tick
execute if score timer_20 du_data matches 19 as @e[tag=mech_compressor] at @s run function mechanization:assembly/machines/compressor/compressor
execute if score timer_20 du_data matches 18 as @e[tag=mech_decompresser] at @s run function mechanization:assembly/machines/decompresser/decompresser
execute if score timer_20 du_data matches 17 as @e[tag=mech_stone_cutter] at @s run function mechanization:assembly/machines/stone_cutter/stone_cutter
execute if score timer_20 du_data matches 16 as @e[tag=mech_dye_machine] at @s run function mechanization:assembly/machines/dye_machine/dye_machine
execute if score timer_20 du_data matches 15 as @e[tag=mech_ender_hopper] at @s run function mechanization:assembly/machines/ender_hopper


execute if score timer_2 du_data matches 1 as @e[tag=mech_unlimited_storage] at @s run function mechanization:assembly/machines/unlimited_storage/unlimited_storage
execute if score timer_2 du_data matches 0 as @e[tag=mech_speed_hopper] at @s run function mechanization:assembly/machines/speed_hopper
execute if score timer_2 du_data matches 0 as @e[tag=mech_auto_jukebox] at @s run function mechanization:assembly/machines/auto_jukebox
execute if score timer_20 du_data matches 14 as @e[tag=mech_auto_jukebox,tag=mech_switch] at @s run function mechanization:assembly/machines/auto_jukebox_switch
