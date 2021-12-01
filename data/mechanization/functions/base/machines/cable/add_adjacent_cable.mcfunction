
tag @s add mech_cable_init
scoreboard players set $temp_1 mechanization.data 0

scoreboard players set $in_0 mechanization.data 0
scoreboard players set $out_0 mechanization.data 1
function #mechanization:cable_can_connect
execute if score $out_0 mechanization.data matches 1 align y positioned ~ ~-1 ~ as @e[type=item_frame,tag=mech_cable,distance=..0.5] run function mechanization:base/machines/cable/add_adjacent_cable_2

scoreboard players set $in_0 mechanization.data 1
scoreboard players set $out_0 mechanization.data 1
function #mechanization:cable_can_connect
execute if score $out_0 mechanization.data matches 1 align y positioned ~ ~0.9 ~ as @e[type=item_frame,tag=mech_cable,distance=..0.5] run function mechanization:base/machines/cable/add_adjacent_cable_2

scoreboard players set $in_0 mechanization.data 2
scoreboard players set $out_0 mechanization.data 1
function #mechanization:cable_can_connect
execute if score $out_0 mechanization.data matches 1 align y positioned ~ ~ ~-1 as @e[type=item_frame,tag=mech_cable,distance=..0.5] run function mechanization:base/machines/cable/add_adjacent_cable_2

scoreboard players set $in_0 mechanization.data 3
scoreboard players set $out_0 mechanization.data 1
function #mechanization:cable_can_connect
execute if score $out_0 mechanization.data matches 1 align y positioned ~ ~ ~1 as @e[type=item_frame,tag=mech_cable,distance=..0.5] run function mechanization:base/machines/cable/add_adjacent_cable_2

scoreboard players set $in_0 mechanization.data 4
scoreboard players set $out_0 mechanization.data 1
function #mechanization:cable_can_connect
execute if score $out_0 mechanization.data matches 1 align y positioned ~1 ~ ~ as @e[type=item_frame,tag=mech_cable,distance=..0.5] run function mechanization:base/machines/cable/add_adjacent_cable_2

scoreboard players set $in_0 mechanization.data 5
scoreboard players set $out_0 mechanization.data 1
function #mechanization:cable_can_connect
execute if score $out_0 mechanization.data matches 1 align y positioned ~-1 ~ ~ as @e[type=item_frame,tag=mech_cable,distance=..0.5] run function mechanization:base/machines/cable/add_adjacent_cable_2


execute unless score $temp_1 mechanization.data matches 0 run scoreboard players operation @s mechanization.network_id = $temp_1 mech_data
