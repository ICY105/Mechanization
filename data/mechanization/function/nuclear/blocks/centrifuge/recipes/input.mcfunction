
# init
data modify storage mechanization:temp obj set value {slot1:{},slot2:{},slot3:{},tank_1:{},tank_2:{},tank_3:{}}
data modify storage mechanization:temp obj.slot1 set from block ~ ~ ~ Items[{Slot:0b}]
data modify storage mechanization:temp obj.slot2 set from block ~ ~ ~ Items[{Slot:9b}]
data modify storage mechanization:temp obj.slot3 set from block ~ ~ ~ Items[{Slot:18b}]
data modify storage mechanization:temp obj.tank_1 set from entity @s item.tag.fluids[0]
data modify storage mechanization:temp obj.tank_2 set from entity @s item.tag.fluids[1]
data modify storage mechanization:temp obj.tank_3 set from entity @s item.tag.fluids[2]
execute store result score #count.0 mechanization.data run data get storage mechanization:temp obj.slot1.Count
execute store result score #count.1 mechanization.data run data get storage mechanization:temp obj.slot2.Count
execute store result score #count.2 mechanization.data run data get storage mechanization:temp obj.slot3.Count

# Spent Fuel
scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 0 if data storage mechanization:temp obj.slot1.tag.mechanization{id:"spent_fuel_rod"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 0 if data storage mechanization:temp obj.slot2.tag.mechanization{id:"spent_fuel_rod"} run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 0 if data storage mechanization:temp obj.slot3.tag.mechanization{id:"spent_fuel_rod"} run scoreboard players set #success mechanization.data 3
execute if score #success mechanization.data matches 1 store result score #enrichment mechanization.data run data get storage mechanization:temp obj.slot1.tag.mechanization.enrichment
execute if score #success mechanization.data matches 2 store result score #enrichment mechanization.data run data get storage mechanization:temp obj.slot2.tag.mechanization.enrichment
execute if score #success mechanization.data matches 3 store result score #enrichment mechanization.data run data get storage mechanization:temp obj.slot3.tag.mechanization.enrichment
execute if score #success mechanization.data matches 1.. run scoreboard players operation #enrichment mechanization.data *= #cons.36 mechanization.data
execute if score #success mechanization.data matches 1.. run scoreboard players set #max_out mechanization.data 4000
execute if score #success mechanization.data matches 1.. run scoreboard players operation #max_out mechanization.data -= #enrichment mechanization.data
execute if score #success mechanization.data matches 1.. if score @s fluid.storage.1 matches 1.. unless data storage mechanization:temp obj.tank_2{id:"molten_plutonium"} run scoreboard players set #success mechanization.data -1
execute if score #success mechanization.data matches 1.. if score @s fluid.storage.1 > #max_out mechanization.data run scoreboard players set #success mechanization.data -1
execute if score #success mechanization.data matches 1.. run scoreboard players operation @s mechanization.time = #nuclear.cf.centrifuge.speed mechanization.data
execute if score #success mechanization.data matches 1.. run scoreboard players operation @s mechanization.time *= #cons.5 mechanization.data

# Heavy Water
scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 0 if score @s fluid.storage.0 matches 1000.. if data storage mechanization:temp obj.tank_1{id:"water"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 1 if score @s fluid.storage.1 matches 1.. unless data storage mechanization:temp obj.tank_2{id:"water"} run scoreboard players set #success mechanization.data -1
execute if score #success mechanization.data matches 1 if score @s fluid.storage.2 matches 1.. unless data storage mechanization:temp obj.tank_3{id:"heavy_water"} run scoreboard players set #success mechanization.data -1
execute if score #success mechanization.data matches 1 if score @s fluid.storage.1 matches 3051.. run scoreboard players set #success mechanization.data -1
execute if score #success mechanization.data matches 1 if score @s fluid.storage.2 matches 3951.. run scoreboard players set #success mechanization.data -1
execute if score #success mechanization.data matches 1 run scoreboard players operation @s mechanization.time = #nuclear.cf.centrifuge.speed mechanization.data

# Uranium Enrichment 2%
scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 0 if score @s fluid.storage.0 matches 144.. if data storage mechanization:temp obj.tank_1{id:"molten_uranium"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 1 if score @s fluid.storage.1 matches 1.. unless data storage mechanization:temp obj.tank_2{id:"molten_depleted_uranium"} run scoreboard players set #success mechanization.data -1
execute if score #success mechanization.data matches 1 if score @s fluid.storage.2 matches 1.. unless data storage mechanization:temp obj.tank_3{id:"molten_uranium_e2"} run scoreboard players set #success mechanization.data -1
execute if score #success mechanization.data matches 1 if score @s fluid.storage.1 matches 3927.. run scoreboard players set #success mechanization.data -1
execute if score #success mechanization.data matches 1 if score @s fluid.storage.2 matches 3927.. run scoreboard players set #success mechanization.data -1
execute if score #success mechanization.data matches 1 run scoreboard players operation @s mechanization.time = #nuclear.cf.centrifuge.speed mechanization.data

# Generalized Enrichment
execute if score @s fluid.storage.0 matches 144.. run data modify storage mechanization:temp obj.fluid_type set value ""
execute if score @s fluid.storage.0 matches 144.. run data modify storage mechanization:temp obj.fluid_type set string storage mechanization:temp obj.tank_1.id 0 16
execute if score @s fluid.storage.0 matches 144.. run data modify storage mechanization:temp obj.fluid_enrichment set value ""
execute if score @s fluid.storage.0 matches 144.. run data modify storage mechanization:temp obj.fluid_enrichment set string storage mechanization:temp obj.tank_1.id 16
execute if score @s fluid.storage.0 matches 144.. if data storage mechanization:temp obj{fluid_type:"molten_uranium_e"} run function mechanization:nuclear/blocks/centrifuge/recipes/m.input_enrichment with storage mechanization:temp obj

# calculate needed power
scoreboard players operation #power mechanization.data = #nuclear.cf.centrifuge.power mechanization.data
scoreboard players operation #power mechanization.data *= @s mechanization.time
execute if score @s energy.storage < #power mechanization.data run scoreboard players set @s mechanization.time 0
