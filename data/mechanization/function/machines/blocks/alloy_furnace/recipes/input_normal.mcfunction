
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
execute if score #success mechanization.data matches 3 run scoreboard players operation @s mechanization.time = #machines.cf.alloy_furnace.speed mechanization.data

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
execute if score #success mechanization.data matches 3 run scoreboard players operation @s mechanization.time = #machines.cf.alloy_furnace.speed mechanization.data

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
execute if score #success mechanization.data matches 3 run scoreboard players operation @s mechanization.time = #machines.cf.alloy_furnace.speed mechanization.data

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
execute if score #success mechanization.data matches 3 run scoreboard players operation @s mechanization.time = #machines.cf.alloy_furnace.speed mechanization.data

### Error Out

# Titanium Steel Ingot
scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 0 if score #count.0 mechanization.data matches 4.. if data storage mechanization:temp obj.slot1{id:"minecraft:blaze_rod"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 0 if score #count.1 mechanization.data matches 4.. if data storage mechanization:temp obj.slot2{id:"minecraft:blaze_rod"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 0 if score #count.2 mechanization.data matches 4.. if data storage mechanization:temp obj.slot3{id:"minecraft:blaze_rod"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 1 if score #storage.0 mechanization.data matches 288.. if data storage mechanization:temp obj.tank_1{id:"molten_steel"} run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 1 if score #storage.1 mechanization.data matches 288.. if data storage mechanization:temp obj.tank_2{id:"molten_steel"} run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 2 if score #storage.0 mechanization.data matches 144.. if data storage mechanization:temp obj.tank_1{id:"molten_titanium"} run scoreboard players set #success mechanization.data 3
execute if score #success mechanization.data matches 2 if score #storage.1 mechanization.data matches 144.. if data storage mechanization:temp obj.tank_2{id:"molten_titanium"} run scoreboard players set #success mechanization.data 3
execute if score #success mechanization.data matches 3 run tag @s add mechanization.errored

# Reinforced Structural Ingot
scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 0 if score #count.0 mechanization.data matches 4.. if data storage mechanization:temp obj.slot1{id:"minecraft:prismarine_crystals"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 0 if score #count.1 mechanization.data matches 4.. if data storage mechanization:temp obj.slot2{id:"minecraft:prismarine_crystals"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 0 if score #count.2 mechanization.data matches 4.. if data storage mechanization:temp obj.slot3{id:"minecraft:prismarine_crystals"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 1 if score #storage.0 mechanization.data matches 288.. if data storage mechanization:temp obj.tank_1{id:"molten_structural_alloy"} run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 1 if score #storage.1 mechanization.data matches 288.. if data storage mechanization:temp obj.tank_2{id:"molten_structural_alloy"} run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 2 if score #storage.0 mechanization.data matches 144.. if data storage mechanization:temp obj.tank_1{id:"molten_titanium"} run scoreboard players set #success mechanization.data 3
execute if score #success mechanization.data matches 2 if score #storage.1 mechanization.data matches 144.. if data storage mechanization:temp obj.tank_2{id:"molten_titanium"} run scoreboard players set #success mechanization.data 3
execute if score #success mechanization.data matches 3 run tag @s add mechanization.errored

# Super Conductive Ingot
scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 0 if score #count.0 mechanization.data matches 4.. if data storage mechanization:temp obj.slot1{id:"minecraft:ender_pearl"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 0 if score #count.1 mechanization.data matches 4.. if data storage mechanization:temp obj.slot2{id:"minecraft:ender_pearl"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 0 if score #count.2 mechanization.data matches 4.. if data storage mechanization:temp obj.slot3{id:"minecraft:ender_pearl"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 1 if score #storage.0 mechanization.data matches 288.. if data storage mechanization:temp obj.tank_1{id:"molten_conductive_alloy"} run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 1 if score #storage.1 mechanization.data matches 288.. if data storage mechanization:temp obj.tank_2{id:"molten_conductive_alloy"} run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 2 if score #storage.0 mechanization.data matches 144.. if data storage mechanization:temp obj.tank_1{id:"molten_titanium"} run scoreboard players set #success mechanization.data 3
execute if score #success mechanization.data matches 2 if score #storage.1 mechanization.data matches 144.. if data storage mechanization:temp obj.tank_2{id:"molten_titanium"} run scoreboard players set #success mechanization.data 3
execute if score #success mechanization.data matches 3 run tag @s add mechanization.errored

# Nether Ingot
scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 0 if score #count.0 mechanization.data matches 1.. if data storage mechanization:temp obj.slot1{id:"minecraft:nether_star"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 0 if score #count.1 mechanization.data matches 1.. if data storage mechanization:temp obj.slot2{id:"minecraft:nether_star"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 0 if score #count.2 mechanization.data matches 1.. if data storage mechanization:temp obj.slot3{id:"minecraft:nether_star"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 1 if score #storage.0 mechanization.data matches 4000.. if data storage mechanization:temp obj.tank_1{id:"lava"} run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 1 if score #storage.1 mechanization.data matches 4000.. if data storage mechanization:temp obj.tank_2{id:"lava"} run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 2 if score #storage.0 mechanization.data matches 576.. if data storage mechanization:temp obj.tank_1{id:"molten_titanium"} run scoreboard players set #success mechanization.data 3
execute if score #success mechanization.data matches 2 if score #storage.1 mechanization.data matches 576.. if data storage mechanization:temp obj.tank_2{id:"molten_titanium"} run scoreboard players set #success mechanization.data 3
execute if score #success mechanization.data matches 3 run tag @s add mechanization.errored

# Ender Ingot
scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 0 if score #count.0 mechanization.data matches 32.. if data storage mechanization:temp obj.slot1{id:"minecraft:dragon_breath"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 0 if score #count.1 mechanization.data matches 32.. if data storage mechanization:temp obj.slot2{id:"minecraft:dragon_breath"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 0 if score #count.2 mechanization.data matches 32.. if data storage mechanization:temp obj.slot3{id:"minecraft:dragon_breath"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 1 if score #count.0 mechanization.data matches 32.. if data storage mechanization:temp obj.slot1{id:"minecraft:chorus_fruit"} run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 1 if score #count.1 mechanization.data matches 32.. if data storage mechanization:temp obj.slot2{id:"minecraft:chorus_fruit"} run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 1 if score #count.2 mechanization.data matches 32.. if data storage mechanization:temp obj.slot3{id:"minecraft:chorus_fruit"} run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 2 if score #storage.0 mechanization.data matches 576.. if data storage mechanization:temp obj.tank_1{id:"molten_titanium"} run scoreboard players set #success mechanization.data 3
execute if score #success mechanization.data matches 2 if score #storage.1 mechanization.data matches 576.. if data storage mechanization:temp obj.tank_2{id:"molten_titanium"} run scoreboard players set #success mechanization.data 3
execute if score #success mechanization.data matches 3 run tag @s add mechanization.errored

# Netherite
scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 0 if score #count.0 mechanization.data matches 4.. if data storage mechanization:temp obj.slot1{id:"minecraft:netherite_scrap"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 0 if score #count.1 mechanization.data matches 4.. if data storage mechanization:temp obj.slot2{id:"minecraft:netherite_scrap"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 0 if score #count.2 mechanization.data matches 4.. if data storage mechanization:temp obj.slot3{id:"minecraft:netherite_scrap"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 1 if score #storage.0 mechanization.data matches 576.. if data storage mechanization:temp obj.tank_1{id:"molten_gold"} run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 1 if score #storage.1 mechanization.data matches 576.. if data storage mechanization:temp obj.tank_2{id:"molten_gold"} run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 2 run tag @s add mechanization.errored

# calculate needed power
scoreboard players operation #count.0 mechanization.data = #machines.cf.alloy_furnace.power mechanization.data
scoreboard players operation #count.0 mechanization.data *= @s mechanization.time
execute if score @s energy.storage < #count.0 mechanization.data run scoreboard players set @s mechanization.time 0
