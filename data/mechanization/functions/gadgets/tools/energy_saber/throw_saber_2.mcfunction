
execute rotated ~ 0 run tp @s ~ ~1 ~ ~ ~
scoreboard players operation @s mech_data = $temp_0 mech_data
scoreboard players operation @s mech_data *= $cons.2 du_data
scoreboard players operation @s du_uuid = $temp_1 mech_data
item replace entity @s armor.head from block -29999999 0 1601 container.0
tag @s remove mech_temp
