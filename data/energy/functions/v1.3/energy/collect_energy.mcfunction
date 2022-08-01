
#copy scores
scoreboard players operation #predicate energy.data = #energy.network_id energy.data
scoreboard players operation #energy.cable_rate energy.data = @s energy.transfer_rate
scoreboard players operation #energy.cable_rate energy.data = @e[type=#energy:valid_block_entities,tag=energy.cable,predicate=energy:v1.3/equals_network_id,limit=1] energy.transfer_capacity

#collect power
scoreboard players set #energy.available energy.data 0
execute as @e[type=#energy:valid_block_entities,tag=energy.send,predicate=energy:v1.3/has_network_id,scores={energy.storage=1..}] run function energy:v1.3/energy/collect_energy_2
execute if score #energy.available energy.data > #energy.cable_rate energy.data run scoreboard players operation #energy.available energy.data = #energy.cable_rate energy.data
