
execute store result score $temp_0 mechanization.data run data get entity @s Item.tag.mech_itemid
execute if score $temp_0 mechanization.data matches 1310..1319 if block ~ ~ ~ water run setblock ~ ~ ~ air
execute if score $temp_0 mechanization.data matches 1320..1329 if block ~ ~ ~ water run setblock ~ ~ ~ air
execute if score $temp_0 mechanization.data matches 1430..1439 if block ~ ~ ~ water run setblock ~ ~ ~ air
