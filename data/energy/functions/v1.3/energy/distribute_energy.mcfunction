
#copy scores
scoreboard players operation #predicate energy.data = #energy.network_id energy.data

#collect power
scoreboard players set #energy.spent energy.data 0
execute if score #energy.spent energy.data < #energy.available energy.data if entity @s[tag=energy.receive] as @e[type=#energy:valid_block_entities,tag=energy.receive,tag=!energy.send,predicate=energy:v1.3/has_network_id] if score @s energy.storage < @s energy.max_storage run function energy:v1.3/energy/distribute_energy_2
execute if score #energy.spent energy.data < #energy.available energy.data if entity @s[tag=!energy.receive] as @e[type=#energy:valid_block_entities,tag=energy.receive,tag=!energy.send,predicate=energy:v1.3/has_network_id] if score @s energy.storage < @s energy.max_storage run function energy:v1.3/energy/distribute_energy_2
execute if score #energy.spent energy.data < #energy.available energy.data if entity @s[tag=!energy.receive] as @e[type=#energy:valid_block_entities,tag=energy.receive,tag=energy.send,predicate=energy:v1.3/has_network_id] if score @s energy.storage < @s energy.max_storage run function energy:v1.3/energy/distribute_energy_2
