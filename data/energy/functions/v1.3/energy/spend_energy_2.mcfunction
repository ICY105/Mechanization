
#remove power
scoreboard players operation #energy.to_add energy.data = @s energy.transfer_capacity
execute if score @s energy.storage < @s energy.transfer_capacity run scoreboard players operation #energy.to_add energy.data = @s energy.storage
execute if score #energy.to_add energy.data > #energy.spent energy.data run scoreboard players operation #energy.to_add energy.data = #energy.spent energy.data

scoreboard players operation @s energy.storage -= #energy.to_add energy.data
scoreboard players operation #energy.spent energy.data -= #energy.to_add energy.data

#add tags
tag @s add energy.processed
execute if score #energy.network_id energy.data = @s energy.network_id_up run tag @s add energy.processed.up
execute if score #energy.network_id energy.data = @s energy.network_id_down run tag @s add energy.processed.down
execute if score #energy.network_id energy.data = @s energy.network_id_north run tag @s add energy.processed.north
execute if score #energy.network_id energy.data = @s energy.network_id_south run tag @s add energy.processed.south
execute if score #energy.network_id energy.data = @s energy.network_id_east run tag @s add energy.processed.east
execute if score #energy.network_id energy.data = @s energy.network_id_west run tag @s add energy.processed.west

#call energy changed function
function #energy:v1/energy_update
