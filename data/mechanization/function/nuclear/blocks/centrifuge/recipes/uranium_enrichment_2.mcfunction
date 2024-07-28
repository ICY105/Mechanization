
execute unless score @s fluid.storage.1 matches 1.. run data modify entity @s item.tag.fluids[1] set from storage fluid:definitions fluid_data[{id:"molten_depleted_uranium"}]
execute unless score @s fluid.storage.2 matches 1.. run data modify entity @s item.tag.fluids[2] set from storage fluid:definitions fluid_data[{id:"molten_uranium_e2"}]

scoreboard players remove @s fluid.storage.0 144
scoreboard players add @s fluid.storage.1 72
scoreboard players add @s fluid.storage.2 72
