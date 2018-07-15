scoreboard players set in_1 mech_data 1
execute if block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:stone"}]} run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:stone_bricks",Count:1b}}
execute if block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:stone"}]} run function mechanization:assembly/machines/compressor/remove_items
execute if block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:end_stone"}]} run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:end_stone_bricks",Count:1b}}
execute if block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:end_stone"}]} run function mechanization:assembly/machines/compressor/remove_items
execute if block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:diorite"}]} run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:polished_diorite",Count:1b}}
execute if block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:diorite"}]} run function mechanization:assembly/machines/compressor/remove_items
execute if block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:granite"}]} run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:polished_granite",Count:1b}}
execute if block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:granite"}]} run function mechanization:assembly/machines/compressor/remove_items
execute if block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:andesite"}]} run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:polished_andesite",Count:1b}}
execute if block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:andesite"}]} run function mechanization:assembly/machines/compressor/remove_items


scoreboard players set in_1 mech_data 4
execute if score out_0 mech_data matches 4.. if block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:prismarine_shard"}]} run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:prismarine",Count:4b}}
execute if score out_0 mech_data matches 4.. if block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:prismarine_shard"}]} run function mechanization:assembly/machines/compressor/remove_items
execute if score out_0 mech_data matches 4.. if block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:sand"}]} run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:sandstone",Count:4b}}
execute if score out_0 mech_data matches 4.. if block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:sand"}]} run function mechanization:assembly/machines/compressor/remove_items
execute if score out_0 mech_data matches 4.. if block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:red_sand"}]} run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:red_sandstone",Count:4b}}
execute if score out_0 mech_data matches 4.. if block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:red_sand"}]} run function mechanization:assembly/machines/compressor/remove_items
execute if score out_0 mech_data matches 4.. if block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:brick"}]} run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:bricks",Count:4b}}
execute if score out_0 mech_data matches 4.. if block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:brick"}]} run function mechanization:assembly/machines/compressor/remove_items
execute if score out_0 mech_data matches 4.. if block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:nether_brick"}]} run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:nether_bricks",Count:4b}}
execute if score out_0 mech_data matches 4.. if block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:nether_brick"}]} run function mechanization:assembly/machines/compressor/remove_items
execute if score out_0 mech_data matches 4.. if block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:magma_cream"}]} run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:magma_block",Count:4b}}
execute if score out_0 mech_data matches 4.. if block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:magma_cream"}]} run function mechanization:assembly/machines/compressor/remove_items
execute if score out_0 mech_data matches 4.. if block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:popped_chorus_fruit"}]} run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:purpur_block",Count:4b}}
execute if score out_0 mech_data matches 4.. if block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:popped_chorus_fruit"}]} run function mechanization:assembly/machines/compressor/remove_items