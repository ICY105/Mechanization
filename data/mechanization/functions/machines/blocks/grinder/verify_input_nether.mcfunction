
scoreboard players set #valid mechanization.data 0

#ores
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:coal_ore"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:coal"}] run scoreboard players set #valid mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:iron_ore"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:iron_ingot"}] run scoreboard players set #valid mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:copper_ore"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:copper_ingot"}] run scoreboard players set #valid mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:gold_ore"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:gold_ingot"}] run scoreboard players set #valid mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:diamond_ore"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:diamond"}] run scoreboard players set #valid mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:emerald_ore"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:emerald"}] run scoreboard players set #valid mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:redstone_ore"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:redstone"}] run scoreboard players set #valid mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:lapis_ore"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:lapis_lazuli"}] run scoreboard players set #valid mechanization.data 1

execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_coal_ore"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:coal"}] run scoreboard players set #valid mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_iron_ore"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:iron_ingot"}] run scoreboard players set #valid mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_copper_ore"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:copper_ingot"}] run scoreboard players set #valid mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_gold_ore"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:gold_ingot"}] run scoreboard players set #valid mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_diamond_ore"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:diamond"}] run scoreboard players set #valid mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_emerald_ore"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:emerald"}] run scoreboard players set #valid mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_redstone_ore"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:redstone"}] run scoreboard players set #valid mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_lapis_ore"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:lapis_lazuli"}] run scoreboard players set #valid mechanization.data 1

execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:nether_quartz_ore"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:quartz"}] run scoreboard players set #valid mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:nether_gold_ore"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:gold_ingot"}] run scoreboard players set #valid mechanization.data 1

execute if data block ~ ~ ~ Items[{Slot:0b}].tag.smithed.dict.ore.tin if data block ~ ~ ~ Items[{Slot:2b}].tag.smithed.dict.ingot.tin run scoreboard players set #valid mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b}].tag.smithed.dict.ore.titanium if data block ~ ~ ~ Items[{Slot:2b}].tag.smithed.dict.ingot.titanium run scoreboard players set #valid mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b}].tag.smithed.dict.ore.uranium if data block ~ ~ ~ Items[{Slot:2b}].tag.smithed.dict.ingot.uranium run scoreboard players set #valid mechanization.data 1

#Logs
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:oak_log"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:charcoal"}] run scoreboard players set #valid mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:birch_log"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:charcoal"}] run scoreboard players set #valid mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:spruce_log"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:charcoal"}] run scoreboard players set #valid mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:jungle_log"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:charcoal"}] run scoreboard players set #valid mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:dark_oak_log"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:charcoal"}] run scoreboard players set #valid mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:acacia_log"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:charcoal"}] run scoreboard players set #valid mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:crimson_stem"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:charcoal"}] run scoreboard players set #valid mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:warped_stem"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:charcoal"}] run scoreboard players set #valid mechanization.data 1

#Extra
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:cobblestone"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:glass"}] run scoreboard players set #valid mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:stone"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:flint"}] run scoreboard players set #valid mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:netherrack"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:flint"}] run scoreboard players set #valid mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:gravel"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:flint"}] run scoreboard players set #valid mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:blaze_rod"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:blaze_powder"}] run scoreboard players set #valid mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:bone"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:bone_meal"}] run scoreboard players set #valid mechanization.data 1





