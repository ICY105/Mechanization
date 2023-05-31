
function fluid:v1.1/utils/get_fluids_slot_2

# get tank slot
scoreboard players operation #utils.in fluid.data = #network.io fluid.data
function fluid:v1.1/utils/binary_decomposition

scoreboard players set #network.dest.tank fluid.data -1

execute if score #utils.out.3 fluid.data matches 1 if score @s fluid.storage.3 matches 1.. if data storage fluid:io fluids2[3].id run data modify storage fluid:io id set from storage fluid:io fluids2[3].id
execute if score #utils.out.3 fluid.data matches 1 if score @s fluid.storage.3 matches 1.. if data storage fluid:io fluids2[3].id run function fluid:v1.1/utils/check_id
execute if score #utils.out.3 fluid.data matches 1 if score @s fluid.storage.3 matches 1.. if score #utils.out fluid.data matches 1 if data storage fluid:io fluids2[3].id run scoreboard players set #network.dest.tank fluid.data 3
execute if score #utils.out.3 fluid.data matches 1 unless score @s fluid.storage.3 matches 1.. run scoreboard players set #network.dest.tank fluid.data 3
execute if score #network.dest.tank fluid.data matches 3 run scoreboard players set #out fluid.data 1
execute if score #network.dest.tank fluid.data matches 3 run function #fluid:v1/tank_fluid_accept
execute if score #network.dest.tank fluid.data matches 3 if score #out fluid.data matches 0 run scoreboard players set #network.tank fluid.data -1

execute if score #utils.out.2 fluid.data matches 1 if score @s fluid.storage.2 matches 1.. if data storage fluid:io fluids2[2].id run data modify storage fluid:io id set from storage fluid:io fluids2[2].id
execute if score #utils.out.2 fluid.data matches 1 if score @s fluid.storage.2 matches 1.. if data storage fluid:io fluids2[2].id run function fluid:v1.1/utils/check_id
execute if score #utils.out.2 fluid.data matches 1 if score @s fluid.storage.2 matches 1.. if score #utils.out fluid.data matches 1 if data storage fluid:io fluids2[2].id run scoreboard players set #network.dest.tank fluid.data 2
execute if score #utils.out.2 fluid.data matches 1 unless score @s fluid.storage.2 matches 1.. run scoreboard players set #network.dest.tank fluid.data 2
execute if score #network.dest.tank fluid.data matches 2 run scoreboard players set #out fluid.data 1
execute if score #network.dest.tank fluid.data matches 2 run function #fluid:v1/tank_fluid_accept
execute if score #network.dest.tank fluid.data matches 2 if score #out fluid.data matches 0 run scoreboard players set #network.tank fluid.data -1

execute if score #utils.out.1 fluid.data matches 1 if score @s fluid.storage.1 matches 1.. if data storage fluid:io fluids2[1].id run data modify storage fluid:io id set from storage fluid:io fluids2[1].id
execute if score #utils.out.1 fluid.data matches 1 if score @s fluid.storage.1 matches 1.. if data storage fluid:io fluids2[1].id run function fluid:v1.1/utils/check_id
execute if score #utils.out.1 fluid.data matches 1 if score @s fluid.storage.1 matches 1.. if score #utils.out fluid.data matches 1 if data storage fluid:io fluids2[1].id run scoreboard players set #network.dest.tank fluid.data 1
execute if score #utils.out.1 fluid.data matches 1 unless score @s fluid.storage.1 matches 1.. run scoreboard players set #network.dest.tank fluid.data 1
execute if score #network.dest.tank fluid.data matches 1 run scoreboard players set #out fluid.data 1
execute if score #network.dest.tank fluid.data matches 1 run function #fluid:v1/tank_fluid_accept
execute if score #network.dest.tank fluid.data matches 1 if score #out fluid.data matches 0 run scoreboard players set #network.tank fluid.data -1

execute if score #utils.out.0 fluid.data matches 1 if score @s fluid.storage.0 matches 1.. if data storage fluid:io fluids2[0].id run data modify storage fluid:io id set from storage fluid:io fluids2[0].id
execute if score #utils.out.0 fluid.data matches 1 if score @s fluid.storage.0 matches 1.. if data storage fluid:io fluids2[0].id run function fluid:v1.1/utils/check_id
execute if score #utils.out.0 fluid.data matches 1 if score @s fluid.storage.0 matches 1.. if score #utils.out fluid.data matches 1 if data storage fluid:io fluids2[0].id run scoreboard players set #network.dest.tank fluid.data 0
execute if score #utils.out.0 fluid.data matches 1 unless score @s fluid.storage.0 matches 1.. run scoreboard players set #network.dest.tank fluid.data 0
execute if score #network.dest.tank fluid.data matches 0 run scoreboard players set #out fluid.data 1
execute if score #network.dest.tank fluid.data matches 0 run function #fluid:v1/tank_fluid_accept
execute if score #network.dest.tank fluid.data matches 0 if score #out fluid.data matches 0 run scoreboard players set #network.tank fluid.data -1

# copy scoreboard data
execute if score #network.dest.tank fluid.data matches 0 run scoreboard players operation #network.dest.storage fluid.data = @s fluid.storage.0
execute if score #network.dest.tank fluid.data matches 1 run scoreboard players operation #network.dest.storage fluid.data = @s fluid.storage.1
execute if score #network.dest.tank fluid.data matches 2 run scoreboard players operation #network.dest.storage fluid.data = @s fluid.storage.2
execute if score #network.dest.tank fluid.data matches 3 run scoreboard players operation #network.dest.storage fluid.data = @s fluid.storage.3

execute if score #network.dest.tank fluid.data matches 0 run scoreboard players operation #network.dest.max_storage fluid.data = @s fluid.max_storage.0
execute if score #network.dest.tank fluid.data matches 1 run scoreboard players operation #network.dest.max_storage fluid.data = @s fluid.max_storage.1
execute if score #network.dest.tank fluid.data matches 2 run scoreboard players operation #network.dest.max_storage fluid.data = @s fluid.max_storage.2
execute if score #network.dest.tank fluid.data matches 3 run scoreboard players operation #network.dest.max_storage fluid.data = @s fluid.max_storage.3

scoreboard players operation #network.dest.space fluid.data = #network.dest.max_storage fluid.data
scoreboard players operation #network.dest.space fluid.data -= #network.dest.storage fluid.data

# store fluid data
execute if score #network.dest.tank fluid.data matches 0 unless score @s fluid.storage.0 matches 1.. run data modify storage fluid:io fluids2[0] set from storage fluid:io fluid
execute if score #network.dest.tank fluid.data matches 0 unless score @s fluid.storage.0 matches 1.. run function fluid:v1.1/utils/store_fluids_slot_2
execute if score #network.dest.tank fluid.data matches 1 unless score @s fluid.storage.1 matches 1.. run data modify storage fluid:io fluids2[1] set from storage fluid:io fluid
execute if score #network.dest.tank fluid.data matches 1 unless score @s fluid.storage.1 matches 1.. run function fluid:v1.1/utils/store_fluids_slot_2
execute if score #network.dest.tank fluid.data matches 2 unless score @s fluid.storage.2 matches 1.. run data modify storage fluid:io fluids2[2] set from storage fluid:io fluid
execute if score #network.dest.tank fluid.data matches 2 unless score @s fluid.storage.2 matches 1.. run function fluid:v1.1/utils/store_fluids_slot_2
execute if score #network.dest.tank fluid.data matches 3 unless score @s fluid.storage.3 matches 1.. run data modify storage fluid:io fluids2[3] set from storage fluid:io fluid
execute if score #network.dest.tank fluid.data matches 3 unless score @s fluid.storage.3 matches 1.. run function fluid:v1.1/utils/store_fluids_slot_2

# modify scoreboard data
scoreboard players operation #network.transfer_amount fluid.data = #network.max_transfer fluid.data
execute if score #network.dest.space fluid.data < #network.transfer_amount fluid.data run scoreboard players operation #network.transfer_amount fluid.data = #network.dest.space fluid.data

execute if score #network.dest.tank fluid.data matches 0..3 run scoreboard players operation #network.storage fluid.data -= #network.transfer_amount fluid.data
execute if score #network.dest.tank fluid.data matches 0..3 run scoreboard players operation #network.max_transfer fluid.data -= #network.transfer_amount fluid.data
execute if score #network.dest.tank fluid.data matches 0..3 run scoreboard players operation #network.transfer_rate fluid.data -= #network.transfer_amount fluid.data
execute if score #network.dest.tank fluid.data matches 0..3 run scoreboard players operation #network.transfer_capacity fluid.data -= #network.transfer_amount fluid.data

execute if score #network.dest.tank fluid.data matches 0 run scoreboard players operation @s fluid.storage.0 += #network.transfer_amount fluid.data
execute if score #network.dest.tank fluid.data matches 1 run scoreboard players operation @s fluid.storage.1 += #network.transfer_amount fluid.data
execute if score #network.dest.tank fluid.data matches 2 run scoreboard players operation @s fluid.storage.2 += #network.transfer_amount fluid.data
execute if score #network.dest.tank fluid.data matches 3 run scoreboard players operation @s fluid.storage.3 += #network.transfer_amount fluid.data

execute if score #network.dest.tank fluid.data matches 0..3 run function #fluid:v1/tank_fluid_update
execute if score #network.dest.tank fluid.data matches 0..3 run scoreboard players set #network.updated fluid.data 1

