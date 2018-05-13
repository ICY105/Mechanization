#Compressor
execute as @e[tag=mech_compressor,distance=..0.5] run function give:mech_assembly/compressor
execute as @e[tag=mech_compressor,distance=..0.5] at @s run setblock ~ ~ ~ minecraft:air replace
kill @e[tag=mech_compressor,distance=..0.5]

#Decompressor
execute as @e[tag=mech_decompresser,distance=..0.5] run function give:mech_assembly/decompresser
execute as @e[tag=mech_decompresser,distance=..0.5] at @s run setblock ~ ~ ~ minecraft:air replace
kill @e[tag=mech_decompresser,distance=..0.5]

#Stone Cutter
execute as @e[tag=mech_stone_cutter,distance=..0.5] run function give:mech_assembly/stone_cutter
execute as @e[tag=mech_stone_cutter,distance=..0.5] at @s run setblock ~ ~ ~ minecraft:air replace
kill @e[tag=mech_stone_cutter,distance=..0.5]

#Decompressor
execute as @e[tag=mech_dye_machine,distance=..0.5] run function give:mech_assembly/dye_machine
execute as @e[tag=mech_dye_machine,distance=..0.5] at @s run setblock ~ ~ ~ minecraft:air replace
kill @e[tag=mech_dye_machine,distance=..0.5]

#Filter Hopper
execute as @e[tag=mech_filter_hopper,distance=..0.5] run function give:mech_assembly/filter_hopper
execute as @e[tag=mech_filter_hopper,distance=..0.5] at @s run setblock ~ ~ ~ minecraft:air replace
kill @e[tag=mech_filter_hopper,distance=..0.5]

#Speed Hopper
execute as @e[tag=mech_speed_hopper,distance=..0.5] run function give:mech_assembly/fast_hopper
execute as @e[tag=mech_speed_hopper,distance=..0.5] at @s run setblock ~ ~ ~ minecraft:air replace
kill @e[tag=mech_speed_hopper,distance=..0.5]

#Ender Hopper
execute as @e[tag=mech_ender_hopper,distance=..0.5] run function give:mech_assembly/ender_hopper
execute as @e[tag=mech_ender_hopper,distance=..0.5] at @s run setblock ~ ~ ~ minecraft:air replace
kill @e[tag=mech_ender_hopper,distance=..0.5]

#Auto Jukebox
execute as @e[tag=mech_auto_jukebox,distance=..0.5] run function give:mech_assembly/auto_jukebox
execute as @e[tag=mech_auto_jukebox,distance=..0.5] at @s run setblock ~ ~ ~ minecraft:air replace
kill @e[tag=mech_auto_jukebox,distance=..0.5]

#Unlimited Storage Unit
execute as @e[tag=mech_unlimited_storage,distance=..0.5] run function give:mech_assembly/unlimited_storage_unit
execute as @e[tag=mech_unlimited_storage,distance=..0.5] at @s run setblock ~ ~ ~ minecraft:air replace
kill @e[tag=mech_unlimited_storage,distance=..0.5]