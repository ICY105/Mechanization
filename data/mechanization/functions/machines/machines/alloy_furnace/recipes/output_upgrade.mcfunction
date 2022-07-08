
# init
data modify storage mechanization:temp obj set value {slot1:{},slot2:{},slot3:{},tank_1:{},tank_2:{},tank_3:{}}
data modify storage mechanization:temp obj.slot1 set from block ~ ~ ~ Items[{Slot:0b}]
data modify storage mechanization:temp obj.slot2 set from block ~ ~ ~ Items[{Slot:9b}]
data modify storage mechanization:temp obj.slot3 set from block ~ ~ ~ Items[{Slot:18b}]
data modify storage mechanization:temp obj.tank_1 set from entity @s Item.tag.tank_1
data modify storage mechanization:temp obj.tank_2 set from entity @s Item.tag.tank_2
data modify storage mechanization:temp obj.tank_3 set from entity @s Item.tag.tank_3
execute store result score #count.0 mechanization.data run data get storage mechanization:temp obj.slot1.Count
execute store result score #count.1 mechanization.data run data get storage mechanization:temp obj.slot2.Count
execute store result score #count.2 mechanization.data run data get storage mechanization:temp obj.slot3.Count
scoreboard players operation #storage.0 mechanization.data = @s mechanization.fluid.0
scoreboard players operation #storage.1 mechanization.data = @s mechanization.fluid.1
scoreboard players operation #storage.2 mechanization.data = @s mechanization.fluid.2

# Steel Ingot
scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 0 if score #count.0 mechanization.data matches 2.. if data storage mechanization:temp obj.slot1{id:"minecraft:flint"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 0 if score #count.1 mechanization.data matches 2.. if data storage mechanization:temp obj.slot2{id:"minecraft:flint"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 0 if score #count.2 mechanization.data matches 2.. if data storage mechanization:temp obj.slot3{id:"minecraft:flint"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 1 if score #storage.0 mechanization.data matches 288.. if data storage mechanization:temp obj.tank_1.tag.mechanization.liquid{id:"molten_iron"} run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 1 if score #storage.1 mechanization.data matches 288.. if data storage mechanization:temp obj.tank_2.tag.mechanization.liquid{id:"molten_iron"} run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 2 if score #storage.0 mechanization.data matches 288.. if data storage mechanization:temp obj.tank_1.tag.mechanization.liquid{id:"molten_coal"} run scoreboard players set #success mechanization.data 3
execute if score #success mechanization.data matches 2 if score #storage.1 mechanization.data matches 288.. if data storage mechanization:temp obj.tank_2.tag.mechanization.liquid{id:"molten_coal"} run scoreboard players set #success mechanization.data 3
execute if score #success mechanization.data matches 3 if score #storage.2 mechanization.data matches 1.. unless data storage mechanization:temp obj.tank_3.tag.mechanization.liquid{id:"molten_steel"} run scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 3 if score #storage.2 mechanization.data matches 3857.. run scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 3 run function mechanization:machines/machines/alloy_furnace/recipes/steel

# Structural Ingot
scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 0 if score #count.0 mechanization.data matches 4.. if data storage mechanization:temp obj.slot1{id:"minecraft:lapis_lazuli"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 0 if score #count.1 mechanization.data matches 4.. if data storage mechanization:temp obj.slot2{id:"minecraft:lapis_lazuli"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 0 if score #count.2 mechanization.data matches 4.. if data storage mechanization:temp obj.slot3{id:"minecraft:lapis_lazuli"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 1 if score #storage.0 mechanization.data matches 288.. if data storage mechanization:temp obj.tank_1.tag.mechanization.liquid{id:"molten_tin"} run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 1 if score #storage.1 mechanization.data matches 288.. if data storage mechanization:temp obj.tank_2.tag.mechanization.liquid{id:"molten_tin"} run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 2 if score #storage.0 mechanization.data matches 288.. if data storage mechanization:temp obj.tank_1.tag.mechanization.liquid{id:"molten_quartz"} run scoreboard players set #success mechanization.data 3
execute if score #success mechanization.data matches 2 if score #storage.1 mechanization.data matches 288.. if data storage mechanization:temp obj.tank_2.tag.mechanization.liquid{id:"molten_quartz"} run scoreboard players set #success mechanization.data 3
execute if score #success mechanization.data matches 3 if score #storage.2 mechanization.data matches 1.. unless data storage mechanization:temp obj.tank_3.tag.mechanization.liquid{id:"molten_structural_alloy"} run scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 3 if score #storage.2 mechanization.data matches 3857.. run scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 3 run function mechanization:machines/machines/alloy_furnace/recipes/structural_alloy

# Conductive Ingot
scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 0 if score #count.0 mechanization.data matches 16.. if data storage mechanization:temp obj.slot1{id:"minecraft:redstone"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 0 if score #count.1 mechanization.data matches 16.. if data storage mechanization:temp obj.slot2{id:"minecraft:redstone"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 0 if score #count.2 mechanization.data matches 16.. if data storage mechanization:temp obj.slot3{id:"minecraft:redstone"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 1 if score #storage.0 mechanization.data matches 576.. if data storage mechanization:temp obj.tank_1.tag.mechanization.liquid{id:"molten_copper"} run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 1 if score #storage.1 mechanization.data matches 576.. if data storage mechanization:temp obj.tank_2.tag.mechanization.liquid{id:"molten_copper"} run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 2 if score #storage.0 mechanization.data matches 288.. if data storage mechanization:temp obj.tank_1.tag.mechanization.liquid{id:"molten_gold"} run scoreboard players set #success mechanization.data 3
execute if score #success mechanization.data matches 2 if score #storage.1 mechanization.data matches 288.. if data storage mechanization:temp obj.tank_2.tag.mechanization.liquid{id:"molten_gold"} run scoreboard players set #success mechanization.data 3
execute if score #success mechanization.data matches 3 if score #storage.2 mechanization.data matches 1.. unless data storage mechanization:temp obj.tank_3.tag.mechanization.liquid{id:"molten_conductive_alloy"} run scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 3 if score #storage.2 mechanization.data matches 3857.. run scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 3 run function mechanization:machines/machines/alloy_furnace/recipes/conductive_alloy

# Crystal Composite
scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 0 if score #count.0 mechanization.data matches 2.. if data storage mechanization:temp obj.slot1{id:"minecraft:amethyst_shard"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 0 if score #count.1 mechanization.data matches 2.. if data storage mechanization:temp obj.slot2{id:"minecraft:amethyst_shard"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 0 if score #count.2 mechanization.data matches 2.. if data storage mechanization:temp obj.slot3{id:"minecraft:amethyst_shard"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 1 if score #storage.0 mechanization.data matches 144.. if data storage mechanization:temp obj.tank_1.tag.mechanization.liquid{id:"molten_diamond"} run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 1 if score #storage.1 mechanization.data matches 144.. if data storage mechanization:temp obj.tank_2.tag.mechanization.liquid{id:"molten_diamond"} run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 2 if score #storage.0 mechanization.data matches 144.. if data storage mechanization:temp obj.tank_1.tag.mechanization.liquid{id:"molten_emerald"} run scoreboard players set #success mechanization.data 3
execute if score #success mechanization.data matches 2 if score #storage.1 mechanization.data matches 144.. if data storage mechanization:temp obj.tank_2.tag.mechanization.liquid{id:"molten_emerald"} run scoreboard players set #success mechanization.data 3
execute if score #success mechanization.data matches 3 if score #storage.2 mechanization.data matches 1.. unless data storage mechanization:temp obj.tank_3.tag.mechanization.liquid{id:"molten_crystal_composite"} run scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 3 if score #storage.2 mechanization.data matches 3929.. run scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 3 run function mechanization:machines/machines/alloy_furnace/recipes/crystal_composite


# Titanium Steel Ingot
scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 0 if score #count.0 mechanization.data matches 4.. if data storage mechanization:temp obj.slot1{id:"minecraft:blaze_rod"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 0 if score #count.1 mechanization.data matches 4.. if data storage mechanization:temp obj.slot2{id:"minecraft:blaze_rod"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 0 if score #count.2 mechanization.data matches 4.. if data storage mechanization:temp obj.slot3{id:"minecraft:blaze_rod"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 1 if score #storage.0 mechanization.data matches 288.. if data storage mechanization:temp obj.tank_1.tag.mechanization.liquid{id:"molten_steel"} run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 1 if score #storage.1 mechanization.data matches 288.. if data storage mechanization:temp obj.tank_2.tag.mechanization.liquid{id:"molten_steel"} run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 2 if score #storage.0 mechanization.data matches 144.. if data storage mechanization:temp obj.tank_1.tag.mechanization.liquid{id:"molten_titanium"} run scoreboard players set #success mechanization.data 3
execute if score #success mechanization.data matches 2 if score #storage.1 mechanization.data matches 144.. if data storage mechanization:temp obj.tank_2.tag.mechanization.liquid{id:"molten_titanium"} run scoreboard players set #success mechanization.data 3
execute if score #success mechanization.data matches 3 if score #storage.2 mechanization.data matches 1.. unless data storage mechanization:temp obj.tank_3.tag.mechanization.liquid{id:"molten_titanium_steel"} run scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 3 if score #storage.2 mechanization.data matches 3857.. run scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 3 run function mechanization:machines/machines/alloy_furnace/recipes/titanium_steel

# Reinforced Structural Ingot
scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 0 if score #count.0 mechanization.data matches 4.. if data storage mechanization:temp obj.slot1{id:"minecraft:prismarine_crystals"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 0 if score #count.1 mechanization.data matches 4.. if data storage mechanization:temp obj.slot2{id:"minecraft:prismarine_crystals"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 0 if score #count.2 mechanization.data matches 4.. if data storage mechanization:temp obj.slot3{id:"minecraft:prismarine_crystals"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 1 if score #storage.0 mechanization.data matches 288.. if data storage mechanization:temp obj.tank_1.tag.mechanization.liquid{id:"molten_structural_alloy"} run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 1 if score #storage.1 mechanization.data matches 288.. if data storage mechanization:temp obj.tank_2.tag.mechanization.liquid{id:"molten_structural_alloy"} run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 2 if score #storage.0 mechanization.data matches 144.. if data storage mechanization:temp obj.tank_1.tag.mechanization.liquid{id:"molten_titanium"} run scoreboard players set #success mechanization.data 3
execute if score #success mechanization.data matches 2 if score #storage.1 mechanization.data matches 144.. if data storage mechanization:temp obj.tank_2.tag.mechanization.liquid{id:"molten_titanium"} run scoreboard players set #success mechanization.data 3
execute if score #success mechanization.data matches 3 if score #storage.2 mechanization.data matches 1.. unless data storage mechanization:temp obj.tank_3.tag.mechanization.liquid{id:"molten_reinforced_structural_alloy"} run scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 3 if score #storage.2 mechanization.data matches 3857.. run scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 3 run function mechanization:machines/machines/alloy_furnace/recipes/reinforced_structural_alloy

# Super Conductive Ingot
scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 0 if score #count.0 mechanization.data matches 4.. if data storage mechanization:temp obj.slot1{id:"minecraft:ender_pearl"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 0 if score #count.1 mechanization.data matches 4.. if data storage mechanization:temp obj.slot2{id:"minecraft:ender_pearl"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 0 if score #count.2 mechanization.data matches 4.. if data storage mechanization:temp obj.slot3{id:"minecraft:ender_pearl"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 1 if score #storage.0 mechanization.data matches 288.. if data storage mechanization:temp obj.tank_1.tag.mechanization.liquid{id:"molten_conductive_alloy"} run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 1 if score #storage.1 mechanization.data matches 288.. if data storage mechanization:temp obj.tank_2.tag.mechanization.liquid{id:"molten_conductive_alloy"} run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 2 if score #storage.0 mechanization.data matches 144.. if data storage mechanization:temp obj.tank_1.tag.mechanization.liquid{id:"molten_titanium"} run scoreboard players set #success mechanization.data 3
execute if score #success mechanization.data matches 2 if score #storage.1 mechanization.data matches 144.. if data storage mechanization:temp obj.tank_2.tag.mechanization.liquid{id:"molten_titanium"} run scoreboard players set #success mechanization.data 3
execute if score #success mechanization.data matches 3 if score #storage.2 mechanization.data matches 1.. unless data storage mechanization:temp obj.tank_3.tag.mechanization.liquid{id:"molten_super_conductive_alloy"} run scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 3 if score #storage.2 mechanization.data matches 3857.. run scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 3 run function mechanization:machines/machines/alloy_furnace/recipes/super_conductive_alloy

# Nether Ingot
scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 0 if score #count.0 mechanization.data matches 1.. if data storage mechanization:temp obj.slot1{id:"minecraft:nether_star"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 0 if score #count.1 mechanization.data matches 1.. if data storage mechanization:temp obj.slot2{id:"minecraft:nether_star"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 0 if score #count.2 mechanization.data matches 1.. if data storage mechanization:temp obj.slot3{id:"minecraft:nether_star"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 1 if score #storage.0 mechanization.data matches 4000.. if data storage mechanization:temp obj.tank_1.tag.mechanization.liquid{id:"lava"} run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 1 if score #storage.1 mechanization.data matches 4000.. if data storage mechanization:temp obj.tank_2.tag.mechanization.liquid{id:"lava"} run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 2 if score #storage.0 mechanization.data matches 576.. if data storage mechanization:temp obj.tank_1.tag.mechanization.liquid{id:"molten_titanium"} run scoreboard players set #success mechanization.data 3
execute if score #success mechanization.data matches 2 if score #storage.1 mechanization.data matches 576.. if data storage mechanization:temp obj.tank_2.tag.mechanization.liquid{id:"molten_titanium"} run scoreboard players set #success mechanization.data 3
execute if score #success mechanization.data matches 3 if score #storage.2 mechanization.data matches 1.. unless data storage mechanization:temp obj.tank_3.tag.mechanization.liquid{id:"molten_nether_alloy"} run scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 3 if score #storage.2 mechanization.data matches 3425.. run scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 3 run function mechanization:machines/machines/alloy_furnace/recipes/nether_alloy

# Ender Ingot
scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 0 if score #count.0 mechanization.data matches 32.. if data storage mechanization:temp obj.slot1{id:"minecraft:dragon_breath"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 0 if score #count.1 mechanization.data matches 32.. if data storage mechanization:temp obj.slot2{id:"minecraft:dragon_breath"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 0 if score #count.2 mechanization.data matches 32.. if data storage mechanization:temp obj.slot3{id:"minecraft:dragon_breath"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 1 if score #count.0 mechanization.data matches 32.. if data storage mechanization:temp obj.slot1{id:"minecraft:chorus_fruit"} run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 1 if score #count.1 mechanization.data matches 32.. if data storage mechanization:temp obj.slot2{id:"minecraft:chorus_fruit"} run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 1 if score #count.2 mechanization.data matches 32.. if data storage mechanization:temp obj.slot3{id:"minecraft:chorus_fruit"} run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 2 if score #storage.0 mechanization.data matches 576.. if data storage mechanization:temp obj.tank_1.tag.mechanization.liquid{id:"molten_titanium"} run scoreboard players set #success mechanization.data 3
execute if score #success mechanization.data matches 2 if score #storage.1 mechanization.data matches 576.. if data storage mechanization:temp obj.tank_2.tag.mechanization.liquid{id:"molten_titanium"} run scoreboard players set #success mechanization.data 3
execute if score #success mechanization.data matches 3 if score #storage.2 mechanization.data matches 1.. unless data storage mechanization:temp obj.tank_3.tag.mechanization.liquid{id:"molten_ender_alloy"} run scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 3 if score #storage.2 mechanization.data matches 3425.. run scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 3 run function mechanization:machines/machines/alloy_furnace/recipes/ender_alloy

# Netherite
scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 0 if score #count.0 mechanization.data matches 4.. if data storage mechanization:temp obj.slot1{id:"minecraft:netherite_scrap"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 0 if score #count.1 mechanization.data matches 4.. if data storage mechanization:temp obj.slot2{id:"minecraft:netherite_scrap"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 0 if score #count.2 mechanization.data matches 4.. if data storage mechanization:temp obj.slot3{id:"minecraft:netherite_scrap"} run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 1 if score #storage.0 mechanization.data matches 576.. if data storage mechanization:temp obj.tank_1.tag.mechanization.liquid{id:"molten_gold"} run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 1 if score #storage.1 mechanization.data matches 576.. if data storage mechanization:temp obj.tank_2.tag.mechanization.liquid{id:"molten_gold"} run scoreboard players set #success mechanization.data 2
execute if score #success mechanization.data matches 2 if score #storage.2 mechanization.data matches 1.. unless data storage mechanization:temp obj.tank_3.tag.mechanization.liquid{id:"molten_netherite"} run scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 2 if score #storage.2 mechanization.data matches 3857.. run scoreboard players set #success mechanization.data 0
execute if score #success mechanization.data matches 2 run function mechanization:machines/machines/alloy_furnace/recipes/netherite


# cleanup
execute store result block ~ ~ ~ Items[{Slot:0b}].Count byte 1 run scoreboard players get #count.0 mechanization.data
execute store result block ~ ~ ~ Items[{Slot:9b}].Count byte 1 run scoreboard players get #count.1 mechanization.data
execute store result block ~ ~ ~ Items[{Slot:18b}].Count byte 1 run scoreboard players get #count.2 mechanization.data
scoreboard players operation @s mechanization.fluid.0 = #storage.0 mechanization.data
scoreboard players operation @s mechanization.fluid.1 = #storage.1 mechanization.data
scoreboard players operation @s mechanization.fluid.2 = #storage.2 mechanization.data
execute if score @s mechanization.fluid.0 matches 0 run data modify entity @s Item.tag.tank_1 set value {}
execute if score @s mechanization.fluid.1 matches 0 run data modify entity @s Item.tag.tank_2 set value {}
execute if score @s mechanization.fluid.2 matches 0 run data modify entity @s Item.tag.tank_3 set value {}
