
execute store result score $temp_0 mech_data run data get entity @s Item.tag.mech_itemid
execute if score $temp_0 mech_data matches 1310..1313 if block ~ ~ ~ water run setblock ~ ~ ~ air
execute if score $temp_0 mech_data matches 1320..1323 if block ~ ~ ~ water run setblock ~ ~ ~ air
execute if score $temp_0 mech_data matches 1430..1433 if block ~ ~ ~ water run setblock ~ ~ ~ air
