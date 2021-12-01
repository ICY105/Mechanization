
scoreboard players set $out_0 mechanization.data 0

#ores
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:coal_ore"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:coal"}] run scoreboard players set $out_0 mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:iron_ore"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:raw_iron"}] run scoreboard players set $out_0 mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:copper_ore"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:raw_copper"}] run scoreboard players set $out_0 mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:gold_ore"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:raw_gold"}] run scoreboard players set $out_0 mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:diamond_ore"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:diamond"}] run scoreboard players set $out_0 mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:emerald_ore"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:emerald"}] run scoreboard players set $out_0 mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:redstone_ore"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:redstone"}] run scoreboard players set $out_0 mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:lapis_ore"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:lapis_lazuli"}] run scoreboard players set $out_0 mechanization.data 1

execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_coal_ore"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:coal"}] run scoreboard players set $out_0 mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_iron_ore"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:raw_iron"}] run scoreboard players set $out_0 mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_copper_ore"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:raw_copper"}] run scoreboard players set $out_0 mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_gold_ore"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:raw_gold"}] run scoreboard players set $out_0 mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_diamond_ore"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:diamond"}] run scoreboard players set $out_0 mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_emerald_ore"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:emerald"}] run scoreboard players set $out_0 mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_redstone_ore"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:redstone"}] run scoreboard players set $out_0 mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:deepslate_lapis_ore"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:lapis_lazuli"}] run scoreboard players set $out_0 mechanization.data 1

execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:nether_quartz_ore"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:quartz"}] run scoreboard players set $out_0 mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:nether_gold_ore"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:raw_gold"}] run scoreboard players set $out_0 mechanization.data 1

execute if data block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits{"metal/tin":1b,ore:1b		} if data block ~ ~ ~ Items[{Slot:2b}].tag.ctc.traits{"metal/tin":1b,raw:1b} run scoreboard players set $out_0 mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits{"metal/titanium":1b,ore:1b	} if data block ~ ~ ~ Items[{Slot:2b}].tag.ctc.traits{"metal/titanium":1b,raw:1b} run scoreboard players set $out_0 mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits{"metal/uranium":1b,ore:1b	} if data block ~ ~ ~ Items[{Slot:2b}].tag.ctc.traits{"metal/uranium":1b,raw:1b} run scoreboard players set $out_0 mechanization.data 1

#ingots
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:iron_ingot"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:raw_iron"}] run scoreboard players set $out_0 mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:gold_ingot"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:raw_gold"}] run scoreboard players set $out_0 mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:copper_ingot"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:raw_copper"}] run scoreboard players set $out_0 mechanization.data 1

execute if data block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits{"metal/tin":1b,ingot:1b							} if data block ~ ~ ~ Items[{Slot:2b}].tag.ctc.traits{"metal/tin":1b,raw:1b} run scoreboard players set $out_0 mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits{"metal/titanium":1b,ingot:1b					} if data block ~ ~ ~ Items[{Slot:2b}].tag.ctc.traits{"metal/titanium":1b,raw:1b} run scoreboard players set $out_0 mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits{"metal/uranium":1b,ingot:1b						} if data block ~ ~ ~ Items[{Slot:2b}].tag.ctc.traits{"metal/uranium":1b,raw:1b} run scoreboard players set $out_0 mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits{"metal/steel":1b,ingot:1b						} if data block ~ ~ ~ Items[{Slot:2b}].tag.ctc.traits{"metal/steel":1b,raw:1b} run scoreboard players set $out_0 mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits{"metal/structural_alloy":1b,ingot:1b			} if data block ~ ~ ~ Items[{Slot:2b}].tag.ctc.traits{"metal/structural_alloy":1b,raw:1b} run scoreboard players set $out_0 mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits{"metal/conductive_alloy":1b,ingot:1b			} if data block ~ ~ ~ Items[{Slot:2b}].tag.ctc.traits{"metal/conductive_alloy":1b,raw:1b} run scoreboard players set $out_0 mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits{"metal/titanium_steel":1b,ingot:1b				} if data block ~ ~ ~ Items[{Slot:2b}].tag.ctc.traits{"metal/titanium_steel":1b,raw:1b} run scoreboard players set $out_0 mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits{"metal/reinforced_structural_alloy":1b,ingot:1b	} if data block ~ ~ ~ Items[{Slot:2b}].tag.ctc.traits{"metal/reinforced_structural_alloy":1b,raw:1b} run scoreboard players set $out_0 mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits{"metal/super_conductive_alloy":1b,ingot:1b		} if data block ~ ~ ~ Items[{Slot:2b}].tag.ctc.traits{"metal/super_conductive_alloy":1b,raw:1b} run scoreboard players set $out_0 mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits{"metal/nether_alloy":1b,ingot:1b				} if data block ~ ~ ~ Items[{Slot:2b}].tag.ctc.traits{"metal/nether_alloy":1b,raw:1b} run scoreboard players set $out_0 mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits{"metal/ender_alloy":1b,ingot:1b					} if data block ~ ~ ~ Items[{Slot:2b}].tag.ctc.traits{"metal/ender_alloy":1b,raw:1b} run scoreboard players set $out_0 mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits{"metal/plutonium":1b,ingot:1b					} if data block ~ ~ ~ Items[{Slot:2b}].tag.ctc.traits{"metal/plutonium":1b,raw:1b} run scoreboard players set $out_0 mechanization.data 1

#Logs
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:oak_log"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:oak_planks"}] run scoreboard players set $out_0 mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:birch_log"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:birch_planks"}] run scoreboard players set $out_0 mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:spruce_log"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:spruce_planks"}] run scoreboard players set $out_0 mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:jungle_log"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:jungle_planks"}] run scoreboard players set $out_0 mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:dark_oak_log"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:dark_oak_planks"}] run scoreboard players set $out_0 mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:acacia_log"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:acacia_planks"}] run scoreboard players set $out_0 mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:crimson_stem"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:warped_planks"}] run scoreboard players set $out_0 mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:warped_stem"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:crimson_planks"}] run scoreboard players set $out_0 mechanization.data 1

#Extra
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:cobblestone"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:sand"}] run scoreboard players set $out_0 mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:stone"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:gravel"}] run scoreboard players set $out_0 mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:netherrack"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:gravel"}] run scoreboard players set $out_0 mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:gravel"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:flint"}] run scoreboard players set $out_0 mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:blaze_rod"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:blaze_powder"}] run scoreboard players set $out_0 mechanization.data 1
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:bone"}] if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:bone_meal"}] run scoreboard players set $out_0 mechanization.data 1





