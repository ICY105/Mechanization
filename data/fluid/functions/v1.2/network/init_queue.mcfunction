
scoreboard players set #progress fluid.data 0
scoreboard players set #position fluid.data 0
execute as @e[type=#fluid:valid_tank_entities,tag=fluid.tank,predicate=fluid:v1.2/can_send] run function fluid:v1.2/network/add_to_queue

