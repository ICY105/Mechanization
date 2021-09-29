#Compressor
execute if entity @s[tag=mech_compressor] run loot spawn ~ ~ ~ loot mechanization:assembly/compressor
execute if entity @s[tag=mech_compressor] at @s run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_compressor]

#Decompressor
execute if entity @s[tag=mech_decompresser] run loot spawn ~ ~ ~ loot mechanization:assembly/decompressor
execute if entity @s[tag=mech_decompresser] at @s run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_decompresser]

#Stone Cutter
execute if entity @s[tag=mech_stone_cutter] run loot spawn ~ ~ ~ loot mechanization:assembly/stone_cutter
execute if entity @s[tag=mech_stone_cutter] at @s run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_stone_cutter]

#Decompresser
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
execute if entity @s[tag=mech_unlimited_storage] at @s if score @s mech_data matches 1.. store result entity @e[type=item,sort=nearest,limit=1,distance=..1] Item.tag.stored_count int 1 run scoreboard players get @s mech_data
execute if entity @s[tag=mech_unlimited_storage] at @s if score @s mech_data matches 1.. run data modify entity @e[type=item,sort=nearest,limit=1,distance=..1] Item.tag.stored_item set from entity @s Item.tag.item
execute if entity @s[tag=mech_unlimited_storage] at @s run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_unlimited_storage]

#MSS Terminal
execute if entity @s[tag=mech_terminal,tag=mech_active] run function mechanization:assembly/machines/mss/get_drive/terminal_insert 
execute if entity @s[tag=mech_terminal] run loot spawn ~ ~ ~ loot mechanization:assembly/mss_terminal
execute if entity @s[tag=mech_terminal] at @s run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_terminal]

#MSS Drive Bay
execute if entity @s[tag=mech_drive_bay] run loot spawn ~ ~ ~ loot mechanization:assembly/mss_drive_bay
execute if entity @s[tag=mech_drive_bay] at @s run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_drive_bay]

#item pipe
execute if entity @s[tag=mech_item_pipe] run function mechanization:assembly/machines/item_pipe/break

#item extractor
execute if entity @s[tag=mech_item_extractor] run function mechanization:assembly/machines/item_extractor/break

#item inserter
execute if entity @s[tag=mech_item_inserter] run function mechanization:assembly/machines/item_inserter/break
