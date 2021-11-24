
execute positioned ~ ~1 ~ if entity @s[distance=..0.1] run scoreboard players remove @s mech_data 1
execute positioned ~ ~-1 ~ if entity @s[distance=..0.1] run scoreboard players remove @s mech_data 2
execute positioned ~ ~ ~-1 if entity @s[distance=..0.1] run scoreboard players remove @s mech_data 8
execute positioned ~ ~ ~1 if entity @s[distance=..0.1] run scoreboard players remove @s mech_data 4
execute positioned ~1 ~ ~ if entity @s[distance=..0.1] run scoreboard players remove @s mech_data 16
execute positioned ~-1 ~ ~ if entity @s[distance=..0.1] run scoreboard players remove @s mech_data 32

scoreboard players set $temp_2 mech_data 6421000
scoreboard players operation $temp_2 mech_data += @s mech_data
execute store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get $temp_2 mech_data

scoreboard players operation $predicate mech_data = @s mech_gridid
scoreboard players operation $temp_2 mech_data = $uuid.incr du_uuid
scoreboard players add $uuid.incr du_uuid 1
execute at @s run function mechanization:base/machines/cable/break_update
