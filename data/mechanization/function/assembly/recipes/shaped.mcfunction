
# Compressor
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{ \
    0:[ \
        {Slot: 0b, id: "minecraft:piston"}, \
        {Slot: 1b, id: "minecraft:crafting_table"}, \
        {Slot: 2b, id: "minecraft:piston"} \
    ], 1:[\
        {Slot: 0b, components:{"minecraft:custom_data":{smithed:{dict:{plate:{conductive_alloy: 1b}}}}}}, \
        {Slot: 1b, components:{"minecraft:custom_data":{mechanization:{id: "tier2_machine_frame"}}}}, \
        {Slot: 2b, components:{"minecraft:custom_data":{smithed:{dict:{plate:{conductive_alloy: 1b}}}}}} \
    ], 2:[ \
        {Slot: 0b, id: "minecraft:piston"}, \
        {Slot: 1b, id: "minecraft:iron_block"}, \
        {Slot: 2b, id: "minecraft:piston"} \
    ] \
} run loot replace block ~ ~ ~ container.16 loot mechanization:assembly/compressor

# Decompressor
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{ \
    0:[{Slot:0b, id:"minecraft:piston"},  {Slot:1b, id:"minecraft:crafting_table"}, {Slot:2b, id:"minecraft:piston"}], \
    1:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ plate:{conductive_alloy:1b}} }}}}, {Slot:1b, components:{"minecraft:custom_data":{ mechanization:{id:"tier2_machine_frame"} }}}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ plate:{conductive_alloy:1b}} }}}}], \
    2:[{Slot:0b, id:"minecraft:piston"},  {Slot:1b, id:"minecraft:iron_ingot"}, {Slot:2b, id:"minecraft:piston"}] \
} run loot replace block ~ ~ ~ container.16 loot mechanization:assembly/decompressor

# Fast Hopper
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{0:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{steel:1b}} }}}},  {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{structural_alloy:1b}} }}}}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{steel:1b}} }}}}],  1:[{Slot:0b, id:"minecraft:blaze_powder"}, {Slot:1b, id:"minecraft:hopper"}, {Slot:2b, id:"minecraft:blaze_powder"}], 2:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{steel:1b}} }}}},  {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{structural_alloy:1b}} }}}}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{steel:1b}} }}}} ]} run loot replace block ~ ~ ~ container.16 loot mechanization:assembly/fast_hopper

# Ender Hopper
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{0:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{steel:1b}} }}}},  {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{structural_alloy:1b}} }}}}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{steel:1b}} }}}}],  1:[{Slot:0b, id:"minecraft:ender_eye"}, {Slot:1b, id:"minecraft:hopper"}, {Slot:2b, id:"minecraft:ender_eye"}], 2:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{steel:1b}} }}}},  {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{structural_alloy:1b}} }}}}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{steel:1b}} }}}} ]} run loot replace block ~ ~ ~ container.16 loot mechanization:assembly/ender_hopper

# Item Pipe
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{0:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{steel:1b}} }}}},  {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{structural_alloy:1b}} }}}}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{steel:1b}} }}}}], 1:[], 2:[]} run loot replace block ~ ~ ~ container.16 loot mechanization:assembly/item_pipe_x2

# Item Extractor
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{0:[{Slot:0b, id:"minecraft:air"},  {Slot:1b, components:{"minecraft:custom_data":{ mechanization:{id:"item_pipe"} }}}, {Slot:2b, id:"minecraft:air"}],  1:[{Slot:0b, id:"minecraft:air"}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{conductive_alloy:1b}} }}}}, {Slot:2b, id:"minecraft:air"}], 2:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{steel:1b}} }}}},  {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ gem:{crystal_composite:1b}} }}}}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{steel:1b}} }}}} ]} run loot replace block ~ ~ ~ container.16 loot mechanization:assembly/item_extractor

# Item Inserter
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{0:[{Slot:0b, id:"minecraft:air"},  {Slot:1b, components:{"minecraft:custom_data":{ mechanization:{id:"item_pipe"} }}}, {Slot:2b, id:"minecraft:air"}],  1:[{Slot:0b, id:"minecraft:air"}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{structural_alloy:1b}} }}}}, {Slot:2b, id:"minecraft:air"}], 2:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{steel:1b}} }}}},  {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ gem:{crystal_composite:1b}} }}}}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{steel:1b}} }}}} ]} run loot replace block ~ ~ ~ container.16 loot mechanization:assembly/item_injector

# Item Filter
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{0:[{Slot:0b, id:"minecraft:string"},  {Slot:1b, id:"minecraft:string"}, {Slot:2b, id:"minecraft:string"}],  1:[{Slot:0b, id:"minecraft:string"}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ gear:{iron:1b}} }}}}, {Slot:2b, id:"minecraft:string"}], 2:[{Slot:0b, id:"minecraft:string"},  {Slot:1b, id:"minecraft:string"}, {Slot:2b, id:"minecraft:string"} ]} run loot replace block ~ ~ ~ container.16 loot mechanization:assembly/item_filter

# Unlimited Storage Unit
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{0:[{Slot:0b, id:"minecraft:chest"},  {Slot:1b, id:"minecraft:ender_chest"}, {Slot:2b, id:"minecraft:chest"}],  1:[{Slot:0b, id:"minecraft:chest"}, {Slot:1b, components:{"minecraft:custom_data":{ mechanization:{id:"tier2_machine_frame"} }}}, {Slot:2b, id:"minecraft:chest"}], 2:[{Slot:0b, id:"minecraft:chest"},  {Slot:1b, id:"minecraft:hopper"}, {Slot:2b, id:"minecraft:chest"} ]} run loot replace block ~ ~ ~ container.16 loot mechanization:assembly/unlimited_storage_unit

# MSS Terminal
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{0:[{Slot:0b, id:"minecraft:netherite_ingot"},  {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ gear:{super_conductive_alloy:1b}} }}}}, {Slot:2b, id:"minecraft:netherite_ingot"}],  1:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ plate:{ender_alloy:1b}} }}}}, {Slot:1b, components:{"minecraft:custom_data":{ mechanization:{id:"tier3_machine_frame"} }}}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ plate:{nether_alloy:1b}} }}}}], 2:[{Slot:0b, id:"minecraft:netherite_ingot"},  {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ gear:{crystal_composite:1b}} }}}}, {Slot:2b, id:"minecraft:netherite_ingot"} ]} run loot replace block ~ ~ ~ container.16 loot mechanization:assembly/mss_terminal

# MSS Drive Bay
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{0:[{Slot:0b, id:"minecraft:iron_bars"},  {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ gem:{crystal_composite:1b}} }}}}, {Slot:2b, id:"minecraft:iron_bars"}],  1:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ gear:{conductive_alloy:1b}} }}}}, {Slot:1b, components:{"minecraft:custom_data":{ mechanization:{id:"tier2_machine_frame"} }}}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ gear:{conductive_alloy:1b}} }}}}], 2:[{Slot:0b, id:"minecraft:iron_bars"},  {Slot:1b, id:"minecraft:barrel"}, {Slot:2b, id:"minecraft:iron_bars"} ]} run loot replace block ~ ~ ~ container.16 loot mechanization:assembly/mss_drive_bay

# MSS Storage Drive
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{0:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{titanium_steel:1b}} }}}},  {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{ender_alloy:1b}} }}}}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{titanium_steel:1b}} }}}}],  1:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{super_conductive_alloy:1b}} }}}}, {Slot:1b, components:{"minecraft:custom_data":{ mechanization:{id:"unlimited_storage_unit"} }}}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{super_conductive_alloy:1b}} }}}}], 2:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{titanium_steel:1b}} }}}},  {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{nether_alloy:1b}} }}}}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{titanium_steel:1b}} }}}} ]} run loot replace block ~ ~ ~ container.16 loot mechanization:assembly/mss_storage_drive
