
# cancel if input & output don't match
data modify storage mechanization:temp obj set from entity @s item.components."minecraft:custom_data".fluids[2]
execute if score @s fluid.storage.2 matches 1.. if data entity @s item.components."minecraft:custom_data".fluids[{id:"superheated_water"}] unless data storage mechanization:temp obj{id:"water"} run return fail
execute if score @s fluid.storage.2 matches 1.. if data entity @s item.components."minecraft:custom_data".fluids[{id:"superheated_heavy_water"}] unless data storage mechanization:temp obj{id:"heavy_water"} run return fail
execute if score @s fluid.storage.2 matches 1.. if data entity @s item.components."minecraft:custom_data".fluids[{id:"superheated_experience"}] unless data storage mechanization:temp obj{id:"experience"} run return fail

# calculate amount to transfer
scoreboard players set #transfer mechanization.data 100

scoreboard players operation #max mechanization.data = @s fluid.max_storage.2
scoreboard players operation #max mechanization.data -= @s fluid.storage.2
execute if score #transfer mechanization.data > #max mechanization.data run scoreboard players operation #transfer mechanization.data = #max mechanization.data

scoreboard players operation #max mechanization.data = @s fluid.max_storage.3
scoreboard players operation #max mechanization.data -= @s fluid.storage.3
execute if score #transfer mechanization.data > #max mechanization.data run scoreboard players operation #transfer mechanization.data = #max mechanization.data

execute if score #transfer mechanization.data > @s fluid.storage.0 run scoreboard players operation #transfer mechanization.data = @s fluid.storage.0
execute if score #transfer mechanization.data > @s fluid.storage.1 run scoreboard players operation #transfer mechanization.data = @s fluid.storage.1

# copy fluid data if tank is empty
execute unless score @s fluid.storage.2 matches 1.. if data entity @s item.components."minecraft:custom_data".fluids[{id:"superheated_water"}] run data modify entity @s item.components."minecraft:custom_data".fluids[2] set from storage fluid:definitions fluid_data[{id:"water"}]
execute unless score @s fluid.storage.2 matches 1.. if data entity @s item.components."minecraft:custom_data".fluids[{id:"superheated_heavy_water"}] run data modify entity @s item.components."minecraft:custom_data".fluids[2] set from storage fluid:definitions fluid_data[{id:"heavy_water"}]
execute unless score @s fluid.storage.2 matches 1.. if data entity @s item.components."minecraft:custom_data".fluids[{id:"superheated_experience"}] run data modify entity @s item.components."minecraft:custom_data".fluids[2] set from storage fluid:definitions fluid_data[{id:"experience"}]

execute unless score @s fluid.storage.3 matches 1.. run data modify entity @s item.components."minecraft:custom_data".fluids[3] set from storage fluid:definitions fluid_data[{id:"steam"}]

# modfiy tank values
scoreboard players operation @s fluid.storage.0 -= #transfer mechanization.data
scoreboard players operation @s fluid.storage.1 -= #transfer mechanization.data
scoreboard players operation @s fluid.storage.2 += #transfer mechanization.data
scoreboard players operation @s fluid.storage.3 += #transfer mechanization.data
