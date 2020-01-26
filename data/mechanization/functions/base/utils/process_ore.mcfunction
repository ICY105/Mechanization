
execute store result score temp_0 mech_data run data get entity @s Item.tag.mech_itemid
execute if score temp_0 mech_data matches 1300..1301 if block ~ ~ ~ water run setblock ~ ~ ~ air
execute if score temp_0 mech_data matches 1310..1311 if block ~ ~ ~ water run setblock ~ ~ ~ air
execute if score temp_0 mech_data matches 1320..1321 if block ~ ~ ~ water run setblock ~ ~ ~ air
execute if score temp_0 mech_data matches 1430..1431 if block ~ ~ ~ water run setblock ~ ~ ~ air

execute if entity @s[nbt={Item:{id:"minecraft:player_head"}}] run function mechanization:base/utils/process_ore_head
