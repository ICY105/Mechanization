
#get initial output count
scoreboard players set $temp_0 mechanization.data 0
scoreboard players set $temp_1 mechanization.data 0
scoreboard players set $out_0 mechanization.data 1

execute store result score $temp_0 mechanization.data run data get block ~ ~ ~ Items[{Slot:2b}].Count
execute if score $temp_0 mechanization.data matches 1.. run function mechanization:machines/machines/grinder/verify_input

## Set Output

#ores
execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:coal_ore"}] run item replace block -29999999 0 1601 container.0 with minecraft:coal 1
execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:iron_ore"}] run item replace block -29999999 0 1601 container.0 with minecraft:raw_iron 1
execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:copper_ore"}] run item replace block -29999999 0 1601 container.0 with minecraft:raw_copper 1
execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:gold_ore"}] run item replace block -29999999 0 1601 container.0 with minecraft:raw_gold 1
execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:diamond_ore"}] run item replace block -29999999 0 1601 container.0 with minecraft:diamond 1
execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:emerald_ore"}] run item replace block -29999999 0 1601 container.0 with minecraft:emerald 1
execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:redstone_ore"}] run item replace block -29999999 0 1601 container.0 with minecraft:redstone 4
execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:lapis_ore"}] run item replace block -29999999 0 1601 container.0 with minecraft:lapis_lazuli 6

execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_coal_ore"}] run item replace block -29999999 0 1601 container.0 with minecraft:coal 1
execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_iron_ore"}] run item replace block -29999999 0 1601 container.0 with minecraft:raw_iron 1
execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_copper_ore"}] run item replace block -29999999 0 1601 container.0 with minecraft:raw_copper 1
execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_gold_ore"}] run item replace block -29999999 0 1601 container.0 with minecraft:raw_gold 1
execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_diamond_ore"}] run item replace block -29999999 0 1601 container.0 with minecraft:diamond 1
execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_emerald_ore"}] run item replace block -29999999 0 1601 container.0 with minecraft:emerald 1
execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_redstone_ore"}] run item replace block -29999999 0 1601 container.0 with minecraft:redstone 4
execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_lapis_ore"}] run item replace block -29999999 0 1601 container.0 with minecraft:lapis_lazuli 6

execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:nether_quartz_ore"}] run item replace block -29999999 0 1601 container.0 with minecraft:quartz 1
execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:nether_gold_ore"}] run item replace block -29999999 0 1601 container.0 with minecraft:raw_gold 1

execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits{"metal/tin":1b,ore:1b} run loot replace block -29999999 0 1601 container.0 loot mechanization:base/tin_raw
execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits{"metal/titanium":1b,ore:1b} run loot replace block -29999999 0 1601 container.0 loot mechanization:base/titanium_raw
execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits{"metal/uranium":1b,ore:1b} run loot replace block -29999999 0 1601 container.0 loot mechanization:base/uranium_raw

#ingots
execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:iron_ingot"}] store success score $temp_1 mechanization.data run item replace block -29999999 0 1601 container.0 with minecraft:raw_iron 1
execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:gold_ingot"}] store success score $temp_1 mechanization.data run item replace block -29999999 0 1601 container.0 with minecraft:raw_gold 1
execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:copper_ingot"}] store success score $temp_1 mechanization.data run item replace block -29999999 0 1601 container.0 with minecraft:raw_copper 1

execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits{"metal/tin":1b,ingot:1b			} store success score $temp_1 mechanization.data run loot replace block -29999999 0 1601 container.0 loot mechanization:base/tin_raw
execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits{"metal/titanium":1b,ingot:1b	} store success score $temp_1 mechanization.data run loot replace block -29999999 0 1601 container.0 loot mechanization:base/titanium_raw
execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits{"metal/uranium":1b,ingot:1b		} store success score $temp_1 mechanization.data run loot replace block -29999999 0 1601 container.0 loot mechanization:base/uranium_raw
execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits{"metal/steel":1b,ingot:1b		} store success score $temp_1 mechanization.data run loot replace block -29999999 0 1601 container.0 loot mechanization:base/steel_raw
execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits{"metal/structural_alloy":1b,ingot:1b} store success score $temp_1 mechanization.data run loot replace block -29999999 0 1601 container.0 loot mechanization:base/structural_raw
execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits{"metal/conductive_alloy":1b,ingot:1b} store success score $temp_1 mechanization.data run loot replace block -29999999 0 1601 container.0 loot mechanization:base/conductive_raw
execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits{"metal/titanium_steel":1b,ingot:1b	} store success score $temp_1 mechanization.data run loot replace block -29999999 0 1601 container.0 loot mechanization:base/titanium_steel_raw
execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits{"metal/reinforced_structural_alloy":1b,ingot:1b} store success score $temp_1 mechanization.data run loot replace block -29999999 0 1601 container.0 loot mechanization:base/reinforced_structural_raw
execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits{"metal/super_conductive_alloy":1b,ingot:1b	} store success score $temp_1 mechanization.data run loot replace block -29999999 0 1601 container.0 loot mechanization:base/super_condutive_raw
execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits{"metal/nether_alloy":1b,ingot:1b			} store success score $temp_1 mechanization.data run loot replace block -29999999 0 1601 container.0 loot mechanization:base/nether_alloy_raw
execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits{"metal/ender_alloy":1b,ingot:1b				} store success score $temp_1 mechanization.data run loot replace block -29999999 0 1601 container.0 loot mechanization:base/ender_alloy_raw
execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits{"metal/plutonium":1b,ingot:1b				} store success score $temp_1 mechanization.data run loot replace block -29999999 0 1601 container.0 loot mechanization:base/plutonium_raw

#Logs
execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:oak_log"}] run item replace block -29999999 0 1601 container.0 with minecraft:oak_planks 4
execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:birch_log"}] run item replace block -29999999 0 1601 container.0 with minecraft:birch_planks 4
execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:spruce_log"}] run item replace block -29999999 0 1601 container.0 with minecraft:spruce_planks 4
execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:jungle_log"}] run item replace block -29999999 0 1601 container.0 with minecraft:jungle_planks 4
execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:dark_oak_log"}] run item replace block -29999999 0 1601 container.0 with minecraft:dark_oak_planks 4
execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:acacia_log"}] run item replace block -29999999 0 1601 container.0 with minecraft:acacia_planks 4
execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:crimson_stem"}] run item replace block -29999999 0 1601 container.0 with minecraft:crimson_planks 4
execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:warped_stem"}] run item replace block -29999999 0 1601 container.0 with minecraft:warped_planks 4

#Extra
execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:cobblestone"}] run item replace block -29999999 0 1601 container.0 with minecraft:sand 1
execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:stone"}] run item replace block -29999999 0 1601 container.0 with minecraft:gravel 1
execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:netherrack"}] run item replace block -29999999 0 1601 container.0 with minecraft:gravel 1
execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:gravel"}] run item replace block -29999999 0 1601 container.0 with minecraft:flint 1
execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:blaze_rod"}] run item replace block -29999999 0 1601 container.0 with minecraft:blaze_powder 2
execute if score $out_0 mechanization.data matches 1 if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:bone"}] run item replace block -29999999 0 1601 container.0 with minecraft:bone_meal 3

## Add to Output
execute if score $out_0 mechanization.data matches 1 run item replace block ~ ~ ~ container.2 from block -29999999 0 1601 container.0
execute if score $out_0 mechanization.data matches 1 store result score $temp_2 mechanization.data run data get block ~ ~ ~ Items[{Slot:2b}].Count
execute if score $out_0 mechanization.data matches 1 run scoreboard players operation $temp_0 mechanization.data += $temp_2 mech_data
execute if score $out_0 mechanization.data matches 1 store result block ~ ~ ~ Items[{Slot:2b}].Count int 1 run scoreboard players get $temp_0 mech_data

execute if score $out_0 mechanization.data matches 1 store result score $temp_0 mechanization.data run data get block ~ ~ ~ Items[{Slot:0b}].Count
execute if score $out_0 mechanization.data matches 1 run scoreboard players remove $temp_0 mechanization.data 1
execute if score $out_0 mechanization.data matches 1 if score $temp_1 mechanization.data matches 1 run scoreboard players remove $temp_0 mechanization.data 1
execute if score $out_0 mechanization.data matches 1 store result block ~ ~ ~ Items[{Slot:0b}].Count int 1 run scoreboard players get $temp_0 mech_data
