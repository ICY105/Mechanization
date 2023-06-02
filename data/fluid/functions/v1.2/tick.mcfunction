
schedule function fluid:v1.2/tick 1t

scoreboard players add #progress fluid.data 1
execute if score #progress fluid.data matches 20.. run function fluid:v1.2/network/init_queue

execute as @e[type=#fluid:valid_tank_entities,tag=fluid.tank,predicate=fluid:v1.2/equals_queue_progress,predicate=fluid:v1.2/can_send] at @s run function fluid:v1.2/network/process
