
schedule function fluid:v1.2/tick 1t

# scoreboard objectives
scoreboard objectives add fluid.data dummy
scoreboard objectives add fluid.transfer_rate dummy
scoreboard objectives add fluid.transfer_capacity dummy
scoreboard objectives add fluid.queue dummy

scoreboard objectives add fluid.storage.0 dummy
scoreboard objectives add fluid.storage.1 dummy
scoreboard objectives add fluid.storage.2 dummy
scoreboard objectives add fluid.storage.3 dummy

scoreboard objectives add fluid.max_storage.0 dummy
scoreboard objectives add fluid.max_storage.1 dummy
scoreboard objectives add fluid.max_storage.2 dummy
scoreboard objectives add fluid.max_storage.3 dummy

scoreboard objectives add fluid.io.up dummy
scoreboard objectives add fluid.io.down dummy
scoreboard objectives add fluid.io.north dummy
scoreboard objectives add fluid.io.south dummy
scoreboard objectives add fluid.io.east dummy
scoreboard objectives add fluid.io.west dummy

scoreboard objectives add fluid.network_id dummy
scoreboard objectives add fluid.network_id.up dummy
scoreboard objectives add fluid.network_id.down dummy
scoreboard objectives add fluid.network_id.north dummy
scoreboard objectives add fluid.network_id.south dummy
scoreboard objectives add fluid.network_id.east dummy
scoreboard objectives add fluid.network_id.west dummy

# scoreboard constants
scoreboard players set #cons.-1 fluid.data -1
scoreboard players set #cons.0 fluid.data 0
scoreboard players set #cons.1 fluid.data 1
scoreboard players set #cons.2 fluid.data 2
scoreboard players set #cons.4 fluid.data 4
scoreboard players set #cons.8 fluid.data 8
scoreboard players set #cons.16 fluid.data 16
scoreboard players set #cons.20 fluid.data 20
scoreboard players set #cons.32 fluid.data 32
scoreboard players set #cons.64 fluid.data 64
scoreboard players set #cons.128 fluid.data 128
scoreboard players set #cons.1000 fluid.data 1000

# storage definition
data merge storage fluid:io {fluids:[], fluids2:[], fluid:{}, fluid2:{}, id:"", input:{input_slot:{}, output_slot:{}}, output:{input_slot:{}, output_slot:{}}}
function fluid:v1.2/utils/init_fluid_definitions
