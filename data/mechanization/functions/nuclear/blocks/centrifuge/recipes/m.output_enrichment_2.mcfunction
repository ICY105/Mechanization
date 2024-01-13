
#$ next_enrichment: % enrichment of fluid to check output for

# calculate max tank outputs
scoreboard players set #output_1 mechanization.data 4000
scoreboard players operation #output_1 mechanization.data -= #output mechanization.data

scoreboard players set #inverse mechanization.data 144
scoreboard players operation #inverse mechanization.data -= #output mechanization.data
scoreboard players set #output_2 mechanization.data 4000
scoreboard players operation #output_2 mechanization.data -= #inverse mechanization.data

# run recipe check
scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 1 if score @s fluid.storage.1 matches 1.. unless data storage mechanization:temp obj.tank_2{id:"molten_depleted_uranium"} run scoreboard players set #success mechanization.data -1
$execute if score #success mechanization.data matches 1 if score @s fluid.storage.2 matches 1.. unless data storage mechanization:temp obj.tank_3{id:"molten_uranium_e$(next_enrichment)"} run scoreboard players set #success mechanization.data -1
execute if score #success mechanization.data matches 1 if score @s fluid.storage.1 > #output_1 mechanization.data run scoreboard players set #success mechanization.data -1
execute if score #success mechanization.data matches 1 if score @s fluid.storage.2 > #output_2 mechanization.data run scoreboard players set #success mechanization.data -1

# complete recipe
execute if score #success mechanization.data matches 1 unless score @s fluid.storage.1 matches 1.. run data modify entity @s item.tag.fluids[1] set from storage fluid:definitions fluid_data[{id:"molten_depleted_uranium"}]
$execute if score #success mechanization.data matches 1 unless score @s fluid.storage.2 matches 1.. run data modify entity @s item.tag.fluids[2] set from storage fluid:definitions fluid_data[{id:"molten_uranium_e$(next_enrichment)"}]

execute if score #success mechanization.data matches 1 run scoreboard players remove @s fluid.storage.0 144
execute if score #success mechanization.data matches 1 run scoreboard players operation @s fluid.storage.1 += #inverse mechanization.data
execute if score #success mechanization.data matches 1 run scoreboard players operation @s fluid.storage.2 += #output mechanization.data
