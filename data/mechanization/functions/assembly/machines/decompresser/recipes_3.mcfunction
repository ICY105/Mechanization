scoreboard players set temp_1 mech_data 0

#3x3
execute if block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:iron_ingot"}]		} store success score temp_1 mech_data run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:iron_nugget",Count:9b}}
execute if block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:gold_ingot"}]		} store success score temp_1 mech_data run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:gold_nugget",Count:9b}}
execute if block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:iron_block"}]		} store success score temp_1 mech_data run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:iron_ingot",Count:9b}}
execute if block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:gold_block"}]		} store success score temp_1 mech_data run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:gold_ingot",Count:9b}}
execute if block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:diamond_block"}]	} store success score temp_1 mech_data run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:diamond",Count:9b}}
execute if block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:emerald_block"}]	} store success score temp_1 mech_data run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:emerald",Count:9b}}
execute if block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:redstone_block"}]	} store success score temp_1 mech_data run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:redstone",Count:9b}}
execute if block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:slime_block"}]		} store success score temp_1 mech_data run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:slime_ball",Count:9b}}
execute if block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:melon_block"}]		} store success score temp_1 mech_data run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:melon",Count:9b}}
execute if block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:hay_block"}]		} store success score temp_1 mech_data run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:wheat",Count:9b}}
execute if block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:dried_kelp_block"}]} store success score temp_1 mech_data run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:dried_kelp",Count:9b}}
execute if block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:coal_block"}]		} store success score temp_1 mech_data run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:coal",Count:9b}}
execute if block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:lapis_block"}]		} store success score temp_1 mech_data run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:lapis_lazuli",Count:9b}}
execute if block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:bone_block"}]		} store success score temp_1 mech_data run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:bone_meal",Count:9b}}
execute if block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:prismarine_bricks"}]} store success score temp_1 mech_data run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:prismarine_shard",Count:9b}}
execute if block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:nether_wart_block"}]} store success score temp_1 mech_data run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:nether_wart",Count:9b}}

# 2x2
execute if block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:quartz_block"}]} store success score temp_1 mech_data run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:quartz",Count:4b}}
execute if block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:snow_block"}]	} store success score temp_1 mech_data run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:snowball",Count:4b}}
execute if block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:clay"}]		} store success score temp_1 mech_data run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:clay_ball",Count:4}}
execute if block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:glowstone"}]	} store success score temp_1 mech_data run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:glowstone_dust",Count:4b}}
execute if block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:white_wool"}]	} store success score temp_1 mech_data run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:string",Count:4b}}

#cleanup
execute if score temp_1 mech_data matches 1 run function mechanization:assembly/machines/compressor/remove_items
