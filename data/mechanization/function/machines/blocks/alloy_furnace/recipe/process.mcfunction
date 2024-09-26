
# exit early if tanks are empty/full
execute if score @s fluid.storage.2 matches 4000.. run return fail
execute if score @s fluid.storage.0 matches 0 if score @s fluid.storage.1 matches 0 run return fail

# copy fluid data to storage
data modify storage mechanization:temp obj set value {slot1:{},slot2:{},slot3:{},tank_1:{},tank_2:{},tank_3:{},temp:{}}
data remove block -30000000 0 3201 Items

item replace block -30000000 0 3201 container.0 from entity @s contents
data modify storage mechanization:temp obj.temp set from block -30000000 0 3201 Items[{Slot:0b}]
execute if score @s fluid.storage.0 matches 1.. run data modify storage mechanization:temp obj.tank_1 set from storage mechanization:temp obj.temp.components."minecraft:custom_data".fluids[0]
execute if score @s fluid.storage.1 matches 1.. run data modify storage mechanization:temp obj.tank_2 set from storage mechanization:temp obj.temp.components."minecraft:custom_data".fluids[1]
execute if score @s fluid.storage.2 matches 1.. run data modify storage mechanization:temp obj.tank_3 set from storage mechanization:temp obj.temp.components."minecraft:custom_data".fluids[2]

# get recipes from partial match
execute if score @s fluid.storage.0 matches 1.. run function mechanization:machines/blocks/alloy_furnace/recipe/m.get_recipes with storage mechanization:temp obj.tank_1
execute unless score @s fluid.storage.0 matches 1.. run function mechanization:machines/blocks/alloy_furnace/recipe/m.get_recipes with storage mechanization:temp obj.tank_2
data modify storage mechanization:test list set from storage mechanization:temp list
execute unless data storage mechanization:temp list[0] run return fail

# copy item data to storage
execute if items block ~ ~ ~ container.0 * run item replace block -30000000 0 3201 container.0 from block ~ ~ ~ container.0
execute if items block ~ ~ ~ container.0 * run data modify storage mechanization:temp obj.slot1 set from block -30000000 0 3201 Items[{Slot:0b}]
execute if items block ~ ~ ~ container.9 * run item replace block -30000000 0 3201 container.0 from block ~ ~ ~ container.9
execute if items block ~ ~ ~ container.9 * run data modify storage mechanization:temp obj.slot2 set from block -30000000 0 3201 Items[{Slot:0b}]
execute if items block ~ ~ ~ container.18 * run item replace block -30000000 0 3201 container.0 from block ~ ~ ~ container.18
execute if items block ~ ~ ~ container.18 * run data modify storage mechanization:temp obj.slot3 set from block -30000000 0 3201 Items[{Slot:0b}]

execute store result score #count.0 mechanization.data run data get storage mechanization:temp obj.slot1.count
execute store result score #count.1 mechanization.data run data get storage mechanization:temp obj.slot2.count
execute store result score #count.2 mechanization.data run data get storage mechanization:temp obj.slot3.count

# check for valid recipes
execute store result score #success mechanization.data run function mechanization:machines/blocks/alloy_furnace/recipe/check_recipes
execute unless score #success mechanization.data matches 1 run return fail

execute store result score #upgrade mechanization.data run data get storage mechanization:temp list[-1].machine_upgrade
execute if score #success mechanization.data matches 1 unless score @s mechanization.time matches 1.. if score #upgrade mechanization.data matches 1 run tag @s add mechanization.errored
execute if entity @s[tag=mechanization.errored] run return fail
execute if score #success mechanization.data matches 1 unless score @s mechanization.time matches 1.. run scoreboard players operation @s mechanization.time = #machines.cf.alloy_furnace.speed mechanization.data
execute if score #success mechanization.data matches 1 if score @s mechanization.time = #machines.cf.alloy_furnace.speed mechanization.data run return 1

# process output
data modify storage mechanization:test list set from storage mechanization:temp list

execute if score #input.0 mechanization.data matches 1..3 store result score #count mechanization.data run data get storage mechanization:temp list[-1].input[0].count -1
execute if score #input.0 mechanization.data matches 1 run item modify block ~ ~ ~ container.0 {"function":"minecraft:set_count","count":{"type":"minecraft:score","target":{"type":"minecraft:fixed","name":"#count"},"score":"mechanization.data"},"add":true}
execute if score #input.0 mechanization.data matches 2 run item modify block ~ ~ ~ container.9 {"function":"minecraft:set_count","count":{"type":"minecraft:score","target":{"type":"minecraft:fixed","name":"#count"},"score":"mechanization.data"},"add":true}
execute if score #input.0 mechanization.data matches 3 run item modify block ~ ~ ~ container.18 {"function":"minecraft:set_count","count":{"type":"minecraft:score","target":{"type":"minecraft:fixed","name":"#count"},"score":"mechanization.data"},"add":true}
execute if score #input.0 mechanization.data matches 4..5 store result score #amount mechanization.data run data get storage mechanization:temp list[-1].input[0].amount
execute if score #input.0 mechanization.data matches 4 run scoreboard players operation @s fluid.storage.0 -= #amount mechanization.data
execute if score #input.0 mechanization.data matches 5 run scoreboard players operation @s fluid.storage.1 -= #amount mechanization.data

execute if score #input.1 mechanization.data matches 1..3 store result score #count mechanization.data run data get storage mechanization:temp list[-1].input[1].count -1
execute if score #input.1 mechanization.data matches 1 run item modify block ~ ~ ~ container.0 {"function":"minecraft:set_count","count":{"type":"minecraft:score","target":{"type":"minecraft:fixed","name":"#count"},"score":"mechanization.data"},"add":true}
execute if score #input.1 mechanization.data matches 2 run item modify block ~ ~ ~ container.9 {"function":"minecraft:set_count","count":{"type":"minecraft:score","target":{"type":"minecraft:fixed","name":"#count"},"score":"mechanization.data"},"add":true}
execute if score #input.1 mechanization.data matches 3 run item modify block ~ ~ ~ container.18 {"function":"minecraft:set_count","count":{"type":"minecraft:score","target":{"type":"minecraft:fixed","name":"#count"},"score":"mechanization.data"},"add":true}
execute if score #input.1 mechanization.data matches 4..5 store result score #amount mechanization.data run data get storage mechanization:temp list[-1].input[1].amount
execute if score #input.1 mechanization.data matches 4 run scoreboard players operation @s fluid.storage.0 -= #amount mechanization.data
execute if score #input.1 mechanization.data matches 5 run scoreboard players operation @s fluid.storage.1 -= #amount mechanization.data

execute if score #input.2 mechanization.data matches 1..3 store result score #count mechanization.data run data get storage mechanization:temp list[-1].input[2].count -1
execute if score #input.2 mechanization.data matches 1 run item modify block ~ ~ ~ container.0 {"function":"minecraft:set_count","count":{"type":"minecraft:score","target":{"type":"minecraft:fixed","name":"#count"},"score":"mechanization.data"},"add":true}
execute if score #input.2 mechanization.data matches 2 run item modify block ~ ~ ~ container.9 {"function":"minecraft:set_count","count":{"type":"minecraft:score","target":{"type":"minecraft:fixed","name":"#count"},"score":"mechanization.data"},"add":true}
execute if score #input.2 mechanization.data matches 3 run item modify block ~ ~ ~ container.18 {"function":"minecraft:set_count","count":{"type":"minecraft:score","target":{"type":"minecraft:fixed","name":"#count"},"score":"mechanization.data"},"add":true}
execute if score #input.2 mechanization.data matches 4..5 store result score #amount mechanization.data run data get storage mechanization:temp list[-1].input[2].amount
execute if score #input.2 mechanization.data matches 4 run scoreboard players operation @s fluid.storage.0 -= #amount mechanization.data
execute if score #input.2 mechanization.data matches 5 run scoreboard players operation @s fluid.storage.1 -= #amount mechanization.data

execute if score #input.3 mechanization.data matches 1..3 store result score #count mechanization.data run data get storage mechanization:temp list[-1].input[3].count -1
execute if score #input.3 mechanization.data matches 1 run item modify block ~ ~ ~ container.0 {"function":"minecraft:set_count","count":{"type":"minecraft:score","target":{"type":"minecraft:fixed","name":"#count"},"score":"mechanization.data"},"add":true}
execute if score #input.3 mechanization.data matches 2 run item modify block ~ ~ ~ container.9 {"function":"minecraft:set_count","count":{"type":"minecraft:score","target":{"type":"minecraft:fixed","name":"#count"},"score":"mechanization.data"},"add":true}
execute if score #input.3 mechanization.data matches 3 run item modify block ~ ~ ~ container.18 {"function":"minecraft:set_count","count":{"type":"minecraft:score","target":{"type":"minecraft:fixed","name":"#count"},"score":"mechanization.data"},"add":true}
execute if score #input.3 mechanization.data matches 4..5 store result score #amount mechanization.data run data get storage mechanization:temp list[-1].input[3].amount
execute if score #input.3 mechanization.data matches 4 run scoreboard players operation @s fluid.storage.0 -= #amount mechanization.data
execute if score #input.3 mechanization.data matches 5 run scoreboard players operation @s fluid.storage.1 -= #amount mechanization.data

execute if score #input.4 mechanization.data matches 1..3 store result score #count mechanization.data run data get storage mechanization:temp list[-1].input[4].count -1
execute if score #input.4 mechanization.data matches 1 run item modify block ~ ~ ~ container.0 {"function":"minecraft:set_count","count":{"type":"minecraft:score","target":{"type":"minecraft:fixed","name":"#count"},"score":"mechanization.data"},"add":true}
execute if score #input.4 mechanization.data matches 2 run item modify block ~ ~ ~ container.9 {"function":"minecraft:set_count","count":{"type":"minecraft:score","target":{"type":"minecraft:fixed","name":"#count"},"score":"mechanization.data"},"add":true}
execute if score #input.4 mechanization.data matches 3 run item modify block ~ ~ ~ container.18 {"function":"minecraft:set_count","count":{"type":"minecraft:score","target":{"type":"minecraft:fixed","name":"#count"},"score":"mechanization.data"},"add":true}
execute if score #input.4 mechanization.data matches 4..5 store result score #amount mechanization.data run data get storage mechanization:temp list[-1].input[4].amount
execute if score #input.4 mechanization.data matches 4 run scoreboard players operation @s fluid.storage.0 -= #amount mechanization.data
execute if score #input.4 mechanization.data matches 5 run scoreboard players operation @s fluid.storage.1 -= #amount mechanization.data

execute if score @s fluid.storage.0 matches ..0 run data modify entity @s item.components."minecraft:custom_data".fluids[0] set value {}
execute if score @s fluid.storage.1 matches ..0 run data modify entity @s item.components."minecraft:custom_data".fluids[1] set value {}

execute if score @s fluid.storage.2 matches ..0 run function mechanization:machines/blocks/alloy_furnace/recipe/m.set_output with storage mechanization:temp list[-1].output
execute store result score #amount mechanization.data run data get storage mechanization:temp list[-1].output.amount
execute store result score #bonus mechanization.data run data get storage mechanization:temp list[-1].output.bonus_mode
execute if score #bonus mechanization.data matches 1 if entity @s[tag=mechanization.ender_upgrade] if predicate {"condition":"minecraft:random_chance","chance":0.1} run scoreboard players operation #amount mechanization.data += #amount mechanization.data
execute if score #bonus mechanization.data matches 2 if entity @s[tag=mechanization.nether_upgrade] if predicate {"condition":"minecraft:random_chance","chance":0.1} run scoreboard players operation #amount mechanization.data += #amount mechanization.data
scoreboard players operation @s fluid.storage.2 += #amount mechanization.data

scoreboard players operation @s energy.storage -= #machines.cf.alloy_furnace.power mechanization.data

say done
