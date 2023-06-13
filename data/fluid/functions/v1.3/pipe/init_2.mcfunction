
#if id is assigned, cascade across the entire network
execute if score #pipe.network_id fluid.data matches 1.. run scoreboard players operation #predicate fluid.data = @s fluid.network_id
execute if score #pipe.network_id fluid.data matches 1.. as @e[predicate=fluid:v1.3/equals_network_id] run scoreboard players operation @s fluid.network_id = #pipe.network_id fluid.data
execute if score #pipe.network_id fluid.data matches 1.. as @e[type=#fluid:valid_tank_entities,tag=fluid.tank,predicate=fluid:v1.3/has_network_id] run function fluid:v1.3/pipe/update_tank_ids

#if id is unassigned, assign to current value
execute if score #pipe.network_id fluid.data matches 0 run scoreboard players operation #pipe.network_id fluid.data = @s fluid.network_id

#call update function
function fluid:v1.3/pipe/update
