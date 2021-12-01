
scoreboard players set $out_0 mechanization.data 1
function #mechanization:cable_can_connect
execute if score $out_0 mechanization.data matches 1 run scoreboard players set $temp_3 mechanization.data 1

execute if score $out_0 mechanization.data matches 1 if score $in_0 mechanization.data matches 0 run scoreboard players add $temp_0 mechanization.data 2
execute if score $out_0 mechanization.data matches 1 if score $in_0 mechanization.data matches 1 run scoreboard players add $temp_0 mechanization.data 1
execute if score $out_0 mechanization.data matches 1 if score $in_0 mechanization.data matches 5 run scoreboard players add $temp_0 mechanization.data 4
execute if score $out_0 mechanization.data matches 1 if score $in_0 mechanization.data matches 4 run scoreboard players add $temp_0 mechanization.data 8
execute if score $out_0 mechanization.data matches 1 if score $in_0 mechanization.data matches 2 run scoreboard players add $temp_0 mechanization.data 16
execute if score $out_0 mechanization.data matches 1 if score $in_0 mechanization.data matches 3 run scoreboard players add $temp_0 mechanization.data 32

execute if score $out_0 mechanization.data matches 1 if score @s mechanization.network_id matches 0 run scoreboard players operation @s mechanization.network_id = $uuid.incr du_uuid
execute if score $out_0 mechanization.data matches 1 if score @s mechanization.network_id matches 0 run scoreboard players add $uuid.incr du_uuid 1
execute if score $out_0 mechanization.data matches 1 if score $temp_1 mechanization.data matches 0.. run scoreboard players operation $predicate mechanization.data = @s mech_gridid
execute if score $out_0 mechanization.data matches 1 if score $temp_1 mechanization.data matches 0.. as @e[type=#mechanization:valid_block_entities,predicate=mechanization:matches_gridid] run scoreboard players operation @s mechanization.network_id = $temp_1 mech_data
execute if score $out_0 mechanization.data matches 1 if score $temp_1 mechanization.data matches -1 run scoreboard players operation $temp_1 mechanization.data = @s mech_gridid
