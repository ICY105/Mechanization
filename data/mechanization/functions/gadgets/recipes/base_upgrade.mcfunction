loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/upgrade_base
scoreboard players set $crafting.out_4 du_data 16

scoreboard players set temp_0 du_data 4
execute store success block ~ ~ ~ Items[{Slot:16b}].Count byte 4 if entity @s
