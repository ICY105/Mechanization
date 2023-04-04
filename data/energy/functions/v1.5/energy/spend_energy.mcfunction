
#copy scores
scoreboard players operation #predicate energy.data = #energy.network_id energy.data

#spend power
execute if score #energy.spent energy.data matches 1.. as @e[type=#energy:valid_block_entities,tag=energy.send,tag=!energy.receive,predicate=energy:v1.5/has_network_id,scores={energy.storage=1..}] run function energy:v1.5/energy/spend_energy_2
execute if score #energy.spent energy.data matches 1.. as @e[type=#energy:valid_block_entities,tag=energy.send,tag=energy.receive,predicate=energy:v1.5/has_network_id,scores={energy.storage=1..}] run function energy:v1.5/energy/spend_energy_2
