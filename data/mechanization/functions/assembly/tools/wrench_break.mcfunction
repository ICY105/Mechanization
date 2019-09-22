#Compressor
execute if entity @s[tag=mech_compressor] run loot spawn ~ ~ ~ loot mechanization:assembly/compressor
execute if entity @s[tag=mech_compressor] at @s run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_compressor]

#Decompressor
execute if entity @s[tag=mech_decompresser] run loot spawn ~ ~ ~ loot mechanization:assembly/decompresser
execute if entity @s[tag=mech_decompresser] at @s run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_decompresser]

#Stone Cutter
execute if entity @s[tag=mech_stone_cutter] run loot spawn ~ ~ ~ loot mechanization:assembly/stone_cutter
execute if entity @s[tag=mech_stone_cutter] at @s run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_stone_cutter]

#Decompressor
execute if entity @s[tag=mech_dye_machine] run loot spawn ~ ~ ~ loot mechanization:assembly/dye_machine
execute if entity @s[tag=mech_dye_machine] at @s run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_dye_machine]

#Speed Hopper
execute if entity @s[tag=mech_speed_hopper] run loot spawn ~ ~ ~ loot mechanization:assembly/fast_hopper
execute if entity @s[tag=mech_speed_hopper] at @s run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_speed_hopper]

#Ender Hopper
execute if entity @s[tag=mech_ender_hopper] run loot spawn ~ ~ ~ loot mechanization:assembly/ender_hopper
execute if entity @s[tag=mech_ender_hopper] at @s run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_ender_hopper]

#Auto Jukebox
execute if entity @s[tag=mech_auto_jukebox] run loot spawn ~ ~ ~ loot mechanization:assembly/auto_jukebox
execute if entity @s[tag=mech_auto_jukebox] at @s run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_auto_jukebox]

#Unlimited Storage Unit
execute if entity @s[tag=mech_unlimited_storage] run loot spawn ~ ~ ~ loot mechanization:assembly/storage_unit
execute if entity @s[tag=mech_unlimited_storage] at @s run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_unlimited_storage]

#Item Transmitter
execute if entity @s[tag=mech_item_transmitter] run loot spawn ~ ~ ~ loot mechanization:assembly/item_transmitter
execute if entity @s[tag=mech_item_transmitter] at @s run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_item_transmitter]

#Item Receiver
execute if entity @s[tag=mech_item_receiver] run loot spawn ~ ~ ~ loot mechanization:assembly/item_receiver
execute if entity @s[tag=mech_item_receiver] at @s run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_item_receiver]