
#trigger update for queue system
scoreboard players set #progress energy.data 0
scoreboard players set #position energy.data 0
execute as @e[type=#energy:valid_block_entities,scores={energy.storage=0..}] run function energy:v1.5/energy/update
