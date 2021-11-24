
scoreboard players operation $predicate mech_data = @s mech_gridid
scoreboard players operation $temp_2 mech_data = $uuid.incr du_uuid
scoreboard players add $uuid.incr du_uuid 1
execute at @s positioned ~ ~-0.9 ~ run function mechanization:base/machines/cable/break_update
