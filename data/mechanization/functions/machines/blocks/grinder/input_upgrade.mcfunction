
#get output count
execute store result score #output_count mechanization.data run data get block ~ ~ ~ Items[{Slot:2b}].Count
execute store result score #input_count mechanization.data run data get block ~ ~ ~ Items[{Slot:0b}].Count

#ores
execute if score #output_count mechanization.data matches 0..62 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:coal_ore"}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..62 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:iron_ore"}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..62 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:copper_ore"}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..62 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:gold_ore"}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..62 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:diamond_ore"}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..62 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:emerald_ore"}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..58 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:redstone_ore"}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..55 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:lapis_ore"}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data

execute if score #output_count mechanization.data matches 0..62 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_coal_ore"}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..62 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_iron_ore"}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..62 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_copper_ore"}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..62 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_gold_ore"}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..62 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_diamond_ore"}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..62 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_emerald_ore"}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..58 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_redstone_ore"}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..55 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_lapis_ore"}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data

execute if score #output_count mechanization.data matches 0..62 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:nether_quartz_ore"}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..62 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:nether_gold_ore"}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data

execute if score #output_count mechanization.data matches 0..62 if data block ~ ~ ~ Items[{Slot:0b}].tag.smithed.dict.ore.tin run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..62 if data block ~ ~ ~ Items[{Slot:0b}].tag.smithed.dict.ore.titanium run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..62 if data block ~ ~ ~ Items[{Slot:0b}].tag.smithed.dict.ore.uranium run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data

#ingots
execute if score #output_count mechanization.data matches 0..63 if score #input_count mechanization.data matches 2.. if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:iron_ingot"}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..63 if score #input_count mechanization.data matches 2.. if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:gold_ingot"}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..63 if score #input_count mechanization.data matches 2.. if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:copper_ingot"}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data

execute if score #output_count mechanization.data matches 0..63 if score #input_count mechanization.data matches 2.. if data block ~ ~ ~ Items[{Slot:0b}].tag.smithed.dict.ingot.tin run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..63 if score #input_count mechanization.data matches 2.. if data block ~ ~ ~ Items[{Slot:0b}].tag.smithed.dict.ingot.titanium run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..63 if score #input_count mechanization.data matches 2.. if data block ~ ~ ~ Items[{Slot:0b}].tag.smithed.dict.ingot.uranium run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..63 if score #input_count mechanization.data matches 2.. if data block ~ ~ ~ Items[{Slot:0b}].tag.smithed.dict.ingot.steel run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..63 if score #input_count mechanization.data matches 2.. if data block ~ ~ ~ Items[{Slot:0b}].tag.smithed.dict.ingot.structural_alloy run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..63 if score #input_count mechanization.data matches 2.. if data block ~ ~ ~ Items[{Slot:0b}].tag.smithed.dict.ingot.conductive_alloy run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..63 if score #input_count mechanization.data matches 2.. if data block ~ ~ ~ Items[{Slot:0b}].tag.smithed.dict.ingot.titanium_steel run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..63 if score #input_count mechanization.data matches 2.. if data block ~ ~ ~ Items[{Slot:0b}].tag.smithed.dict.ingot.reinforced_structural_alloy run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..63 if score #input_count mechanization.data matches 2.. if data block ~ ~ ~ Items[{Slot:0b}].tag.smithed.dict.ingot.super_conductive_alloy run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..63 if score #input_count mechanization.data matches 2.. if data block ~ ~ ~ Items[{Slot:0b}].tag.smithed.dict.ingot.nether_alloy run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..63 if score #input_count mechanization.data matches 2.. if data block ~ ~ ~ Items[{Slot:0b}].tag.smithed.dict.ingot.ender_alloy run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data
execute if score #output_count mechanization.data matches 0..63 if score #input_count mechanization.data matches 2.. if data block ~ ~ ~ Items[{Slot:0b}].tag.smithed.dict.ingot.plutonium run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_ores mechanization.data

#Logs
execute if score #output_count mechanization.data matches 0..58 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:oak_log"}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_other mechanization.data
execute if score #output_count mechanization.data matches 0..58 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:birch_log"}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_other mechanization.data
execute if score #output_count mechanization.data matches 0..58 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:spruce_log"}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_other mechanization.data
execute if score #output_count mechanization.data matches 0..58 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:jungle_log"}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_other mechanization.data
execute if score #output_count mechanization.data matches 0..58 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:dark_oak_log"}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_other mechanization.data
execute if score #output_count mechanization.data matches 0..58 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:acacia_log"}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_other mechanization.data
execute if score #output_count mechanization.data matches 0..58 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:crimson_stem"}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_other mechanization.data
execute if score #output_count mechanization.data matches 0..58 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:warped_stem"}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_other mechanization.data

#Extra
execute if score #output_count mechanization.data matches 0..63 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:cobblestone"}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_other mechanization.data
execute if score #output_count mechanization.data matches 0..63 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:stone"}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_other mechanization.data
execute if score #output_count mechanization.data matches 0..63 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:netherrack"}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_other mechanization.data
execute if score #output_count mechanization.data matches 0..63 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:gravel"}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_other mechanization.data
execute if score #output_count mechanization.data matches 0..61 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:blaze_rod"}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_other mechanization.data
execute if score #output_count mechanization.data matches 0..60 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:bone"}] run scoreboard players operation @s mechanization.time = #machines.cf.grinder.speed_other mechanization.data

# custom
scoreboard players set #upgrade mechanization.data 1
function #mechanization:machines/grinder_input

#calculate needed power
scoreboard players operation #output_count mechanization.data = #machines.cf.grinder.power mechanization.data
scoreboard players operation #output_count mechanization.data *= @s mechanization.time
execute if score @s energy.storage < #output_count mechanization.data run scoreboard players set @s mechanization.time 0
