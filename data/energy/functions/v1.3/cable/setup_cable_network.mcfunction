
#if defined transfer rate < current capacity, assign capacity as rate and cascade to entire network
execute unless score @s energy.transfer_capacity matches 0.. run scoreboard players set @s energy.transfer_capacity 2147483647
execute if score @s energy.transfer_rate < @s energy.transfer_capacity run scoreboard players operation #predicate energy.data = @s energy.network_id
execute if score @s energy.transfer_rate < @s energy.transfer_capacity run scoreboard players operation @e[type=#energy:valid_block_entities,tag=energy.cable,predicate=energy:v1.3/equals_network_id] energy.transfer_capacity = @s energy.transfer_rate
