
# if defined transfer rate < current capacity, assign capacity as rate and cascade to entire network
execute unless score @s fluid.transfer_capacity matches 0.. run scoreboard players set @s fluid.transfer_capacity 2147483647
execute if score @s fluid.transfer_rate < @s fluid.transfer_capacity run scoreboard players operation #predicate fluid.data = @s fluid.network_id
execute if score @s fluid.transfer_rate < @s fluid.transfer_capacity run scoreboard players operation @e[tag=fluid.pipe,predicate=fluid:v1.2/equals_network_id] fluid.transfer_capacity = @s fluid.transfer_rate
