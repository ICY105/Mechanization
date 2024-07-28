
scoreboard players set #out fluid.data 0
execute if score #network.tank fluid.data matches 0 if data storage fluid:io fluid{id:"superheated_water"} run scoreboard players set #out fluid.data 1
execute if score #network.tank fluid.data matches 0 if data storage fluid:io fluid{id:"superheated_heavy_water"} run scoreboard players set #out fluid.data 1
execute if score #network.tank fluid.data matches 0 if data storage fluid:io fluid{id:"superheated_experience"} run scoreboard players set #out fluid.data 1
execute if score #network.tank fluid.data matches 1 if data storage fluid:io fluid{id:"water"} run scoreboard players set #out fluid.data 1
