
# get initial output count
item replace block -30000000 0 3201 container.0 with minecraft:air 1

scoreboard players set #output_count mechanization.data 0
scoreboard players set #ingot mechanization.data 0

execute store result score #input_count mechanization.data run data get block ~ ~ ~ Items[{Slot:0b}].count
execute store result score #output_count mechanization.data run data get block ~ ~ ~ Items[{Slot:2b}].count
execute if score #output_count mechanization.data matches 1.. unless function mechanization:machines/blocks/grinder/verify_input run return fail

# ores
execute if items block ~ ~ ~ container.0 minecraft:coal_ore run item replace block -30000000 0 3201 container.0 with minecraft:coal 2
execute if items block ~ ~ ~ container.0 minecraft:iron_ore run item replace block -30000000 0 3201 container.0 with minecraft:raw_iron 2
execute if items block ~ ~ ~ container.0 minecraft:copper_ore run item replace block -30000000 0 3201 container.0 with minecraft:raw_copper 6
execute if items block ~ ~ ~ container.0 minecraft:gold_ore run item replace block -30000000 0 3201 container.0 with minecraft:raw_gold 2
execute if items block ~ ~ ~ container.0 minecraft:diamond_ore run item replace block -30000000 0 3201 container.0 with minecraft:diamond 2
execute if items block ~ ~ ~ container.0 minecraft:emerald_ore run item replace block -30000000 0 3201 container.0 with minecraft:emerald 2
execute if items block ~ ~ ~ container.0 minecraft:redstone_ore run item replace block -30000000 0 3201 container.0 with minecraft:redstone 6
execute if items block ~ ~ ~ container.0 minecraft:lapis_ore run item replace block -30000000 0 3201 container.0 with minecraft:lapis_lazuli 9

execute if items block ~ ~ ~ container.0 minecraft:deepslate_coal_ore run item replace block -30000000 0 3201 container.0 with minecraft:coal 2
execute if items block ~ ~ ~ container.0 minecraft:deepslate_iron_ore run item replace block -30000000 0 3201 container.0 with minecraft:raw_iron 2
execute if items block ~ ~ ~ container.0 minecraft:deepslate_copper_ore run item replace block -30000000 0 3201 container.0 with minecraft:raw_copper 6
execute if items block ~ ~ ~ container.0 minecraft:deepslate_gold_ore run item replace block -30000000 0 3201 container.0 with minecraft:raw_gold 2
execute if items block ~ ~ ~ container.0 minecraft:deepslate_diamond_ore run item replace block -30000000 0 3201 container.0 with minecraft:diamond 2
execute if items block ~ ~ ~ container.0 minecraft:deepslate_emerald_ore run item replace block -30000000 0 3201 container.0 with minecraft:emerald 2
execute if items block ~ ~ ~ container.0 minecraft:deepslate_redstone_ore run item replace block -30000000 0 3201 container.0 with minecraft:redstone 6
execute if items block ~ ~ ~ container.0 minecraft:deepslate_lapis_ore run item replace block -30000000 0 3201 container.0 with minecraft:lapis_lazuli 9

execute if items block ~ ~ ~ container.0 minecraft:nether_quartz_ore run item replace block -30000000 0 3201 container.0 with minecraft:quartz 2
execute if items block ~ ~ ~ container.0 minecraft:nether_gold_ore run item replace block -30000000 0 3201 container.0 with minecraft:raw_gold 2

execute if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ore:{tin:1b}}}}] run loot replace block -30000000 0 3201 container.0 loot mechanization:base/resources_x2/tin_raw
execute if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ore:{titanium:1b}}}}] run loot replace block -30000000 0 3201 container.0 loot mechanization:base/resources_x2/titanium_raw
execute if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ore:{uranium:1b}}}}] run loot replace block -30000000 0 3201 container.0 loot mechanization:base/resources_x2/uranium_raw

# ingots
execute if score #input_count mechanization.data matches 2.. if items block ~ ~ ~ container.0 minecraft:iron_ingot store success score #ingot mechanization.data run item replace block -30000000 0 3201 container.0 with minecraft:raw_iron 1
execute if score #input_count mechanization.data matches 2.. if items block ~ ~ ~ container.0 minecraft:gold_ingot store success score #ingot mechanization.data run item replace block -30000000 0 3201 container.0 with minecraft:raw_gold 1
execute if score #input_count mechanization.data matches 2.. if items block ~ ~ ~ container.0 minecraft:copper_ingot store success score #ingot mechanization.data run item replace block -30000000 0 3201 container.0 with minecraft:raw_copper 1

execute if score #input_count mechanization.data matches 2.. if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ingot:{tin:1b}}}}] store success score #ingot mechanization.data run loot replace block -30000000 0 3201 container.0 loot mechanization:base/tin_raw
execute if score #input_count mechanization.data matches 2.. if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ingot:{titanium:1b}}}}] store success score #ingot mechanization.data run loot replace block -30000000 0 3201 container.0 loot mechanization:base/titanium_raw
execute if score #input_count mechanization.data matches 2.. if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ingot:{uranium:1b}}}}] store success score #ingot mechanization.data run loot replace block -30000000 0 3201 container.0 loot mechanization:base/uranium_raw
execute if score #input_count mechanization.data matches 2.. if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ingot:{steel:1b}}}}] store success score #ingot mechanization.data run loot replace block -30000000 0 3201 container.0 loot mechanization:base/steel_raw
execute if score #input_count mechanization.data matches 2.. if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ingot:{structural_alloy:1b}}}}] store success score #ingot mechanization.data run loot replace block -30000000 0 3201 container.0 loot mechanization:base/structural_raw
execute if score #input_count mechanization.data matches 2.. if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ingot:{conductive_alloy:1b}}}}] store success score #ingot mechanization.data run loot replace block -30000000 0 3201 container.0 loot mechanization:base/conductive_raw
execute if score #input_count mechanization.data matches 2.. if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ingot:{titanium_steel:1b}}}}] store success score #ingot mechanization.data run loot replace block -30000000 0 3201 container.0 loot mechanization:base/titanium_steel_raw
execute if score #input_count mechanization.data matches 2.. if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ingot:{reinforced_structural_alloy:1b}}}}] store success score #ingot mechanization.data run loot replace block -30000000 0 3201 container.0 loot mechanization:base/reinforced_structural_raw
execute if score #input_count mechanization.data matches 2.. if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ingot:{super_conductive_alloy:1b}}}}] store success score #ingot mechanization.data run loot replace block -30000000 0 3201 container.0 loot mechanization:base/super_conductive_raw
execute if score #input_count mechanization.data matches 2.. if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ingot:{nether_alloy:1b}}}}] store success score #ingot mechanization.data run loot replace block -30000000 0 3201 container.0 loot mechanization:base/nether_alloy_raw
execute if score #input_count mechanization.data matches 2.. if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ingot:{ender_alloy:1b}}}}] store success score #ingot mechanization.data run loot replace block -30000000 0 3201 container.0 loot mechanization:base/ender_alloy_raw
execute if score #input_count mechanization.data matches 2.. if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ingot:{plutonium:1b}}}}] store success score #ingot mechanization.data run loot replace block -30000000 0 3201 container.0 loot mechanization:base/plutonium_raw

# logs
execute if items block ~ ~ ~ container.0 minecraft:oak_log run item replace block -30000000 0 3201 container.0 with minecraft:oak_planks 6
execute if items block ~ ~ ~ container.0 minecraft:birch_log run item replace block -30000000 0 3201 container.0 with minecraft:birch_planks 6
execute if items block ~ ~ ~ container.0 minecraft:spruce_log run item replace block -30000000 0 3201 container.0 with minecraft:spruce_planks 6
execute if items block ~ ~ ~ container.0 minecraft:jungle_log run item replace block -30000000 0 3201 container.0 with minecraft:jungle_planks 6
execute if items block ~ ~ ~ container.0 minecraft:dark_oak_log run item replace block -30000000 0 3201 container.0 with minecraft:dark_oak_planks 6
execute if items block ~ ~ ~ container.0 minecraft:acacia_log run item replace block -30000000 0 3201 container.0 with minecraft:acacia_planks 6
execute if items block ~ ~ ~ container.0 minecraft:crimson_stem run item replace block -30000000 0 3201 container.0 with minecraft:crimson_planks 6
execute if items block ~ ~ ~ container.0 minecraft:warped_stem run item replace block -30000000 0 3201 container.0 with minecraft:warped_planks 6
execute if items block ~ ~ ~ container.0 minecraft:mangrove_log run item replace block -30000000 0 3201 container.0 with minecraft:warped_planks 6
execute if items block ~ ~ ~ container.0 minecraft:cherry_log run item replace block -30000000 0 3201 container.0 with minecraft:warped_planks 6

execute if items block ~ ~ ~ container.0 minecraft:oak_wood run item replace block -30000000 0 3201 container.0 with minecraft:oak_planks 6
execute if items block ~ ~ ~ container.0 minecraft:birch_wood run item replace block -30000000 0 3201 container.0 with minecraft:birch_planks 6
execute if items block ~ ~ ~ container.0 minecraft:spruce_wood run item replace block -30000000 0 3201 container.0 with minecraft:spruce_planks 6
execute if items block ~ ~ ~ container.0 minecraft:jungle_wood run item replace block -30000000 0 3201 container.0 with minecraft:jungle_planks 6
execute if items block ~ ~ ~ container.0 minecraft:dark_oak_wood run item replace block -30000000 0 3201 container.0 with minecraft:dark_oak_planks 6
execute if items block ~ ~ ~ container.0 minecraft:acacia_wood run item replace block -30000000 0 3201 container.0 with minecraft:acacia_planks 6
execute if items block ~ ~ ~ container.0 minecraft:crimson_hyphae run item replace block -30000000 0 3201 container.0 with minecraft:crimson_planks 6
execute if items block ~ ~ ~ container.0 minecraft:warped_hyphae run item replace block -30000000 0 3201 container.0 with minecraft:warped_planks 6
execute if items block ~ ~ ~ container.0 minecraft:mangrove_wood run item replace block -30000000 0 3201 container.0 with minecraft:warped_planks 6
execute if items block ~ ~ ~ container.0 minecraft:cherry_wood run item replace block -30000000 0 3201 container.0 with minecraft:warped_planks 6

execute if items block ~ ~ ~ container.0 minecraft:stripped_oak_log run item replace block -30000000 0 3201 container.0 with minecraft:oak_planks 6
execute if items block ~ ~ ~ container.0 minecraft:stripped_birch_log run item replace block -30000000 0 3201 container.0 with minecraft:birch_planks 6
execute if items block ~ ~ ~ container.0 minecraft:stripped_spruce_log run item replace block -30000000 0 3201 container.0 with minecraft:spruce_planks 6
execute if items block ~ ~ ~ container.0 minecraft:stripped_jungle_log run item replace block -30000000 0 3201 container.0 with minecraft:jungle_planks 6
execute if items block ~ ~ ~ container.0 minecraft:stripped_dark_oak_log run item replace block -30000000 0 3201 container.0 with minecraft:dark_oak_planks 6
execute if items block ~ ~ ~ container.0 minecraft:stripped_acacia_log run item replace block -30000000 0 3201 container.0 with minecraft:acacia_planks 6
execute if items block ~ ~ ~ container.0 minecraft:stripped_crimson_stem run item replace block -30000000 0 3201 container.0 with minecraft:crimson_planks 6
execute if items block ~ ~ ~ container.0 minecraft:stripped_warped_stem run item replace block -30000000 0 3201 container.0 with minecraft:warped_planks 6
execute if items block ~ ~ ~ container.0 minecraft:stripped_mangrove_log run item replace block -30000000 0 3201 container.0 with minecraft:warped_planks 6
execute if items block ~ ~ ~ container.0 minecraft:stripped_cherry_log run item replace block -30000000 0 3201 container.0 with minecraft:warped_planks 6

execute if items block ~ ~ ~ container.0 minecraft:stripped_oak_wood run item replace block -30000000 0 3201 container.0 with minecraft:oak_planks 6
execute if items block ~ ~ ~ container.0 minecraft:stripped_birch_wood run item replace block -30000000 0 3201 container.0 with minecraft:birch_planks 6
execute if items block ~ ~ ~ container.0 minecraft:stripped_spruce_wood run item replace block -30000000 0 3201 container.0 with minecraft:spruce_planks 6
execute if items block ~ ~ ~ container.0 minecraft:stripped_jungle_wood run item replace block -30000000 0 3201 container.0 with minecraft:jungle_planks 6
execute if items block ~ ~ ~ container.0 minecraft:stripped_dark_oak_wood run item replace block -30000000 0 3201 container.0 with minecraft:dark_oak_planks 6
execute if items block ~ ~ ~ container.0 minecraft:stripped_acacia_wood run item replace block -30000000 0 3201 container.0 with minecraft:acacia_planks 6
execute if items block ~ ~ ~ container.0 minecraft:stripped_crimson_hyphae run item replace block -30000000 0 3201 container.0 with minecraft:crimson_planks 6
execute if items block ~ ~ ~ container.0 minecraft:stripped_warped_hyphae run item replace block -30000000 0 3201 container.0 with minecraft:warped_planks 6
execute if items block ~ ~ ~ container.0 minecraft:stripped_mangrove_wood run item replace block -30000000 0 3201 container.0 with minecraft:warped_planks 6
execute if items block ~ ~ ~ container.0 minecraft:stripped_cherry_wood run item replace block -30000000 0 3201 container.0 with minecraft:warped_planks 6

# extra
execute if items block ~ ~ ~ container.0 minecraft:cobblestone run item replace block -30000000 0 3201 container.0 with minecraft:sand 1
execute if items block ~ ~ ~ container.0 minecraft:stone run item replace block -30000000 0 3201 container.0 with minecraft:gravel 1
execute if items block ~ ~ ~ container.0 minecraft:netherrack run item replace block -30000000 0 3201 container.0 with minecraft:red_sand 1
execute if items block ~ ~ ~ container.0 minecraft:gravel run item replace block -30000000 0 3201 container.0 with minecraft:flint 1
execute if items block ~ ~ ~ container.0 minecraft:blaze_rod run item replace block -30000000 0 3201 container.0 with minecraft:blaze_powder 3
execute if items block ~ ~ ~ container.0 minecraft:bone run item replace block -30000000 0 3201 container.0 with minecraft:bone_meal 4

# custom
scoreboard players set #upgrade mechanization.data 0
function #mechanization:machines/grinder_output

# add to output
item replace block ~ ~ ~ container.2 from block -30000000 0 3201 container.0
execute store result score #recipe_count mechanization.data run data get block ~ ~ ~ Items[{Slot:2b}].count
scoreboard players operation #output_count mechanization.data += #recipe_count mechanization.data
item modify block ~ ~ ~ container.2 {"function":"minecraft:set_count","count":{"type":"minecraft:score","target":{"type":"minecraft:fixed","name":"#output_count"},"score":"mechanization.data"}}

item modify block ~ ~ ~ container.0 mechanization:decrement_count
execute if score #ingot mechanization.data matches 1 run item modify block ~ ~ ~ container.0 mechanization:decrement_count
