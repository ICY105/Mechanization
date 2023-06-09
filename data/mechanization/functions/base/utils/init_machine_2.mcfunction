
scoreboard players set @s mechanization.redstone 0

# init energy api data
execute if entity @s[tag=energy.send] run tag @s add mechanization.temp
execute if entity @s[tag=energy.receive] run tag @s add mechanization.temp

execute if entity @s[tag=mechanization.temp] run scoreboard players set @s energy.max_storage 4000
execute if entity @s[tag=mechanization.temp] run scoreboard players operation @s energy.storage = #energy mechanization.data
execute if entity @s[tag=mechanization.temp] run scoreboard players operation @s energy.transfer_rate = #cons.max_int mechanization.data
execute if entity @s[tag=mechanization.temp] run function energy:v1/api/init_machine

tag @s remove mechanization.temp

# init fluid api
# 0 = all input, 1 = top out, sides in, 2 = all output
execute if entity @s[tag=fluid.tank] run scoreboard players operation @s mechanization.fluid.in = #fluid.in mechanization.data
execute if entity @s[tag=fluid.tank] run scoreboard players operation @s mechanization.fluid.out = #fluid.out mechanization.data

execute if entity @s[tag=fluid.tank] if score #fluid.io mechanization.data matches 0 run scoreboard players operation @s fluid.io.up = #fluid.in mechanization.data
execute if entity @s[tag=fluid.tank] if score #fluid.io mechanization.data matches 1..2 run scoreboard players operation @s fluid.io.up = #fluid.out mechanization.data

execute if entity @s[tag=fluid.tank] if score #fluid.io mechanization.data matches 0 run scoreboard players operation @s fluid.io.down = #fluid.in mechanization.data
execute if entity @s[tag=fluid.tank] if score #fluid.io mechanization.data matches 1..2 run scoreboard players operation @s fluid.io.down = #fluid.out mechanization.data

execute if entity @s[tag=fluid.tank] if score #fluid.io mechanization.data matches 0..1 run scoreboard players operation @s fluid.io.north = #fluid.in mechanization.data
execute if entity @s[tag=fluid.tank] if score #fluid.io mechanization.data matches 2 run scoreboard players operation @s fluid.io.north = #fluid.out mechanization.data

execute if entity @s[tag=fluid.tank] if score #fluid.io mechanization.data matches 0..1 run scoreboard players operation @s fluid.io.south = #fluid.in mechanization.data
execute if entity @s[tag=fluid.tank] if score #fluid.io mechanization.data matches 2 run scoreboard players operation @s fluid.io.south = #fluid.out mechanization.data

execute if entity @s[tag=fluid.tank] if score #fluid.io mechanization.data matches 0..1 run scoreboard players operation @s fluid.io.east = #fluid.in mechanization.data
execute if entity @s[tag=fluid.tank] if score #fluid.io mechanization.data matches 2 run scoreboard players operation @s fluid.io.east = #fluid.out mechanization.data

execute if entity @s[tag=fluid.tank] if score #fluid.io mechanization.data matches 0..1 run scoreboard players operation @s fluid.io.west = #fluid.in mechanization.data
execute if entity @s[tag=fluid.tank] if score #fluid.io mechanization.data matches 2 run scoreboard players operation @s fluid.io.west = #fluid.out mechanization.data

scoreboard players operation @s fluid.max_storage.0 = #fluid.max_storage.0 mechanization.data
scoreboard players operation @s fluid.max_storage.1 = #fluid.max_storage.1 mechanization.data
scoreboard players operation @s fluid.max_storage.2 = #fluid.max_storage.2 mechanization.data
scoreboard players operation @s fluid.max_storage.3 = #fluid.max_storage.3 mechanization.data

scoreboard players operation @s fluid.storage.0 = #fluid.storage.0 mechanization.data
scoreboard players operation @s fluid.storage.1 = #fluid.storage.1 mechanization.data
scoreboard players operation @s fluid.storage.2 = #fluid.storage.2 mechanization.data
scoreboard players operation @s fluid.storage.3 = #fluid.storage.3 mechanization.data

execute if data storage mechanization:temp list[0] run data modify entity @s item.tag.fluids set from storage mechanization:temp list

scoreboard players operation @s fluid.transfer_rate = #cons.max_int mechanization.data
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
