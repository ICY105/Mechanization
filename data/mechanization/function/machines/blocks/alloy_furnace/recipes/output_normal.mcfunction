
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

# Steel Ingot
scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 0 if score #count.0 mechanization.data matches 2.. if data storage mechanization:temp obj.slot1{id:"minecraft:flint"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 0 if score #count.1 mechanization.data matches 2.. if data storage mechanization:temp obj.slot2{id:"minecraft:flint"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 0 if score #count.2 mechanization.data matches 2.. if data storage mechanization:temp obj.slot3{id:"minecraft:flint"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 1 if score #storage.0 mechanization.data matches 288.. if data storage mechanization:temp obj.tank_1{id:"molten_iron"} run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 1 if score #storage.1 mechanization.data matches 288.. if data storage mechanization:temp obj.tank_2{id:"molten_iron"} run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 2 if score #storage.0 mechanization.data matches 288.. if data storage mechanization:temp obj.tank_1{id:"molten_coal"} run scoreboard players set #success mechanization.data 3
execute if score #success mechanization.data matches 2 if score #storage.1 mechanization.data matches 288.. if data storage mechanization:temp obj.tank_2{id:"molten_coal"} run scoreboard players set #success mechanization.data 3
execute if score #success mechanization.data matches 3 if score #storage.2 mechanization.data matches 1.. unless data storage mechanization:temp obj.tank_3{id:"molten_steel"} run scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 3 if score #storage.2 mechanization.data matches 3857.. run scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 3 run function mechanization:machines/blocks/alloy_furnace/recipes/steel

# Structural Ingot
scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 0 if score #count.0 mechanization.data matches 4.. if data storage mechanization:temp obj.slot1{id:"minecraft:lapis_lazuli"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 0 if score #count.1 mechanization.data matches 4.. if data storage mechanization:temp obj.slot2{id:"minecraft:lapis_lazuli"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 0 if score #count.2 mechanization.data matches 4.. if data storage mechanization:temp obj.slot3{id:"minecraft:lapis_lazuli"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 1 if score #storage.0 mechanization.data matches 288.. if data storage mechanization:temp obj.tank_1{id:"molten_tin"} run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 1 if score #storage.1 mechanization.data matches 288.. if data storage mechanization:temp obj.tank_2{id:"molten_tin"} run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 2 if score #storage.0 mechanization.data matches 288.. if data storage mechanization:temp obj.tank_1{id:"molten_quartz"} run scoreboard players set #success mechanization.data 3
execute if score #success mechanization.data matches 2 if score #storage.1 mechanization.data matches 288.. if data storage mechanization:temp obj.tank_2{id:"molten_quartz"} run scoreboard players set #success mechanization.data 3
execute if score #success mechanization.data matches 3 if score #storage.2 mechanization.data matches 1.. unless data storage mechanization:temp obj.tank_3{id:"molten_structural_alloy"} run scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 3 if score #storage.2 mechanization.data matches 3857.. run scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 3 run function mechanization:machines/blocks/alloy_furnace/recipes/structural_alloy

# Conductive Ingot
scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 0 if score #count.0 mechanization.data matches 8.. if data storage mechanization:temp obj.slot1{id:"minecraft:redstone"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 0 if score #count.1 mechanization.data matches 8.. if data storage mechanization:temp obj.slot2{id:"minecraft:redstone"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 0 if score #count.2 mechanization.data matches 8.. if data storage mechanization:temp obj.slot3{id:"minecraft:redstone"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 1 if score #storage.0 mechanization.data matches 576.. if data storage mechanization:temp obj.tank_1{id:"molten_copper"} run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 1 if score #storage.1 mechanization.data matches 576.. if data storage mechanization:temp obj.tank_2{id:"molten_copper"} run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 2 if score #storage.0 mechanization.data matches 288.. if data storage mechanization:temp obj.tank_1{id:"molten_gold"} run scoreboard players set #success mechanization.data 3
execute if score #success mechanization.data matches 2 if score #storage.1 mechanization.data matches 288.. if data storage mechanization:temp obj.tank_2{id:"molten_gold"} run scoreboard players set #success mechanization.data 3
execute if score #success mechanization.data matches 3 if score #storage.2 mechanization.data matches 1.. unless data storage mechanization:temp obj.tank_3{id:"molten_conductive_alloy"} run scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 3 if score #storage.2 mechanization.data matches 3857.. run scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 3 run function mechanization:machines/blocks/alloy_furnace/recipes/conductive_alloy

# Crystal Composite
scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 0 if score #count.0 mechanization.data matches 8.. if data storage mechanization:temp obj.slot1{id:"minecraft:amethyst_shard"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 0 if score #count.1 mechanization.data matches 8.. if data storage mechanization:temp obj.slot2{id:"minecraft:amethyst_shard"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 0 if score #count.2 mechanization.data matches 8.. if data storage mechanization:temp obj.slot3{id:"minecraft:amethyst_shard"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 1 if score #storage.0 mechanization.data matches 144.. if data storage mechanization:temp obj.tank_1{id:"molten_diamond"} run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 1 if score #storage.1 mechanization.data matches 144.. if data storage mechanization:temp obj.tank_2{id:"molten_diamond"} run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 2 if score #storage.0 mechanization.data matches 144.. if data storage mechanization:temp obj.tank_1{id:"molten_emerald"} run scoreboard players set #success mechanization.data 3
execute if score #success mechanization.data matches 2 if score #storage.1 mechanization.data matches 144.. if data storage mechanization:temp obj.tank_2{id:"molten_emerald"} run scoreboard players set #success mechanization.data 3
execute if score #success mechanization.data matches 3 if score #storage.2 mechanization.data matches 1.. unless data storage mechanization:temp obj.tank_3{id:"molten_crystal_composite"} run scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 3 if score #storage.2 mechanization.data matches 3929.. run scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 3 run function mechanization:machines/blocks/alloy_furnace/recipes/crystal_composite


# cleanup
item modify block ~ ~ ~ container.0 {"function":"minecraft:set_count","count":{"type":"minecraft:score","target":{"type":"minecraft:fixed","name":"#count.0"},"score":"mechanization.data"}}
item modify block ~ ~ ~ container.9 {"function":"minecraft:set_count","count":{"type":"minecraft:score","target":{"type":"minecraft:fixed","name":"#count.1"},"score":"mechanization.data"}}
item modify block ~ ~ ~ container.18 {"function":"minecraft:set_count","count":{"type":"minecraft:score","target":{"type":"minecraft:fixed","name":"#count.2"},"score":"mechanization.data"}}
scoreboard players operation @s fluid.storage.0 = #storage.0 mechanization.data
scoreboard players operation @s fluid.storage.1 = #storage.1 mechanization.data
scoreboard players operation @s fluid.storage.2 = #storage.2 mechanization.data
execute if score @s fluid.storage.0 matches 0 run data modify entity @s item.components."minecraft:custom_data".fluids[0] set value {}
execute if score @s fluid.storage.1 matches 0 run data modify entity @s item.components."minecraft:custom_data".fluids[1] set value {}
execute if score @s fluid.storage.2 matches 0 run data modify entity @s item.components."minecraft:custom_data".fluids[2] set value {}
