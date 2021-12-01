
scoreboard players operation $temp_2 mechanization.data = $uuid.incr du_uuid
scoreboard players add $uuid.incr du_uuid 1
execute at @s align xyz positioned ~0.5 ~ ~0.5 unless score $predicate mechanization.data = $temp_2 mechanization.data run function mechanization:base/machines/cable/break_update
