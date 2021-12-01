
#get output count
execute store result score $temp_0 mech_data run data get block ~ ~ ~ Items[{Slot:2b}].Count
execute store result score $temp_1 mech_data run data get block ~ ~ ~ Items[{Slot:0b}].Count

#ores
execute if score $temp_0 mech_data matches 0..62 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:coal_ore"}] run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_ores mech_data
execute if score $temp_0 mech_data matches 0..62 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:iron_ore"}] run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_ores mech_data
execute if score $temp_0 mech_data matches 0..62 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:copper_ore"}] run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_ores mech_data
execute if score $temp_0 mech_data matches 0..62 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:gold_ore"}] run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_ores mech_data
execute if score $temp_0 mech_data matches 0..62 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:diamond_ore"}] run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_ores mech_data
execute if score $temp_0 mech_data matches 0..62 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:emerald_ore"}] run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_ores mech_data
execute if score $temp_0 mech_data matches 0..58 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:redstone_ore"}] run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_ores mech_data
execute if score $temp_0 mech_data matches 0..55 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:lapis_ore"}] run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_ores mech_data

execute if score $temp_0 mech_data matches 0..62 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_coal_ore"}] run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_ores mech_data
execute if score $temp_0 mech_data matches 0..62 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_iron_ore"}] run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_ores mech_data
execute if score $temp_0 mech_data matches 0..62 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_copper_ore"}] run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_ores mech_data
execute if score $temp_0 mech_data matches 0..62 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_gold_ore"}] run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_ores mech_data
execute if score $temp_0 mech_data matches 0..62 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_diamond_ore"}] run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_ores mech_data
execute if score $temp_0 mech_data matches 0..62 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_emerald_ore"}] run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_ores mech_data
execute if score $temp_0 mech_data matches 0..58 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_redstone_ore"}] run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_ores mech_data
execute if score $temp_0 mech_data matches 0..55 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_lapis_ore"}] run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_ores mech_data

execute if score $temp_0 mech_data matches 0..62 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:nether_quartz_ore"}] run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_ores mech_data
execute if score $temp_0 mech_data matches 0..62 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:nether_gold_ore"}] run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_ores mech_data

execute if score $temp_0 mech_data matches 0..62 if data block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits{"metal/tin":1b,ore:1b} run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_ores mech_data
execute if score $temp_0 mech_data matches 0..62 if data block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits{"metal/titanium":1b,ore:1b} run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_ores mech_data
execute if score $temp_0 mech_data matches 0..62 if data block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits{"metal/uranium":1b,ore:1b} run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_ores mech_data

#ingots
execute if score $temp_0 mech_data matches 0..63 if score $temp_1 mech_data matches 2.. if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:iron_ingot"}] run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_ores mech_data
execute if score $temp_0 mech_data matches 0..63 if score $temp_1 mech_data matches 2.. if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:gold_ingot"}] run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_ores mech_data
execute if score $temp_0 mech_data matches 0..63 if score $temp_1 mech_data matches 2.. if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:copper_ingot"}] run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_ores mech_data

execute if score $temp_0 mech_data matches 0..63 if score $temp_1 mech_data matches 2.. if data block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits{"metal/tin":1b,ingot:1b} run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_ores mech_data
execute if score $temp_0 mech_data matches 0..63 if score $temp_1 mech_data matches 2.. if data block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits{"metal/titanium":1b,ingot:1b} run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_ores mech_data
execute if score $temp_0 mech_data matches 0..63 if score $temp_1 mech_data matches 2.. if data block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits{"metal/uranium":1b,ingot:1b} run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_ores mech_data
execute if score $temp_0 mech_data matches 0..63 if score $temp_1 mech_data matches 2.. if data block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits{"metal/steel":1b,ingot:1b} run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_ores mech_data
execute if score $temp_0 mech_data matches 0..63 if score $temp_1 mech_data matches 2.. if data block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits{"metal/structural_alloy":1b,ingot:1b} run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_ores mech_data
execute if score $temp_0 mech_data matches 0..63 if score $temp_1 mech_data matches 2.. if data block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits{"metal/conductive_alloy":1b,ingot:1b} run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_ores mech_data
execute if score $temp_0 mech_data matches 0..63 if score $temp_1 mech_data matches 2.. if data block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits{"metal/titanium_steel":1b,ingot:1b} run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_ores mech_data
execute if score $temp_0 mech_data matches 0..63 if score $temp_1 mech_data matches 2.. if data block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits{"metal/reinforced_structural_alloy":1b,ingot:1b} run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_ores mech_data
execute if score $temp_0 mech_data matches 0..63 if score $temp_1 mech_data matches 2.. if data block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits{"metal/super_conductive_alloy":1b,ingot:1b} run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_ores mech_data
execute if score $temp_0 mech_data matches 0..63 if score $temp_1 mech_data matches 2.. if data block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits{"metal/nether_alloy":1b,ingot:1b} run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_ores mech_data
execute if score $temp_0 mech_data matches 0..63 if score $temp_1 mech_data matches 2.. if data block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits{"metal/ender_alloy":1b,ingot:1b} run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_ores mech_data
execute if score $temp_0 mech_data matches 0..63 if score $temp_1 mech_data matches 2.. if data block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits{"metal/plutonium":1b,ingot:1b} run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_ores mech_data

#Logs
execute if score $temp_0 mech_data matches 0..58 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:oak_log"}] run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_other mech_data
execute if score $temp_0 mech_data matches 0..58 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:birch_log"}] run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_other mech_data
execute if score $temp_0 mech_data matches 0..58 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:spruce_log"}] run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_other mech_data
execute if score $temp_0 mech_data matches 0..58 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:jungle_log"}] run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_other mech_data
execute if score $temp_0 mech_data matches 0..58 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:dark_oak_log"}] run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_other mech_data
execute if score $temp_0 mech_data matches 0..58 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:acacia_log"}] run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_other mech_data
execute if score $temp_0 mech_data matches 0..58 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:crimson_stem"}] run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_other mech_data
execute if score $temp_0 mech_data matches 0..58 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:warped_stem"}] run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_other mech_data

#Extra
execute if score $temp_0 mech_data matches 0..63 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:cobblestone"}] run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_other mech_data
execute if score $temp_0 mech_data matches 0..63 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:stone"}] run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_other mech_data
execute if score $temp_0 mech_data matches 0..63 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:netherrack"}] run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_other mech_data
execute if score $temp_0 mech_data matches 0..63 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:gravel"}] run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_other mech_data
execute if score $temp_0 mech_data matches 0..61 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:blaze_rod"}] run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_other mech_data
execute if score $temp_0 mech_data matches 0..60 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:bone"}] run scoreboard players operation @s mech_timer = $machines.cf.grinder.speed_other mech_data

#calculate needed power
scoreboard players operation $temp_0 mech_data = $machines.cf.grinder.power mech_data
scoreboard players operation $temp_0 mech_data *= @s mech_timer
execute if score @s mech_power < $temp_0 mech_data run scoreboard players set @s mech_timer 0
