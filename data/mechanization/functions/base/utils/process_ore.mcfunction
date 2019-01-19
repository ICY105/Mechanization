execute store result score temp_0 mech_data run data get entity @s Item.tag.mech_itemid
execute if score temp_0 mech_data matches 1300 if block ~ ~ ~ water run setblock ~ ~ ~ air
execute if score temp_0 mech_data matches 1310 if block ~ ~ ~ water run setblock ~ ~ ~ air
execute if score temp_0 mech_data matches 1320 if block ~ ~ ~ water run setblock ~ ~ ~ air