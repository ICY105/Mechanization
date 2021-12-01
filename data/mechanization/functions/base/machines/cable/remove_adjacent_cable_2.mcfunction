
execute if score $in_0 mechanization.data matches 0 run scoreboard players remove @s mechanization.data 2
execute if score $in_0 mechanization.data matches 1 run scoreboard players remove @s mechanization.data 1
execute if score $in_0 mechanization.data matches 2 run scoreboard players remove @s mechanization.data 8
execute if score $in_0 mechanization.data matches 3 run scoreboard players remove @s mechanization.data 4
execute if score $in_0 mechanization.data matches 4 run scoreboard players remove @s mechanization.data 32
execute if score $in_0 mechanization.data matches 5 run scoreboard players remove @s mechanization.data 16

scoreboard players set $temp_0 mechanization.data 6421000
scoreboard players operation $temp_0 mechanization.data += @s mech_data
execute store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get $temp_0 mech_data

scoreboard players operation $predicate mechanization.data = @s mech_gridid
scoreboard players operation $temp_2 mechanization.data = $uuid.incr du_uuid
scoreboard players add $uuid.incr du_uuid 1
execute at @s align xyz positioned ~0.5 ~ ~0.5 unless score $predicate mechanization.data = $temp_2 mechanization.data run function mechanization:base/machines/cable/break_update
