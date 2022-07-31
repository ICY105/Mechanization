
#ores
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:coal_ore"}] unless data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:coal"}] run scoreboard players set #valid mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:iron_ore"}] unless data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:raw_iron"}] run scoreboard players set #valid mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:copper_ore"}] unless data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:raw_copper"}] run scoreboard players set #valid mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:gold_ore"}] unless data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:raw_gold"}] run scoreboard players set #valid mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:diamond_ore"}] unless data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:diamond"}] run scoreboard players set #valid mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:emerald_ore"}] unless data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:emerald"}] run scoreboard players set #valid mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:redstone_ore"}] unless data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:redstone"}] run scoreboard players set #valid mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:lapis_ore"}] unless data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:lapis_lazuli"}] run scoreboard players set #valid mechanization.data 0

execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_coal_ore"}] unless data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:coal"}] run scoreboard players set #valid mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_iron_ore"}] unless data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:raw_iron"}] run scoreboard players set #valid mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_copper_ore"}] unless data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:raw_copper"}] run scoreboard players set #valid mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_gold_ore"}] unless data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:raw_gold"}] run scoreboard players set #valid mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_diamond_ore"}] unless data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:diamond"}] run scoreboard players set #valid mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_emerald_ore"}] unless data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:emerald"}] run scoreboard players set #valid mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_redstone_ore"}] unless data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:redstone"}] run scoreboard players set #valid mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_lapis_ore"}] unless data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:lapis_lazuli"}] run scoreboard players set #valid mechanization.data 0

execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:nether_quartz_ore"}] unless data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:quartz"}] run scoreboard players set #valid mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:nether_gold_ore"}] unless data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:raw_gold"}] run scoreboard players set #valid mechanization.data 0

execute if data block ~ ~ ~ Items[{Slot:0b}].tag.smithed.dict.ore.tin unless data block ~ ~ ~ Items[{Slot:2b}].tag.smithed.dict.raw.tin run scoreboard players set #valid mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:0b}].tag.smithed.dict.ore.titanium unless data block ~ ~ ~ Items[{Slot:2b}].tag.smithed.dict.raw.titanium run scoreboard players set #valid mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:0b}].tag.smithed.dict.ore.uranium unless data block ~ ~ ~ Items[{Slot:2b}].tag.smithed.dict.raw.uranium run scoreboard players set #valid mechanization.data 0

#ingots
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:iron_ingot"}] unless data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:raw_iron"}] run scoreboard players set #valid mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:gold_ingot"}] unless data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:raw_gold"}] run scoreboard players set #valid mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:copper_ingot"}] unless data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:raw_copper"}] run scoreboard players set #valid mechanization.data 0

execute if data block ~ ~ ~ Items[{Slot:0b}].tag.smithed.dict.ingot.tin unless data block ~ ~ ~ Items[{Slot:2b}].tag.smithed.dict.raw.tin run scoreboard players set #valid mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:0b}].tag.smithed.dict.ingot.titanium unless data block ~ ~ ~ Items[{Slot:2b}].tag.smithed.dict.raw.titanium run scoreboard players set #valid mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:0b}].tag.smithed.dict.ingot.uranium unless data block ~ ~ ~ Items[{Slot:2b}].tag.smithed.dict.raw.uranium run scoreboard players set #valid mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:0b}].tag.smithed.dict.ingot.steel unless data block ~ ~ ~ Items[{Slot:2b}].tag.smithed.dict.raw.steel run scoreboard players set #valid mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:0b}].tag.smithed.dict.ingot.structural_alloy unless data block ~ ~ ~ Items[{Slot:2b}].tag.smithed.dict.raw.structural_alloy run scoreboard players set #valid mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:0b}].tag.smithed.dict.ingot.conductive_alloy unless data block ~ ~ ~ Items[{Slot:2b}].tag.smithed.dict.raw.conductive_alloy run scoreboard players set #valid mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:0b}].tag.smithed.dict.ingot.titanium_steel unless data block ~ ~ ~ Items[{Slot:2b}].tag.smithed.dict.raw.titanium_steel run scoreboard players set #valid mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:0b}].tag.smithed.dict.ingot.reinforced_structural_alloy unless data block ~ ~ ~ Items[{Slot:2b}].tag.smithed.dict.raw.reinforced_structural_alloy run scoreboard players set #valid mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:0b}].tag.smithed.dict.ingot.super_conductive_alloy unless data block ~ ~ ~ Items[{Slot:2b}].tag.smithed.dict.raw.super_conductive_alloy run scoreboard players set #valid mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:0b}].tag.smithed.dict.ingot.nether_alloy unless data block ~ ~ ~ Items[{Slot:2b}].tag.smithed.dict.raw.nether_alloy run scoreboard players set #valid mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:0b}].tag.smithed.dict.ingot.ender_alloy unless data block ~ ~ ~ Items[{Slot:2b}].tag.smithed.dict.raw.ender_alloy run scoreboard players set #valid mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:0b}].tag.smithed.dict.ingot.plutonium unless data block ~ ~ ~ Items[{Slot:2b}].tag.smithed.dict.raw.plutonium run scoreboard players set #valid mechanization.data 0

#Logs
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:oak_log"}] unless data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:oak_planks"}] run scoreboard players set #valid mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:birch_log"}] unless data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:birch_planks"}] run scoreboard players set #valid mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:spruce_log"}] unless data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:spruce_planks"}] run scoreboard players set #valid mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:jungle_log"}] unless data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:jungle_planks"}] run scoreboard players set #valid mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:dark_oak_log"}] unless data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:dark_oak_planks"}] run scoreboard players set #valid mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:acacia_log"}] unless data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:acacia_planks"}] run scoreboard players set #valid mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:crimson_stem"}] unless data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:warped_planks"}] run scoreboard players set #valid mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:warped_stem"}] unless data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:crimson_planks"}] run scoreboard players set #valid mechanization.data 0

#Extra
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:cobblestone"}] unless data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:sand"}] run scoreboard players set #valid mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:stone"}] unless data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:gravel"}] run scoreboard players set #valid mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:netherrack"}] unless data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:gravel"}] run scoreboard players set #valid mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:gravel"}] unless data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:flint"}] run scoreboard players set #valid mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:blaze_rod"}] unless data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:blaze_powder"}] run scoreboard players set #valid mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:bone"}] unless data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:bone_meal"}] run scoreboard players set #valid mechanization.data 0





