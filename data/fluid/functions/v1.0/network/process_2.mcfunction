
# get tank slot
scoreboard players operation #utils.in fluid.data = #network.io fluid.data
scoreboard players operation #utils.in fluid.data *= #cons.-1 fluid.data
function fluid:v1.0/utils/binary_decomposition

scoreboard players set #network.tank fluid.data -1
execute if score #utils.out.3 fluid.data matches 1 if score @s fluid.storage.3 matches 1.. if data storage fluid:io fluids[3].id run scoreboard players set #network.tank fluid.data 3
execute if score #utils.out.2 fluid.data matches 1 if score @s fluid.storage.2 matches 1.. if data storage fluid:io fluids[2].id run scoreboard players set #network.tank fluid.data 2
execute if score #utils.out.1 fluid.data matches 1 if score @s fluid.storage.1 matches 1.. if data storage fluid:io fluids[1].id run scoreboard players set #network.tank fluid.data 1
execute if score #utils.out.0 fluid.data matches 1 if score @s fluid.storage.0 matches 1.. if data storage fluid:io fluids[0].id run scoreboard players set #network.tank fluid.data 0

# copy fluid data
execute if score #network.tank fluid.data matches 0 run data modify storage fluid:io fluid set from storage fluid:io fluids[0]
execute if score #network.tank fluid.data matches 1 run data modify storage fluid:io fluid set from storage fluid:io fluids[1]
execute if score #network.tank fluid.data matches 2 run data modify storage fluid:io fluid set from storage fluid:io fluids[2]
execute if score #network.tank fluid.data matches 3 run data modify storage fluid:io fluid set from storage fluid:io fluids[3]

# copy storage data
execute if score #network.tank fluid.data matches 0 run scoreboard players operation #network.storage fluid.data = @s fluid.storage.0
execute if score #network.tank fluid.data matches 1 run scoreboard players operation #network.storage fluid.data = @s fluid.storage.1
execute if score #network.tank fluid.data matches 2 run scoreboard players operation #network.storage fluid.data = @s fluid.storage.2
execute if score #network.tank fluid.data matches 3 run scoreboard players operation #network.storage fluid.data = @s fluid.storage.3

# set other data
scoreboard players operation #predicate fluid.data = #network.network_id fluid.data
scoreboard players operation #network.transfer_capacity fluid.data = @e[tag=fluid.pipe,predicate=fluid:v1.0/equals_network_id,limit=1] fluid.transfer_capacity

# run
execute if score #network.tank fluid.data matches 0..3 as @e[tag=fluid.tank,predicate=fluid:v1.0/has_network_id,sort=nearest] run function fluid:v1.0/network/transfer_fluid

# save storage data
execute if score #network.tank fluid.data matches 0 run scoreboard players operation @s fluid.storage.0 = #network.storage fluid.data
execute if score #network.tank fluid.data matches 1 run scoreboard players operation @s fluid.storage.1 = #network.storage fluid.data
execute if score #network.tank fluid.data matches 2 run scoreboard players operation @s fluid.storage.2 = #network.storage fluid.data
execute if score #network.tank fluid.data matches 3 run scoreboard players operation @s fluid.storage.3 = #network.storage fluid.data

execute if score #network.tank fluid.data matches 0 if score #network.storage fluid.data matches 0 run data modify storage fluid:io fluids[0] set value {}
execute if score #network.tank fluid.data matches 1 if score #network.storage fluid.data matches 0 run data modify storage fluid:io fluids[1] set value {}
execute if score #network.tank fluid.data matches 2 if score #network.storage fluid.data matches 0 run data modify storage fluid:io fluids[2] set value {}
execute if score #network.tank fluid.data matches 3 if score #network.storage fluid.data matches 0 run data modify storage fluid:io fluids[3] set value {}
