
function fluid:v1.3/utils/get_fluids

scoreboard players set #network.updated fluid.data 0
scoreboard players operation #network.transfer_rate fluid.data = @s fluid.transfer_rate

# up
scoreboard players operation #network.network_id fluid.data = @s fluid.network_id.up
scoreboard players operation #network.io fluid.data = @s fluid.io.up
execute if score #network.io fluid.data matches ..-1 unless score #network.network_id fluid.data matches 0 if score #network.transfer_rate fluid.data matches 1.. run function fluid:v1.3/network/process_2

# down
scoreboard players operation #network.network_id fluid.data = @s fluid.network_id.down
scoreboard players operation #network.io fluid.data = @s fluid.io.down
execute if score #network.io fluid.data matches ..-1 unless score #network.network_id fluid.data matches 0 if score #network.transfer_rate fluid.data matches 1.. run function fluid:v1.3/network/process_2

# north
scoreboard players operation #network.network_id fluid.data = @s fluid.network_id.north
scoreboard players operation #network.io fluid.data = @s fluid.io.north
execute if score #network.io fluid.data matches ..-1 unless score #network.network_id fluid.data matches 0 if score #network.transfer_rate fluid.data matches 1.. run function fluid:v1.3/network/process_2

# south
scoreboard players operation #network.network_id fluid.data = @s fluid.network_id.south
scoreboard players operation #network.io fluid.data = @s fluid.io.south
execute if score #network.io fluid.data matches ..-1 unless score #network.network_id fluid.data matches 0 if score #network.transfer_rate fluid.data matches 1.. run function fluid:v1.3/network/process_2

# east
scoreboard players operation #network.network_id fluid.data = @s fluid.network_id.east
scoreboard players operation #network.io fluid.data = @s fluid.io.east
execute if score #network.io fluid.data matches ..-1 unless score #network.network_id fluid.data matches 0 if score #network.transfer_rate fluid.data matches 1.. run function fluid:v1.3/network/process_2

# west
scoreboard players operation #network.network_id fluid.data = @s fluid.network_id.west
scoreboard players operation #network.io fluid.data = @s fluid.io.west
execute if score #network.io fluid.data matches ..-1 unless score #network.network_id fluid.data matches 0 if score #network.transfer_rate fluid.data matches 1.. run function fluid:v1.3/network/process_2

function fluid:v1.3/utils/store_fluids
execute if score #network.updated fluid.data matches 1 run function #fluid:v1/tank_fluid_update
