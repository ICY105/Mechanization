
#get initial output count
item replace block -30000000 0 3201 container.0 with minecraft:air 1

scoreboard players set #output_count mechanization.data 0
scoreboard players set #ingot mechanization.data 0
scoreboard players set #valid mechanization.data 1

execute store result score #input_count mechanization.data run data get block ~ ~ ~ Items[{Slot:0b}].Count
execute store result score #output_count mechanization.data run data get block ~ ~ ~ Items[{Slot:2b}].Count
execute if score #output_count mechanization.data matches 1.. run function mechanization:machines/machines/grinder/verify_input

## Set Output

#ores
execute if score #valid mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:coal_ore"}] run item replace block -30000000 0 3201 container.0 with minecraft:coal 2
execute if score #valid mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:iron_ore"}] run item replace block -30000000 0 3201 container.0 with minecraft:raw_iron 2
execute if score #valid mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:copper_ore"}] run item replace block -30000000 0 3201 container.0 with minecraft:raw_copper 2
execute if score #valid mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:gold_ore"}] run item replace block -30000000 0 3201 container.0 with minecraft:raw_gold 2
execute if score #valid mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:diamond_ore"}] run item replace block -30000000 0 3201 container.0 with minecraft:diamond 2
execute if score #valid mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:emerald_ore"}] run item replace block -30000000 0 3201 container.0 with minecraft:emerald 2
execute if score #valid mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:redstone_ore"}] run item replace block -30000000 0 3201 container.0 with minecraft:redstone 6
execute if score #valid mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:lapis_ore"}] run item replace block -30000000 0 3201 container.0 with minecraft:lapis_lazuli 9

execute if score #valid mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_coal_ore"}] run item replace block -30000000 0 3201 container.0 with minecraft:coal 2
execute if score #valid mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_iron_ore"}] run item replace block -30000000 0 3201 container.0 with minecraft:raw_iron 2
execute if score #valid mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_copper_ore"}] run item replace block -30000000 0 3201 container.0 with minecraft:raw_copper 2
execute if score #valid mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_gold_ore"}] run item replace block -30000000 0 3201 container.0 with minecraft:raw_gold 2
execute if score #valid mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_diamond_ore"}] run item replace block -30000000 0 3201 container.0 with minecraft:diamond 2
execute if score #valid mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_emerald_ore"}] run item replace block -30000000 0 3201 container.0 with minecraft:emerald 2
execute if score #valid mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_redstone_ore"}] run item replace block -30000000 0 3201 container.0 with minecraft:redstone 6
execute if score #valid mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_lapis_ore"}] run item replace block -30000000 0 3201 container.0 with minecraft:lapis_lazuli 9

execute if score #valid mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:nether_quartz_ore"}] run item replace block -30000000 0 3201 container.0 with minecraft:quartz 2
execute if score #valid mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:nether_gold_ore"}] run item replace block -30000000 0 3201 container.0 with minecraft:raw_gold 2

execute if score #valid mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b}].smithed.dict.ore.tin run loot replace block -30000000 0 3201 container.0 loot mechanization:base/resources_x2/tin_raw
execute if score #valid mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b}].smithed.dict.ore.titanium run loot replace block -30000000 0 3201 container.0 loot mechanization:base/resources_x2/titanium_raw
execute if score #valid mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b}].smithed.dict.ore.uranium run loot replace block -30000000 0 3201 container.0 loot mechanization:base/resources_x2/uranium_raw

#ingots
execute if score #valid mechanization.data matches 1 if score #input_count mechanization.data matches 2.. if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:iron_ingot"}] store success score #ingot mechanization.data run item replace block -30000000 0 3201 container.0 with minecraft:raw_iron 1
execute if score #valid mechanization.data matches 1 if score #input_count mechanization.data matches 2.. if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:gold_ingot"}] store success score #ingot mechanization.data run item replace block -30000000 0 3201 container.0 with minecraft:raw_gold 1
execute if score #valid mechanization.data matches 1 if score #input_count mechanization.data matches 2.. if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:copper_ingot"}] store success score #ingot mechanization.data run item replace block -30000000 0 3201 container.0 with minecraft:raw_copper 1

execute if score #valid mechanization.data matches 1 if score #input_count mechanization.data matches 2.. if data block ~ ~ ~ Items[{Slot:0b}].smithed.dict.ingot.tin store success score #ingot mechanization.data run loot replace block -30000000 0 3201 container.0 loot mechanization:base/tin_raw
execute if score #valid mechanization.data matches 1 if score #input_count mechanization.data matches 2.. if data block ~ ~ ~ Items[{Slot:0b}].smithed.dict.ingot.titanium store success score #ingot mechanization.data run loot replace block -30000000 0 3201 container.0 loot mechanization:base/titanium_raw
execute if score #valid mechanization.data matches 1 if score #input_count mechanization.data matches 2.. if data block ~ ~ ~ Items[{Slot:0b}].smithed.dict.ingot.uranium store success score #ingot mechanization.data run loot replace block -30000000 0 3201 container.0 loot mechanization:base/uranium_raw
execute if score #valid mechanization.data matches 1 if score #input_count mechanization.data matches 2.. if data block ~ ~ ~ Items[{Slot:0b}].smithed.dict.ingot.steel store success score #ingot mechanization.data run loot replace block -30000000 0 3201 container.0 loot mechanization:base/steel_raw
execute if score #valid mechanization.data matches 1 if score #input_count mechanization.data matches 2.. if data block ~ ~ ~ Items[{Slot:0b}].smithed.dict.ingot.structural_alloy store success score #ingot mechanization.data run loot replace block -30000000 0 3201 container.0 loot mechanization:base/structural_raw
execute if score #valid mechanization.data matches 1 if score #input_count mechanization.data matches 2.. if data block ~ ~ ~ Items[{Slot:0b}].smithed.dict.ingot.conductive_alloy store success score #ingot mechanization.data run loot replace block -30000000 0 3201 container.0 loot mechanization:base/conductive_raw
execute if score #valid mechanization.data matches 1 if score #input_count mechanization.data matches 2.. if data block ~ ~ ~ Items[{Slot:0b}].smithed.dict.ingot.titanium_steel store success score #ingot mechanization.data run loot replace block -30000000 0 3201 container.0 loot mechanization:base/titanium_steel_raw
execute if score #valid mechanization.data matches 1 if score #input_count mechanization.data matches 2.. if data block ~ ~ ~ Items[{Slot:0b}].smithed.dict.ingot.reinforced_structural_alloy store success score #ingot mechanization.data run loot replace block -30000000 0 3201 container.0 loot mechanization:base/reinforced_structural_raw
execute if score #valid mechanization.data matches 1 if score #input_count mechanization.data matches 2.. if data block ~ ~ ~ Items[{Slot:0b}].smithed.dict.ingot.super_conductive_alloy store success score #ingot mechanization.data run loot replace block -30000000 0 3201 container.0 loot mechanization:base/super_condutive_raw
execute if score #valid mechanization.data matches 1 if score #input_count mechanization.data matches 2.. if data block ~ ~ ~ Items[{Slot:0b}].smithed.dict.ingot.nether_alloy store success score #ingot mechanization.data run loot replace block -30000000 0 3201 container.0 loot mechanization:base/nether_alloy_raw
execute if score #valid mechanization.data matches 1 if score #input_count mechanization.data matches 2.. if data block ~ ~ ~ Items[{Slot:0b}].smithed.dict.ingot.ender_alloy store success score #ingot mechanization.data run loot replace block -30000000 0 3201 container.0 loot mechanization:base/ender_alloy_raw
execute if score #valid mechanization.data matches 1 if score #input_count mechanization.data matches 2.. if data block ~ ~ ~ Items[{Slot:0b}].smithed.dict.ingot.plutonium store success score #ingot mechanization.data run loot replace block -30000000 0 3201 container.0 loot mechanization:base/plutonium_raw

#Logs
execute if score #valid mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:oak_log"}] run item replace block -30000000 0 3201 container.0 with minecraft:oak_planks 6
execute if score #valid mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:birch_log"}] run item replace block -30000000 0 3201 container.0 with minecraft:birch_planks 6
execute if score #valid mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:spruce_log"}] run item replace block -30000000 0 3201 container.0 with minecraft:spruce_planks 6
execute if score #valid mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:jungle_log"}] run item replace block -30000000 0 3201 container.0 with minecraft:jungle_planks 6
execute if score #valid mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:dark_oak_log"}] run item replace block -30000000 0 3201 container.0 with minecraft:dark_oak_planks 6
execute if score #valid mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:acacia_log"}] run item replace block -30000000 0 3201 container.0 with minecraft:acacia_planks 6
execute if score #valid mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:crimson_stem"}] run item replace block -30000000 0 3201 container.0 with minecraft:crimson_planks 6
execute if score #valid mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:warped_stem"}] run item replace block -30000000 0 3201 container.0 with minecraft:warped_planks 6

#Extra
execute if score #valid mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:cobblestone"}] run item replace block -30000000 0 3201 container.0 with minecraft:sand 1
execute if score #valid mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:stone"}] run item replace block -30000000 0 3201 container.0 with minecraft:gravel 1
execute if score #valid mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:netherrack"}] run item replace block -30000000 0 3201 container.0 with minecraft:gravel 1
execute if score #valid mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:gravel"}] run item replace block -30000000 0 3201 container.0 with minecraft:flint 1
execute if score #valid mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:blaze_rod"}] run item replace block -30000000 0 3201 container.0 with minecraft:blaze_powder 3
execute if score #valid mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:bone"}] run item replace block -30000000 0 3201 container.0 with minecraft:bone_meal 4

# Custom
scoreboard players set #upgrade mechanization.data 1
function #mechanization:machines/grinder_output

## Add to Output
execute unless data block -30000000 0 3201 Items[{Slot:0b}] run scoreboard players set #valid mechanization.data 0

execute if score #valid mechanization.data matches 1 run item replace block ~ ~ ~ container.2 from block -30000000 0 3201 container.0
execute if score #valid mechanization.data matches 1 store result score #recipe_count mechanization.data run data get block ~ ~ ~ Items[{Slot:2b}].Count
execute if score #valid mechanization.data matches 1 run scoreboard players operation #output_count mechanization.data += #recipe_count mechanization.data
execute if score #valid mechanization.data matches 1 store result block ~ ~ ~ Items[{Slot:2b}].Count int 1 run scoreboard players get #output_count mechanization.data

execute if score #valid mechanization.data matches 1 run scoreboard players remove #input_count mechanization.data 1
execute if score #valid mechanization.data matches 1 if score #ingot mechanization.data matches 1 run scoreboard players remove #input_count mechanization.data 1
execute if score #valid mechanization.data matches 1 store result block ~ ~ ~ Items[{Slot:0b}].Count int 1 run scoreboard players get #input_count mechanization.data
