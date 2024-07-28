
#> heat: amount of fluid to heat
#> heat_total: total heat disappated for all function calls

# calculate transfer amount
scoreboard players operation #transfer mechanization.data = #heat mechanization.data
execute if score #transfer mechanization.data >= @s fluid.storage.0 run scoreboard players operation #transfer mechanization.data = @s fluid.storage.0
scoreboard players operation #max mechanization.data = @s fluid.max_storage.1
scoreboard players operation #max mechanization.data -= @s fluid.storage.1
execute if score #transfer mechanization.data >= #max mechanization.data run scoreboard players operation #transfer mechanization.data = #max mechanization.data

# transfer fluid
execute if score #transfer mechanization.data matches 1.. unless score @s fluid.storage.1 matches 1.. if data entity @s item.tag.fluids[{id:"water"}] run data modify entity @s item.tag.fluids[1] set from storage fluid:definitions fluid_data[{id:"superheated_water"}]
execute if score #transfer mechanization.data matches 1.. unless score @s fluid.storage.1 matches 1.. if data entity @s item.tag.fluids[{id:"heavy_water"}] run data modify entity @s item.tag.fluids[1] set from storage fluid:definitions fluid_data[{id:"superheated_heavy_water"}]
execute if score #transfer mechanization.data matches 1.. unless score @s fluid.storage.1 matches 1.. if data entity @s item.tag.fluids[{id:"experience"}] run data modify entity @s item.tag.fluids[1] set from storage fluid:definitions fluid_data[{id:"superheated_experience"}]

scoreboard players operation @s fluid.storage.0 -= #transfer mechanization.data
scoreboard players operation @s fluid.storage.1 += #transfer mechanization.data
scoreboard players operation #heat_total mechanization.data += #transfer mechanization.data

