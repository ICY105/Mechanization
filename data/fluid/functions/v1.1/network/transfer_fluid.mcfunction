
# calculate max fluid transfer
scoreboard players operation #network.max_transfer fluid.data = #network.transfer_capacity fluid.data
execute if score #network.storage fluid.data < #network.max_transfer fluid.data run scoreboard players operation #network.max_transfer fluid.data = #network.storage fluid.data
execute if score #network.transfer_rate fluid.data < #network.max_transfer fluid.data run scoreboard players operation #network.max_transfer fluid.data = #network.transfer_rate fluid.data
execute if score @s fluid.transfer_rate < #network.max_transfer fluid.data run scoreboard players operation #network.max_transfer fluid.data = @s fluid.transfer_rate


# run transfer on each valid side
scoreboard players operation #network.io fluid.data = @s fluid.io.up
execute if score #network.max_transfer fluid.data matches 1.. if score #network.io fluid.data matches 1.. if score @s fluid.network_id.up = #network.network_id fluid.data run function fluid:v1.1/network/transfer_fluid_2

scoreboard players operation #network.io fluid.data = @s fluid.io.down
execute if score #network.max_transfer fluid.data matches 1.. if score #network.io fluid.data matches 1.. if score @s fluid.network_id.down = #network.network_id fluid.data run function fluid:v1.1/network/transfer_fluid_2

scoreboard players operation #network.io fluid.data = @s fluid.io.north
execute if score #network.max_transfer fluid.data matches 1.. if score #network.io fluid.data matches 1.. if score @s fluid.network_id.north = #network.network_id fluid.data run function fluid:v1.1/network/transfer_fluid_2

scoreboard players operation #network.io fluid.data = @s fluid.io.south
execute if score #network.max_transfer fluid.data matches 1.. if score #network.io fluid.data matches 1.. if score @s fluid.network_id.south = #network.network_id fluid.data run function fluid:v1.1/network/transfer_fluid_2

scoreboard players operation #network.io fluid.data = @s fluid.io.east
execute if score #network.max_transfer fluid.data matches 1.. if score #network.io fluid.data matches 1.. if score @s fluid.network_id.east = #network.network_id fluid.data run function fluid:v1.1/network/transfer_fluid_2

scoreboard players operation #network.io fluid.data = @s fluid.io.west
execute if score #network.max_transfer fluid.data matches 1.. if score #network.io fluid.data matches 1.. if score @s fluid.network_id.west = #network.network_id fluid.data run function fluid:v1.1/network/transfer_fluid_2
