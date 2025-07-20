
# init
setblock -30000000 0 3201 minecraft:yellow_shulker_box replace
data modify storage mechanization:temp obj set value {slot1:{},slot2:{},slot3:{},tank_1:{},tank_2:{},tank_3:{}}

item replace block -30000000 0 3201 container.0 from block ~ ~ ~ container.0
data modify storage mechanization:temp obj.slot1 set from block -30000000 0 3201 Items[{Slot:0b}]
item replace block -30000000 0 3201 container.0 from block ~ ~ ~ container.9
data modify storage mechanization:temp obj.slot2 set from block -30000000 0 3201 Items[{Slot:0b}]
item replace block -30000000 0 3201 container.0 from block ~ ~ ~ container.18
data modify storage mechanization:temp obj.slot3 set from block -30000000 0 3201 Items[{Slot:0b}]

item replace block -30000000 0 3201 container.0 from entity @s contents
data modify storage mechanization:temp obj.tank_1 set from block -30000000 0 3201 Items[{Slot:0b}].components."minecraft:custom_data".fluids[0]
data modify storage mechanization:temp obj.tank_2 set from block -30000000 0 3201 Items[{Slot:0b}].components."minecraft:custom_data".fluids[1]
data modify storage mechanization:temp obj.tank_3 set from block -30000000 0 3201 Items[{Slot:0b}].components."minecraft:custom_data".fluids[2]

execute store result score #count.0 mechanization.data run data get storage mechanization:temp obj.slot1.count
execute store result score #count.1 mechanization.data run data get storage mechanization:temp obj.slot2.count
execute store result score #count.2 mechanization.data run data get storage mechanization:temp obj.slot3.count
scoreboard players operation #storage.0 mechanization.data = @s fluid.storage.0
scoreboard players operation #storage.1 mechanization.data = @s fluid.storage.1
scoreboard players operation #storage.2 mechanization.data = @s fluid.storage.2

# Spent Fuel
scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 0 if data storage mechanization:temp obj.slot1.components."minecraft:custom_data".mechanization{id:"spent_fuel_rod"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 0 if data storage mechanization:temp obj.slot2.components."minecraft:custom_data".mechanization{id:"spent_fuel_rod"} run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 0 if data storage mechanization:temp obj.slot3.components."minecraft:custom_data".mechanization{id:"spent_fuel_rod"} run scoreboard players set #success mechanization.data 3
execute if score #success mechanization.data matches 1 store result score #enrichment mechanization.data run data get storage mechanization:temp obj.slot1.components."minecraft:custom_data".mechanization.enrichment
execute if score #success mechanization.data matches 2 store result score #enrichment mechanization.data run data get storage mechanization:temp obj.slot2.components."minecraft:custom_data".mechanization.enrichment
execute if score #success mechanization.data matches 3 store result score #enrichment mechanization.data run data get storage mechanization:temp obj.slot3.components."minecraft:custom_data".mechanization.enrichment
execute if score #success mechanization.data matches 1.. run scoreboard players operation #enrichment mechanization.data *= #cons.36 mechanization.data
execute if score #success mechanization.data matches 1.. run scoreboard players set #max_out mechanization.data 4000
execute if score #success mechanization.data matches 1.. run scoreboard players operation #max_out mechanization.data -= #enrichment mechanization.data
execute if score #success mechanization.data matches 1.. if score @s fluid.storage.1 matches 1.. unless data storage mechanization:temp obj.tank_2{id:"molten_plutonium"} run scoreboard players set #success mechanization.data -1
execute if score #success mechanization.data matches 1.. if score @s fluid.storage.1 > #max_out mechanization.data run scoreboard players set #success mechanization.data -1
execute if score #success mechanization.data matches 1.. run function mechanization:nuclear/blocks/centrifuge/recipes/plutonium

# Heavy Water
scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 0 if score @s fluid.storage.0 matches 1000.. if data storage mechanization:temp obj.tank_1{id:"water"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 1 if score @s fluid.storage.1 matches 1.. unless data storage mechanization:temp obj.tank_2{id:"water"} run scoreboard players set #success mechanization.data -1
execute if score #success mechanization.data matches 1 if score @s fluid.storage.2 matches 1.. unless data storage mechanization:temp obj.tank_3{id:"heavy_water"} run scoreboard players set #success mechanization.data -1
execute if score #success mechanization.data matches 1 if score @s fluid.storage.1 matches 3051.. run scoreboard players set #success mechanization.data -1
execute if score #success mechanization.data matches 1 if score @s fluid.storage.2 matches 3951.. run scoreboard players set #success mechanization.data -1
execute if score #success mechanization.data matches 1 run function mechanization:nuclear/blocks/centrifuge/recipes/heavy_water

# Uranium Enrichment 2%
scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 0 if score @s fluid.storage.0 matches 144.. if data storage mechanization:temp obj.tank_1{id:"molten_uranium"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 1 if score @s fluid.storage.1 matches 1.. unless data storage mechanization:temp obj.tank_2{id:"molten_depleted_uranium"} run scoreboard players set #success mechanization.data -1
execute if score #success mechanization.data matches 1 if score @s fluid.storage.2 matches 1.. unless data storage mechanization:temp obj.tank_3{id:"molten_uranium_e2"} run scoreboard players set #success mechanization.data -1
execute if score #success mechanization.data matches 1 if score @s fluid.storage.1 matches 3927.. run scoreboard players set #success mechanization.data -1
execute if score #success mechanization.data matches 1 if score @s fluid.storage.2 matches 3927.. run scoreboard players set #success mechanization.data -1
execute if score #success mechanization.data matches 1 run function mechanization:nuclear/blocks/centrifuge/recipes/uranium_enrichment_2

# Generalized Enrichment
data modify storage mechanization:temp obj.fluid_type set value ""
data modify storage mechanization:temp obj.fluid_type set string storage mechanization:temp obj.tank_1.id 0 16
data modify storage mechanization:temp obj.fluid_enrichment set value ""
data modify storage mechanization:temp obj.fluid_enrichment set string storage mechanization:temp obj.tank_1.id 16
execute if score @s fluid.storage.0 matches 144.. if data storage mechanization:temp obj{fluid_type:"molten_uranium_e"} run function mechanization:nuclear/blocks/centrifuge/recipes/m.output_enrichment with storage mechanization:temp obj

# cleanup
execute store result block ~ ~ ~ Items[{Slot:0b}].Count byte 1 run scoreboard players get #count.0 mechanization.data
execute store result block ~ ~ ~ Items[{Slot:9b}].Count byte 1 run scoreboard players get #count.1 mechanization.data
execute store result block ~ ~ ~ Items[{Slot:18b}].Count byte 1 run scoreboard players get #count.2 mechanization.data
execute if score @s fluid.storage.0 matches 0 run data modify entity @s item.components."minecraft:custom_data".fluids[0] set value {}
execute if score @s fluid.storage.1 matches 0 run data modify entity @s item.components."minecraft:custom_data".fluids[1] set value {}
execute if score @s fluid.storage.2 matches 0 run data modify entity @s item.components."minecraft:custom_data".fluids[2] set value {}
