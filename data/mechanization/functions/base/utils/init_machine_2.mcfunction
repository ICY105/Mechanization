
scoreboard players set @s mechanization.redstone 0

# init energy api data
scoreboard players set @s energy.max_storage 4000
scoreboard players operation @s energy.storage = #energy mechanization.data
scoreboard players operation @s energy.transfer_rate = #cons.max_int mechanization.data

function energy:v1/api/init_machine

# init fluid api
execute if entity @s[tag=fluid.tank] run scoreboard players operation @s mechanization.fluid.in = #fluid.in mechanization.data
execute if entity @s[tag=fluid.tank] run scoreboard players operation @s mechanization.fluid.out = #fluid.out mechanization.data

execute if entity @s[tag=fluid.tank] if score #fluid.io mechanization.data matches 0 run scoreboard players operation @s fluid.io.up = #fluid.in mechanization.data
execute if entity @s[tag=fluid.tank] if score #fluid.io mechanization.data matches 1 run scoreboard players operation @s fluid.io.up = #fluid.out mechanization.data
execute if entity @s[tag=fluid.tank] if score #fluid.io mechanization.data matches 0 run scoreboard players operation @s fluid.io.down = #fluid.in mechanization.data
execute if entity @s[tag=fluid.tank] if score #fluid.io mechanization.data matches 1 run scoreboard players operation @s fluid.io.down = #fluid.out mechanization.data

execute if entity @s[tag=fluid.tank] if score #fluid.io mechanization.data matches 0..1 run scoreboard players operation @s fluid.io.north = #fluid.in mechanization.data
execute if entity @s[tag=fluid.tank] if score #fluid.io mechanization.data matches 0..1 run scoreboard players operation @s fluid.io.south = #fluid.in mechanization.data
execute if entity @s[tag=fluid.tank] if score #fluid.io mechanization.data matches 0..1 run scoreboard players operation @s fluid.io.east = #fluid.in mechanization.data
execute if entity @s[tag=fluid.tank] if score #fluid.io mechanization.data matches 0..1 run scoreboard players operation @s fluid.io.west = #fluid.in mechanization.data

execute if entity @s[tag=fluid.tank] run scoreboard players operation @s fluid.storage.0 = #fluid.storage.0 mechanization.data
execute if entity @s[tag=fluid.tank] run scoreboard players operation @s fluid.storage.1 = #fluid.storage.1 mechanization.data
execute if entity @s[tag=fluid.tank] run scoreboard players operation @s fluid.storage.2 = #fluid.storage.2 mechanization.data
execute if entity @s[tag=fluid.tank] run scoreboard players operation @s fluid.storage.3 = #fluid.storage.3 mechanization.data

execute if entity @s[tag=fluid.tank] run function fluid:v1/api/init_tank

# add upgrades
execute if score #machine_upgrade mechanization.data matches 1 run tag @s add mechanization.upgraded
execute if score #nether_upgrade mechanization.data matches 1 run tag @s add mechanization.upgraded.nether
execute if score #ender_upgrade mechanization.data matches 1 run tag @s add mechanization.upgraded.ender
execute if score #muffled mechanization.data matches 1 run tag @s add mechanization.muffled

# init item displays
data modify entity @s[type=minecraft:item_display] transformation.scale set value [1.01,1.01,1.01]
execute if entity @s[type=minecraft:item_display] run function mechanization:base/utils/light_level/set_display_brightness

# clear new tags
tag @s remove mechanization.new