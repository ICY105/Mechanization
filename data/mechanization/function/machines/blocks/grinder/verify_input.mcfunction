
# ores
execute if items block ~ ~ ~ container.0 minecraft:coal_ore if items block ~ ~ ~ container.2 minecraft:coal run return 1
execute if items block ~ ~ ~ container.0 minecraft:iron_ore if items block ~ ~ ~ container.2 minecraft:raw_iron run return 1
execute if items block ~ ~ ~ container.0 minecraft:copper_ore if items block ~ ~ ~ container.2 minecraft:raw_copper run return 1
execute if items block ~ ~ ~ container.0 minecraft:gold_ore if items block ~ ~ ~ container.2 minecraft:raw_gold run return 1
execute if items block ~ ~ ~ container.0 minecraft:diamond_ore if items block ~ ~ ~ container.2 minecraft:diamond run return 1
execute if items block ~ ~ ~ container.0 minecraft:emerald_ore if items block ~ ~ ~ container.2 minecraft:emerald run return 1
execute if items block ~ ~ ~ container.0 minecraft:redstone_ore if items block ~ ~ ~ container.2 minecraft:redstone run return 1
execute if items block ~ ~ ~ container.0 minecraft:lapis_ore if items block ~ ~ ~ container.2 minecraft:lapis_lazuli run return 1

execute if items block ~ ~ ~ container.0 minecraft:deepslate_coal_ore if items block ~ ~ ~ container.2 minecraft:coal run return 1
execute if items block ~ ~ ~ container.0 minecraft:deepslate_iron_ore if items block ~ ~ ~ container.2 minecraft:raw_iron run return 1
execute if items block ~ ~ ~ container.0 minecraft:deepslate_copper_ore if items block ~ ~ ~ container.2 minecraft:raw_copper run return 1
execute if items block ~ ~ ~ container.0 minecraft:deepslate_gold_ore if items block ~ ~ ~ container.2 minecraft:raw_gold run return 1
execute if items block ~ ~ ~ container.0 minecraft:deepslate_diamond_ore if items block ~ ~ ~ container.2 minecraft:diamond run return 1
execute if items block ~ ~ ~ container.0 minecraft:deepslate_emerald_ore if items block ~ ~ ~ container.2 minecraft:emerald run return 1
execute if items block ~ ~ ~ container.0 minecraft:deepslate_redstone_ore if items block ~ ~ ~ container.2 minecraft:redstone run return 1
execute if items block ~ ~ ~ container.0 minecraft:deepslate_lapis_ore if items block ~ ~ ~ container.2 minecraft:lapis_lazuli run return 1

execute if items block ~ ~ ~ container.0 minecraft:nether_quartz_ore if items block ~ ~ ~ container.2 minecraft:quartz run return 1
execute if items block ~ ~ ~ container.0 minecraft:nether_gold_ore if items block ~ ~ ~ container.2 minecraft:raw_gold run return 1

execute if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ore:{tin:1b}}}}] if items block ~ ~ ~ container.2 *[minecraft:custom_data~{smithed:{dict:{raw:{tin:1b}}}}] run return 1
execute if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ore:{titanium:1b}}}}] if items block ~ ~ ~ container.2 *[minecraft:custom_data~{smithed:{dict:{raw:{titanium:1b}}}}] run return 1
execute if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ore:{uranium:1b}}}}] if items block ~ ~ ~ container.2 *[minecraft:custom_data~{smithed:{dict:{raw:{uranium:1b}}}}] run return 1

# ingots
execute if items block ~ ~ ~ container.0 minecraft:iron_ingot if items block ~ ~ ~ container.2 minecraft:raw_iron run return 1
execute if items block ~ ~ ~ container.0 minecraft:gold_ingot if items block ~ ~ ~ container.2 minecraft:raw_gold run return 1
execute if items block ~ ~ ~ container.0 minecraft:copper_ingot if items block ~ ~ ~ container.2 minecraft:raw_copper run return 1

execute if data block ~ ~ ~ Items[{Slot:0b}].tag.smithed.dict.ingot.tin unless data block ~ ~ ~ Items[{Slot:2b}].tag.smithed.dict.raw.tin run return 1
execute if data block ~ ~ ~ Items[{Slot:0b}].tag.smithed.dict.ingot.titanium unless data block ~ ~ ~ Items[{Slot:2b}].tag.smithed.dict.raw.titanium run return 1
execute if data block ~ ~ ~ Items[{Slot:0b}].tag.smithed.dict.ingot.uranium unless data block ~ ~ ~ Items[{Slot:2b}].tag.smithed.dict.raw.uranium run return 1
execute if data block ~ ~ ~ Items[{Slot:0b}].tag.smithed.dict.ingot.steel unless data block ~ ~ ~ Items[{Slot:2b}].tag.smithed.dict.raw.steel run return 1
execute if data block ~ ~ ~ Items[{Slot:0b}].tag.smithed.dict.ingot.structural_alloy unless data block ~ ~ ~ Items[{Slot:2b}].tag.smithed.dict.raw.structural_alloy run return 1
execute if data block ~ ~ ~ Items[{Slot:0b}].tag.smithed.dict.ingot.conductive_alloy unless data block ~ ~ ~ Items[{Slot:2b}].tag.smithed.dict.raw.conductive_alloy run return 1
execute if data block ~ ~ ~ Items[{Slot:0b}].tag.smithed.dict.ingot.titanium_steel unless data block ~ ~ ~ Items[{Slot:2b}].tag.smithed.dict.raw.titanium_steel run return 1
execute if data block ~ ~ ~ Items[{Slot:0b}].tag.smithed.dict.ingot.reinforced_structural_alloy unless data block ~ ~ ~ Items[{Slot:2b}].tag.smithed.dict.raw.reinforced_structural_alloy run return 1
execute if data block ~ ~ ~ Items[{Slot:0b}].tag.smithed.dict.ingot.super_conductive_alloy unless data block ~ ~ ~ Items[{Slot:2b}].tag.smithed.dict.raw.super_conductive_alloy run return 1
execute if data block ~ ~ ~ Items[{Slot:0b}].tag.smithed.dict.ingot.nether_alloy unless data block ~ ~ ~ Items[{Slot:2b}].tag.smithed.dict.raw.nether_alloy run return 1
execute if data block ~ ~ ~ Items[{Slot:0b}].tag.smithed.dict.ingot.ender_alloy unless data block ~ ~ ~ Items[{Slot:2b}].tag.smithed.dict.raw.ender_alloy run return 1
execute if data block ~ ~ ~ Items[{Slot:0b}].tag.smithed.dict.ingot.plutonium unless data block ~ ~ ~ Items[{Slot:2b}].tag.smithed.dict.raw.plutonium run return 1

execute if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ingot:{tin:1b}}}}] if items block ~ ~ ~ container.2 *[minecraft:custom_data~{smithed:{dict:{raw:{tin:1b}}}}] run return 1
execute if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ingot:{titanium:1b}}}}] if items block ~ ~ ~ container.2 *[minecraft:custom_data~{smithed:{dict:{raw:{titanium:1b}}}}] run return 1
execute if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ingot:{uranium:1b}}}}] if items block ~ ~ ~ container.2 *[minecraft:custom_data~{smithed:{dict:{raw:{uranium:1b}}}}] run return 1
execute if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ingot:{steel:1b}}}}] if items block ~ ~ ~ container.2 *[minecraft:custom_data~{smithed:{dict:{raw:{steel:1b}}}}] run return 1
execute if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ingot:{structural_alloy:1b}}}}] if items block ~ ~ ~ container.2 *[minecraft:custom_data~{smithed:{dict:{raw:{structural_alloy:1b}}}}] run return 1
execute if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ingot:{conductive_alloy:1b}}}}] if items block ~ ~ ~ container.2 *[minecraft:custom_data~{smithed:{dict:{raw:{conductive_alloy:1b}}}}] run return 1
execute if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ingot:{titanium_steel:1b}}}}] if items block ~ ~ ~ container.2 *[minecraft:custom_data~{smithed:{dict:{raw:{titanium_steel:1b}}}}] run return 1
execute if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ingot:{reinforced_structural_alloy:1b}}}}] if items block ~ ~ ~ container.2 *[minecraft:custom_data~{smithed:{dict:{raw:{reinforced_structural_alloy:1b}}}}] run return 1
execute if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ingot:{super_conductive_alloy:1b}}}}] if items block ~ ~ ~ container.2 *[minecraft:custom_data~{smithed:{dict:{raw:{super_conductive_alloy:1b}}}}] run return 1
execute if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ingot:{nether_alloy:1b}}}}] if items block ~ ~ ~ container.2 *[minecraft:custom_data~{smithed:{dict:{raw:{nether_alloy:1b}}}}] run return 1
execute if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ingot:{ender_alloy:1b}}}}] if items block ~ ~ ~ container.2 *[minecraft:custom_data~{smithed:{dict:{raw:{ender_alloy:1b}}}}] run return 1
execute if items block ~ ~ ~ container.0 *[minecraft:custom_data~{smithed:{dict:{ingot:{plutonium:1b}}}}] if items block ~ ~ ~ container.2 *[minecraft:custom_data~{smithed:{dict:{raw:{plutonium:1b}}}}] run return 1

# logs
execute if items block ~ ~ ~ container.0 minecraft:oak_log if items block ~ ~ ~ container.2 minecraft:oak_planks run return 1
execute if items block ~ ~ ~ container.0 minecraft:birch_log if items block ~ ~ ~ container.2 minecraft:birch_planks run return 1
execute if items block ~ ~ ~ container.0 minecraft:spruce_log if items block ~ ~ ~ container.2 minecraft:spruce_planks run return 1
execute if items block ~ ~ ~ container.0 minecraft:jungle_log if items block ~ ~ ~ container.2 minecraft:jungle_planks run return 1
execute if items block ~ ~ ~ container.0 minecraft:dark_oak_log if items block ~ ~ ~ container.2 minecraft:dark_oak_planks run return 1
execute if items block ~ ~ ~ container.0 minecraft:acacia_log if items block ~ ~ ~ container.2 minecraft:acacia_planks run return 1
execute if items block ~ ~ ~ container.0 minecraft:crimson_stem if items block ~ ~ ~ container.2 minecraft:warped_planks run return 1
execute if items block ~ ~ ~ container.0 minecraft:warped_stem if items block ~ ~ ~ container.2 minecraft:crimson_planks run return 1
execute if items block ~ ~ ~ container.0 minecraft:mangrove_log if items block ~ ~ ~ container.2 minecraft:mangrove_planks run return 1
execute if items block ~ ~ ~ container.0 minecraft:cherry_log if items block ~ ~ ~ container.2 minecraft:cherry_planks run return 1

execute if items block ~ ~ ~ container.0 minecraft:oak_wood if items block ~ ~ ~ container.2 minecraft:oak_planks run return 1
execute if items block ~ ~ ~ container.0 minecraft:birch_wood if items block ~ ~ ~ container.2 minecraft:birch_planks run return 1
execute if items block ~ ~ ~ container.0 minecraft:spruce_wood if items block ~ ~ ~ container.2 minecraft:spruce_planks run return 1
execute if items block ~ ~ ~ container.0 minecraft:jungle_wood if items block ~ ~ ~ container.2 minecraft:jungle_planks run return 1
execute if items block ~ ~ ~ container.0 minecraft:dark_oak_wood if items block ~ ~ ~ container.2 minecraft:dark_oak_planks run return 1
execute if items block ~ ~ ~ container.0 minecraft:acacia_wood if items block ~ ~ ~ container.2 minecraft:acacia_planks run return 1
execute if items block ~ ~ ~ container.0 minecraft:crimson_hyphae if items block ~ ~ ~ container.2 minecraft:warped_planks run return 1
execute if items block ~ ~ ~ container.0 minecraft:warped_hyphae if items block ~ ~ ~ container.2 minecraft:crimson_planks run return 1
execute if items block ~ ~ ~ container.0 minecraft:mangrove_wood if items block ~ ~ ~ container.2 minecraft:mangrove_planks run return 1
execute if items block ~ ~ ~ container.0 minecraft:cherry_wood if items block ~ ~ ~ container.2 minecraft:cherry_planks run return 1

execute if items block ~ ~ ~ container.0 minecraft:stripped_oak_log if items block ~ ~ ~ container.2 minecraft:oak_planks run return 1
execute if items block ~ ~ ~ container.0 minecraft:stripped_birch_log if items block ~ ~ ~ container.2 minecraft:birch_planks run return 1
execute if items block ~ ~ ~ container.0 minecraft:stripped_spruce_log if items block ~ ~ ~ container.2 minecraft:spruce_planks run return 1
execute if items block ~ ~ ~ container.0 minecraft:stripped_jungle_log if items block ~ ~ ~ container.2 minecraft:jungle_planks run return 1
execute if items block ~ ~ ~ container.0 minecraft:stripped_dark_oak_log if items block ~ ~ ~ container.2 minecraft:dark_oak_planks run return 1
execute if items block ~ ~ ~ container.0 minecraft:stripped_acacia_log if items block ~ ~ ~ container.2 minecraft:acacia_planks run return 1
execute if items block ~ ~ ~ container.0 minecraft:stripped_crimson_stem if items block ~ ~ ~ container.2 minecraft:warped_planks run return 1
execute if items block ~ ~ ~ container.0 minecraft:stripped_warped_stem if items block ~ ~ ~ container.2 minecraft:crimson_planks run return 1
execute if items block ~ ~ ~ container.0 minecraft:stripped_mangrove_log if items block ~ ~ ~ container.2 minecraft:mangrove_planks run return 1
execute if items block ~ ~ ~ container.0 minecraft:stripped_cherry_log if items block ~ ~ ~ container.2 minecraft:cherry_planks run return 1

execute if items block ~ ~ ~ container.0 minecraft:stripped_oak_wood if items block ~ ~ ~ container.2 minecraft:oak_planks run return 1
execute if items block ~ ~ ~ container.0 minecraft:stripped_birch_wood if items block ~ ~ ~ container.2 minecraft:birch_planks run return 1
execute if items block ~ ~ ~ container.0 minecraft:stripped_spruce_wood if items block ~ ~ ~ container.2 minecraft:spruce_planks run return 1
execute if items block ~ ~ ~ container.0 minecraft:stripped_jungle_wood if items block ~ ~ ~ container.2 minecraft:jungle_planks run return 1
execute if items block ~ ~ ~ container.0 minecraft:stripped_dark_oak_wood if items block ~ ~ ~ container.2 minecraft:dark_oak_planks run return 1
execute if items block ~ ~ ~ container.0 minecraft:stripped_acacia_wood if items block ~ ~ ~ container.2 minecraft:acacia_planks run return 1
execute if items block ~ ~ ~ container.0 minecraft:stripped_crimson_hyphae if items block ~ ~ ~ container.2 minecraft:warped_planks run return 1
execute if items block ~ ~ ~ container.0 minecraft:stripped_warped_hyphae if items block ~ ~ ~ container.2 minecraft:crimson_planks run return 1
execute if items block ~ ~ ~ container.0 minecraft:stripped_mangrove_wood if items block ~ ~ ~ container.2 minecraft:mangrove_planks run return 1
execute if items block ~ ~ ~ container.0 minecraft:stripped_cherry_wood if items block ~ ~ ~ container.2 minecraft:cherry_planks run return 1

# extra
execute if items block ~ ~ ~ container.0 minecraft:cobblestone if items block ~ ~ ~ container.2 minecraft:sand run return 1
execute if items block ~ ~ ~ container.0 minecraft:stone if items block ~ ~ ~ container.2 minecraft:gravel run return 1
execute if items block ~ ~ ~ container.0 minecraft:netherrack if items block ~ ~ ~ container.2 minecraft:red_sand run return 1
execute if items block ~ ~ ~ container.0 minecraft:gravel if items block ~ ~ ~ container.2 minecraft:flint run return 1
execute if items block ~ ~ ~ container.0 minecraft:blaze_rod if items block ~ ~ ~ container.2 minecraft:blaze_powder run return 1
execute if items block ~ ~ ~ container.0 minecraft:bone if items block ~ ~ ~ container.2 minecraft:bone_meal run return 1

return fail
