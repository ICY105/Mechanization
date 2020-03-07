
#get count
execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[{Slot:5b}].Count
scoreboard players set temp_1 mech_data 0

# 1-input recipes
scoreboard players set temp_1 mech_data 0
execute if block ~ ~ ~ dropper{Items:[{Slot:5b,id:"minecraft:stone"}]} store success score temp_1 mech_data run summon item ^ ^ ^1 {Tags:["mech_comp_new"],Item:{id:"minecraft:stone_bricks",Count:1b}}
execute if block ~ ~ ~ dropper{Items:[{Slot:5b,id:"minecraft:end_stone"}]} store success score temp_1 mech_data run summon item ^ ^ ^1 {Tags:["mech_comp_new"],Item:{id:"minecraft:end_stone_bricks",Count:1b}}
execute if block ~ ~ ~ dropper{Items:[{Slot:5b,id:"minecraft:diorite"}]} store success score temp_1 mech_data run summon item ^ ^ ^1 {Tags:["mech_comp_new"],Item:{id:"minecraft:polished_diorite",Count:1b}}
execute if block ~ ~ ~ dropper{Items:[{Slot:5b,id:"minecraft:granite"}]} store success score temp_1 mech_data run summon item ^ ^ ^1 {Tags:["mech_comp_new"],Item:{id:"minecraft:polished_granite",Count:1b}}
execute if block ~ ~ ~ dropper{Items:[{Slot:5b,id:"minecraft:andesite"}]} store success score temp_1 mech_data run summon item ^ ^ ^1 {Tags:["mech_comp_new"],Item:{id:"minecraft:polished_andesite",Count:1b}}

execute if score temp_1 mech_data matches 1 run scoreboard players remove temp_0 mech_data 1
execute if score temp_1 mech_data matches 1 run scoreboard players remove @s mech_power 16

# 4-input recipes
scoreboard players set temp_1 mech_data 0
execute if score temp_0 mech_data matches 4.. if block ~ ~ ~ dropper{Items:[{Slot:5b,id:"minecraft:prismarine_shard"}]} run summon item ^ ^ ^1 {Tags:["mech_comp_new"],Item:{id:"minecraft:prismarine",Count:4b}}
execute if score temp_0 mech_data matches 4.. if block ~ ~ ~ dropper{Items:[{Slot:5b,id:"minecraft:sand"}]} run summon item ^ ^ ^1 {Tags:["mech_comp_new"],Item:{id:"minecraft:sandstone",Count:4b}}
execute if score temp_0 mech_data matches 4.. if block ~ ~ ~ dropper{Items:[{Slot:5b,id:"minecraft:red_sand"}]} run summon item ^ ^ ^1 {Tags:["mech_comp_new"],Item:{id:"minecraft:red_sandstone",Count:4b}}
execute if score temp_0 mech_data matches 4.. if block ~ ~ ~ dropper{Items:[{Slot:5b,id:"minecraft:brick"}]} run summon item ^ ^ ^1 {Tags:["mech_comp_new"],Item:{id:"minecraft:bricks",Count:4b}}
execute if score temp_0 mech_data matches 4.. if block ~ ~ ~ dropper{Items:[{Slot:5b,id:"minecraft:nether_brick"}]} run summon item ^ ^ ^1 {Tags:["mech_comp_new"],Item:{id:"minecraft:nether_bricks",Count:4b}}
execute if score temp_0 mech_data matches 4.. if block ~ ~ ~ dropper{Items:[{Slot:5b,id:"minecraft:magma_cream"}]} run summon item ^ ^ ^1 {Tags:["mech_comp_new"],Item:{id:"minecraft:magma_block",Count:4b}}
execute if score temp_0 mech_data matches 4.. if block ~ ~ ~ dropper{Items:[{Slot:5b,id:"minecraft:popped_chorus_fruit"}]} run summon item ^ ^ ^1 {Tags:["mech_comp_new"],Item:{id:"minecraft:purpur_block",Count:4b}}

execute if score temp_1 mech_data matches 1 run scoreboard players remove temp_0 mech_data 4
execute if score temp_1 mech_data matches 1 run scoreboard players remove @s mech_power 16

#store count
execute store result block ~ ~ ~ Items[{Slot:5b}].Count byte 1 run scoreboard players get temp_0 mech_data
