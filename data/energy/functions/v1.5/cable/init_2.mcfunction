
#if id is assigned, cascade across the entire network
execute if score #cable.network_id energy.data matches 1.. run scoreboard players operation #predicate energy.data = @s energy.network_id
execute if score #cable.network_id energy.data matches 1.. as @e[type=#energy:valid_block_entities,predicate=energy:v1.5/equals_network_id] run scoreboard players operation @s energy.network_id = #cable.network_id energy.data
execute if score #cable.network_id energy.data matches 1.. as @e[type=#energy:valid_block_entities,predicate=energy:v1.5/has_network_id] run function energy:v1.5/cable/init_machine

#if id is unassigned, assign to current value
execute if score #cable.network_id energy.data matches 0 run scoreboard players operation #cable.network_id energy.data = @s energy.network_id

#call update function
function energy:v1.5/cable/update
