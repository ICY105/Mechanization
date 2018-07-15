
#3x3
scoreboard players set temp_1 mech_data 0
execute if score out_0 mech_data matches 9.. if block ~ ~ ~ dropper{Items:[{Slot:5b,id:"minecraft:iron_nugget"}]		} store success score temp_1 mech_data run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:iron_ingot",Count:1b}}
execute if score out_0 mech_data matches 9.. if block ~ ~ ~ dropper{Items:[{Slot:5b,id:"minecraft:gold_nugget"}]		} store success score temp_1 mech_data run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:gold_ingot",Count:1b}}
execute if score out_0 mech_data matches 9.. if block ~ ~ ~ dropper{Items:[{Slot:5b,id:"minecraft:iron_ingot"}]			} store success score temp_1 mech_data run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:iron_block",Count:1b}}
execute if score out_0 mech_data matches 9.. if block ~ ~ ~ dropper{Items:[{Slot:5b,id:"minecraft:gold_ingot"}]			} store success score temp_1 mech_data run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:gold_block",Count:1b}}
execute if score out_0 mech_data matches 9.. if block ~ ~ ~ dropper{Items:[{Slot:5b,id:"minecraft:diamond"}]} unless block ~ ~ ~ dropper{Items:[{Slot:5b,tag:{OreDict:["gemCrystalComposite"]}}]} store success score temp_1 mech_data run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:diamond_block",Count:1b}}
execute if score out_0 mech_data matches 9.. if block ~ ~ ~ dropper{Items:[{Slot:5b,id:"minecraft:emerald"}]			} store success score temp_1 mech_data run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:emerald_block",Count:1b}}
execute if score out_0 mech_data matches 9.. if block ~ ~ ~ dropper{Items:[{Slot:5b,id:"minecraft:redstone"}]			} store success score temp_1 mech_data run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:redstone_block",Count:1b}}
execute if score out_0 mech_data matches 9.. if block ~ ~ ~ dropper{Items:[{Slot:5b,id:"minecraft:coal"}]				} store success score temp_1 mech_data run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:coal_block",Count:1b}}
execute if score out_0 mech_data matches 9.. if block ~ ~ ~ dropper{Items:[{Slot:5b,id:"minecraft:lapis_lazuli"}]		} store success score temp_1 mech_data run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:lapis_block",Count:1b}}
execute if score out_0 mech_data matches 9.. if block ~ ~ ~ dropper{Items:[{Slot:5b,id:"minecraft:bone_meal"}]			} store success score temp_1 mech_data run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:bone_block",Count:1b}}
execute if score out_0 mech_data matches 9.. if block ~ ~ ~ dropper{Items:[{Slot:5b,id:"minecraft:prismarine_shard"}]	} store success score temp_1 mech_data run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:prismarine_bricks",Count:1b}}
execute if score out_0 mech_data matches 9.. if block ~ ~ ~ dropper{Items:[{Slot:5b,id:"minecraft:nether_wart"}]		} store success score temp_1 mech_data run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:nether_wart_block",Count:1b}}
execute if score out_0 mech_data matches 9.. if block ~ ~ ~ dropper{Items:[{Slot:5b,id:"minecraft:slime_ball"}]			} store success score temp_1 mech_data run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:slime_block",Count:1b}}
execute if score out_0 mech_data matches 9.. if block ~ ~ ~ dropper{Items:[{Slot:5b,id:"minecraft:melon"}]				} store success score temp_1 mech_data run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:melon_block",Count:1b}}
execute if score out_0 mech_data matches 9.. if block ~ ~ ~ dropper{Items:[{Slot:5b,id:"minecraft:wheat"}]				} store success score temp_1 mech_data run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:hay_block",Count:1b}}
execute if score out_0 mech_data matches 9.. if block ~ ~ ~ dropper{Items:[{Slot:5b,id:"minecraft:dried_kelp"}]			} store success score temp_1 mech_data run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:dried_kelp_block",Count:1b}}

#custom 3x3
execute if score out_0 mech_data matches 9.. if block ~ ~ ~ dropper{Items:[{Slot:5b,tag:{OreDict:["ingotCopper"]} }]		} store success score temp_1 mech_data run function give:mech_assembly/copper_block
execute if score out_0 mech_data matches 9.. if block ~ ~ ~ dropper{Items:[{Slot:5b,tag:{OreDict:["ingotTin"]} }]			} store success score temp_1 mech_data run function give:mech_assembly/tin_block
execute if score out_0 mech_data matches 9.. if block ~ ~ ~ dropper{Items:[{Slot:5b,tag:{OreDict:["ingotTitanium"]} }]		} store success score temp_1 mech_data run function give:mech_assembly/titanium_block
execute if score out_0 mech_data matches 9.. if block ~ ~ ~ dropper{Items:[{Slot:5b,tag:{OreDict:["gemCrystalComposite"]} }]} store success score temp_1 mech_data run function give:mech_assembly/crystal_block
execute if score out_0 mech_data matches 9.. if block ~ ~ ~ dropper{Items:[{Slot:5b,tag:{OreDict:["ingotUranium"]} }]		} store success score temp_1 mech_data run function give:mech_assembly/uranium_block
execute if score out_0 mech_data matches 9.. if block ~ ~ ~ dropper{Items:[{Slot:5b,tag:{OreDict:["ingotPlutonium"]} }]		} store success score temp_1 mech_data run function give:mech_assembly/plutonium_block
execute if score out_0 mech_data matches 9.. if block ~ ~ ~ dropper{Items:[{Slot:5b,id:"minecraft:flint"}]					} store success score temp_1 mech_data run function give:mech_assembly/flint_block
execute if score out_0 mech_data matches 9.. if block ~ ~ ~ dropper{Items:[{Slot:5b,id:"minecraft:charcoal"}]				} store success score temp_1 mech_data run function give:mech_assembly/charcoal_block
execute if score out_0 mech_data matches 9.. if block ~ ~ ~ dropper{Items:[{Slot:5b,id:"minecraft:nether_star"}]			} store success score temp_1 mech_data run function give:mech_assembly/nether_star_block
execute if score out_0 mech_data matches 9.. if block ~ ~ ~ dropper{Items:[{Slot:5b,id:"minecraft:rotten_flesh"}]					} store success score temp_1 mech_data run function give:mech_assembly/flesh_block
execute if score out_0 mech_data matches 9.. if block ~ ~ ~ dropper{Items:[{Slot:5b,id:"minecraft:sugar_cane"}]				} store success score temp_1 mech_data run function give:mech_assembly/sugar_cane_block

scoreboard players set in_1 mech_data 9
execute if score temp_1 mech_data matches 1 run function mechanization:assembly/machines/compressor/remove_items

#2x2
scoreboard players set temp_1 mech_data 0
execute if score out_0 mech_data matches 4.. if block ~ ~ ~ dropper{Items:[{Slot:5b,id:"minecraft:quartz"}]			} store success score temp_1 mech_data run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:quartz_block",Count:1b}}
execute if score out_0 mech_data matches 4.. if block ~ ~ ~ dropper{Items:[{Slot:5b,id:"minecraft:snowball"}]		} store success score temp_1 mech_data run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:snow_block",Count:1b}}
execute if score out_0 mech_data matches 4.. if block ~ ~ ~ dropper{Items:[{Slot:5b,id:"minecraft:clay_ball"}]		} store success score temp_1 mech_data run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:clay",Count:1b}}
execute if score out_0 mech_data matches 4.. if block ~ ~ ~ dropper{Items:[{Slot:5b,id:"minecraft:glowstone_dust"}]	} store success score temp_1 mech_data run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:glowstone",Count:1b}}
execute if score out_0 mech_data matches 4.. if block ~ ~ ~ dropper{Items:[{Slot:5b,id:"minecraft:string"}]			} store success score temp_1 mech_data run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:white_wool",Count:1b}}
execute if score out_0 mech_data matches 4.. if block ~ ~ ~ dropper{Items:[{Slot:5b,id:"minecraft:rabbit_hide"}]	} store success score temp_1 mech_data run summon item ~ ~ ~ {Tags:["mech_comp_new"],Item:{id:"minecraft:leather",Count:1b}}

execute if score out_0 mech_data matches 4.. if block ~ ~ ~ dropper{Items:[{Slot:05,id:"minecraft:ender_pearl"}]	} store success score temp_1 mech_data run function give:mech_assembly/ender_block

scoreboard players set in_1 mech_data 4
execute if score temp_1 mech_data matches 1 run function mechanization:assembly/machines/compressor/remove_items
