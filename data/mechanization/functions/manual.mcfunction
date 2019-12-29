
execute in minecraft:overworld run data remove block -29999999 0 1601 Items
execute in minecraft:overworld run replaceitem block -29999999 0 1601 container.0 minecraft:written_book{pages:[],author:"ImCoolYeah105", title:"Mechanical Manual",CustomModelData:6421105,mech_version:2} 
execute in minecraft:overworld run data remove block -29999999 0 1601 Items[0].tag.pages

## Start
#1: Title Page
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee10"}]},{"translate":"mech.manual.page_1","color":"black"}]'
#2: Manual
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.image_centered","color":"white","bold":false,"with":[{"text":"\\uee1c"}]},{"translate":"mech.item.mechanical_manual","color":"dark_red","bold":true},{"translate":"mech.manual.page_2.body","color":"black"}]'
#3: Global TOC
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black","bold":false},{"translate":"mech.manual.page_3.title","color":"dark_aqua","bold":true},{"translate":"mech.manual.page_3.basics","clickEvent":{"action":"change_page","value":"4"}},{"translate":"mech.manual.page_3.aom_t1","clickEvent":{"action":"change_page","value":"29"}},{"translate":"mech.manual.page_3.aom_t2","clickEvent":{"action":"change_page","value":"49"}},{"translate":"mech.manual.page_3.aom_t3","clickEvent":{"action":"change_page","value":"71"}},{"translate":"mech.manual.page_3.nuclear","clickEvent":{"action":"change_page","value":"84"}},{"translate":"mech.manual.page_3.gadgets","clickEvent":{"action":"change_page","value":"99"}},{"translate":"mech.manual.page_3.assembly","clickEvent":{"action":"change_page","value":"122"}}]'

## Base Module
#4: Base TOC
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black","bold":false},{"translate":"mech.manual.page_4.title","bold":true,"color":"dark_aqua"},{"translate":"mech.manual.page_4.start","clickEvent":{"action":"change_page","value":"5"}},{"translate":"mech.manual.list","clickEvent":{"action":"change_page","value":"7"},"with":[{"translate":"mech.block.machine_crafting_table"}]},{"translate":"mech.manual.page_4.ores","clickEvent":{"action":"change_page","value":"8"}},{"translate":"mech.manual.list","with":[{"translate":"mech.manual.page_12.title"}],"clickEvent":{"action":"change_page","value":"12"}},{"translate":"mech.manual.page_4.tools","clickEvent":{"action":"change_page","value":"14"}},{"translate":"mech.manual.page_4.batteries","clickEvent":{"action":"change_page","value":"16"}},{"translate":"mech.manual.list","clickEvent":{"action":"change_page","value":"22"},"with":[{"translate":"mech.block.energy_relay"}]},{"translate":"mech.manual.list","clickEvent":{"action":"change_page","value":"24"},"with":[{"translate":"mech.item.machine_upgrade"}]},{"translate":"mech.manual.page_4.networks","clickEvent":{"action":"change_page","value":"27"}},{"text":"\\n\\n                     \\uee06","color":"white","clickEvent":{"action":"change_page","value":"3"}}]'
#5: Getting Started 1
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black","bold":false},{"translate":"mech.manual.page_5.title","bold":true,"color":"dark_red"},{"translate":"mech.manual.page_5.body1"},{"translate":"mech.block.machine_crafting_table","color":"dark_green","clickEvent":{"action":"change_page","value":"7"}},{"translate":"mech.manual.page_5.body2"},{"translate":"mech.item.wrench","color":"dark_green","clickEvent":{"action":"change_page","value":"12"}},{"text":" & "},{"translate":"mech.item.multimeter","color":"dark_green","clickEvent":{"action":"change_page","value":"13"}},{"translate":"mech.manual.page_5.body3"},{"translate":"mech.manual.page_5.body4","color":"dark_green","clickEvent":{"action":"change_page","value":"8"}},{"translate":"mech.manual.page_5.body5"}]'
#6: Getting Started 2
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.page_6.body1","color":"black"}]'
#7: Machine Crafting Table
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee11"}]},{"translate":"mech.block.machine_crafting_table","color":"dark_red"},{"translate":"mech.manual.page_7.body"}]'
#8: Copper Ore
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee12"}]},{"text":"\\n\\n"},{"translate":"mech.ore.copper","color":"dark_red","bold":true},{"translate":"mech.manual.page_8.body"}]'
#9: Tin Ore
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee13"}]},{"text":"\\n\\n"},{"translate":"mech.ore.tin","color":"dark_red","bold":true},{"translate":"mech.manual.page_9.body"}]'
#10: Titanium Ore
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee14"}]},{"text":"\\n\\n"},{"translate":"mech.ore.titanium","color":"dark_red","bold":true},{"translate":"mech.manual.page_10.body"}]'
#11: Uranium Ore
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee15"}]},{"text":"\\n\\n"},{"translate":"mech.ore.uranium","color":"dark_red","bold":true},{"translate":"mech.manual.page_11.body"}]'
#12: Machine Frame 1
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee20"}]},{"translate":"mech.manual.page_12.title","color":"dark_red","bold":true},{"translate":"mech.manual.page_12.body"}]'
#13: Machine Frame 2-3
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"\\n\\n","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee21"}]},{"text":"\\n\\n\\n"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee22"}]}]'

#14: Wrench
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee16"}]},{"translate":"mech.item.wrench","color":"dark_red","bold":true},{"translate":"mech.manual.page_14.body"}]'
#15: Multimeter
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee17"}]},{"translate":"mech.item.multimeter","color":"dark_red","bold":true},{"translate":"mech.manual.page_15.body1"},{"translate":"mech.manual.page_15.body2","color":"dark_green","clickEvent":{"action":"change_page","value":"27"}}]'
#16: Batteries
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.page_16.title","color":"dark_red","bold":true},{"translate":"mech.manual.page_16.body"}]'
#17: Battery Upgrades
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.upgrades","color":"black","with":[{"translate":"mech.manual.page_17.upgrade"},{"translate":"mech.manual.page_17.ender"},{"translate":"mech.manual.page_17.nether"}]}]'
#18: T1 Battery
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee18"}]},{"translate":"mech.block.battery.tier_1","color":"dark_red","bold":true},{"translate":"mech.manual.page_18.body"}]'
#19: T2 Battery
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee19"}]},{"translate":"mech.block.battery.tier_2","color":"dark_red","bold":true},{"translate":"mech.manual.page_19.body"}]'
#20: T3 Battery
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee1a"}]},{"translate":"mech.block.battery.tier_3","color":"dark_red","bold":true},{"translate":"mech.manual.page_20.body"}]'
#21: Q Battery
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee1b"}]},{"translate":"mech.block.battery.quantum","color":"dark_red","bold":true},{"translate":"mech.manual.page_21.body"}]'
#22: Relay
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee07"}]},{"translate":"mech.block.energy_relay","color":"dark_red","bold":true},{"translate":"mech.manual.page_22.body"}]'
#23: Relay modes
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.page_23.body","color":"black"}]'
#24: Upgrade
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee1d"}]},{"translate":"mech.item.machine_upgrade","color":"dark_red","bold":true},{"translate":"mech.manual.page_24.body"}]'
#25: Ender Upgrade
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee1e"}]},{"translate":"mech.item.ender_upgrade","color":"dark_red","bold":true},{"translate":"mech.manual.page_25.body"}]'
#26: Nether Upgrade
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee1f"}]},{"translate":"mech.item.nether_upgrade","color":"dark_red","bold":true},{"translate":"mech.manual.page_26.body"}]'
#27: Networks
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.page_27.title","color":"dark_red","bold":true},{"translate":"mech.manual.page_27.body"}]'
#28: Networks 2
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.page_28.body","color":"black"}]'

## AOM T1
#29: TOC
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black","bold":false},{"translate":"mech.manual.page_29.title","bold":true,"color":"dark_aqua"},{"translate":"mech.manual.list","with":[{"translate":"mech.block.alloy_furnace"}],"clickEvent":{"action":"change_page","value":"30"}},{"translate":"mech.manual.list","with":[{"translate":"mech.manual.page_29.alloys"}],"clickEvent":{"action":"change_page","value":"32"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.furnace_generator"}],"clickEvent":{"action":"change_page","value":"37"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.electric_furnace"}],"clickEvent":{"action":"change_page","value":"39"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.grinder"}],"clickEvent":{"action":"change_page","value":"41"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.tree_feller"}],"clickEvent":{"action":"change_page","value":"43"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.block_breaker"}],"clickEvent":{"action":"change_page","value":"45"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.growth_accelerator"}],"clickEvent":{"action":"change_page","value":"47"}},{"text":"\\n\\n\\n                     \\uee06","color":"white","clickEvent":{"action":"change_page","value":"3"}}]'
#30: Alloy Furnace
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee23"}]},{"translate":"mech.block.alloy_furnace","color":"dark_red","bold":true},{"translate":"mech.manual.page_30.body"}]'
#31: Alloy Furnace Upgrades
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.upgrades","color":"black","with":[{"translate":"mech.manual.page_31.upgrade"},{"translate":"mech.manual.page_31.ender"},{"translate":"mech.manual.page_31.nether"}]}]'
#32: Alloy Recipes T2
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.page_32.title","color":"dark_red","bold":true},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee24"}]},{"text":"\\n\\n"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee25"}]}]'
#33: Alloy Recipes T2
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"\\n\\n"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee26"}]},{"text":"\\n\\n\\n"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee27"}]}]'
#34: Alloy Recipes T3
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.page_34.title","color":"dark_red","bold":true},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee28"}]},{"text":"\\n\\n"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee29"}]}]'
#35: Alloy Recipes T3
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"\\n\\n"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee30"}]},{"text":"\\n\\n\\n"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee31"}]}]'
#36: Alloy Recipes T3
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"\\n\\n"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee32"}]}]'
#37: Furnace Generator
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee33"}]},{"translate":"mech.block.furnace_generator","color":"dark_red"},{"translate":"mech.manual.page_37.body"}]'
#38: Furnace Generator Upgrades
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.upgrades","color":"black","with":[{"translate":"mech.manual.page_38.upgrade"},{"translate":"mech.manual.page_38.ender"},{"translate":"mech.manual.page_38.nether"}]}]'
#39: Electric Furnace
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee34"}]},{"translate":"mech.block.electric_furnace","color":"dark_red","bold":true},{"translate":"mech.manual.page_39.body"}]'
#40: Electric Furnace Upgrades
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.upgrades","color":"black","with":[{"translate":"mech.manual.page_40.upgrade"},{"translate":"mech.manual.page_40.ender"},{"translate":"mech.manual.page_40.nether"}]}]'
#41: Grinder
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee35"}]},{"translate":"mech.block.grinder","color":"dark_red","bold":true},{"translate":"mech.manual.page_41.body"}]'
#42: Grinder Upgrades
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.upgrades","color":"black","with":[{"translate":"mech.manual.page_42.upgrade"},{"translate":"mech.manual.page_42.ender"},{"translate":"mech.manual.page_42.nether"}]}]'
#43: Tree Feller
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee36"}]},{"translate":"mech.block.tree_feller","color":"dark_red","bold":true},{"translate":"mech.manual.page_43.body"}]'
#44: Tree Feller Upgrades
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.upgrades","color":"black","with":[{"translate":"mech.manual.page_44.upgrade"},{"translate":"mech.manual.page_44.ender"},{"translate":"mech.manual.page_44.nether"}]}]'
#45: Block Breaker
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee37"}]},{"translate":"mech.block.block_breaker","color":"dark_red","bold":true},{"translate":"mech.manual.page_45.body"}]'
#46: Block Breaker Upgrades
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.upgrades","color":"black","with":[{"translate":"mech.manual.page_46.upgrade"},{"translate":"mech.manual.page_46.ender"},{"translate":"mech.manual.page_46.nether"}]}]'
#47: Growth Accelerator
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee38"}]},{"translate":"mech.block.growth_accelerator","color":"dark_red"},{"translate":"mech.manual.page_47.body"}]'
#48: Growth Accelerator Upgrades
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.upgrades","color":"black","with":[{"translate":"mech.manual.page_48.upgrade"},{"translate":"mech.manual.page_48.ender"},{"translate":"mech.manual.page_48.nether"}]}]'

## AOM T2
#49: TOC
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black","bold":false},{"translate":"mech.manual.page_49.title","bold":true,"color":"dark_aqua"},{"translate":"mech.manual.list","with":[{"translate":"mech.block.solar_panel"}],"clickEvent":{"action":"change_page","value":"50"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.bio_generator"}],"clickEvent":{"action":"change_page","value":"52"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.quarry"}],"clickEvent":{"action":"change_page","value":"56"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.auto_farm"}],"clickEvent":{"action":"change_page","value":"59"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.auto_fisher"}],"clickEvent":{"action":"change_page","value":"61"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.item_reformer"}],"clickEvent":{"action":"change_page","value":"63"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.item_reformer"}],"clickEvent":{"action":"change_page","value":"65"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.lava_fabricator"}],"clickEvent":{"action":"change_page","value":"67"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.super_piston"}],"clickEvent":{"action":"change_page","value":"69"}},{"text":"\\n\\n                     \\uee06","color":"white","clickEvent":{"action":"change_page","value":"3"}}]'
#50: Solar Panel
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee39"}]},{"translate":"mech.block.solar_panel","color":"dark_red","bold":true},{"translate":"mech.manual.page_50.body"}]'
#51: Solar Panel Upgrades
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.upgrades","color":"black","with":[{"translate":"mech.manual.page_51.upgrade"},{"translate":"mech.manual.page_51.ender"},{"translate":"mech.manual.page_51.nether"}]}]'
#52: Bio Generator
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee3a"}]},{"translate":"mech.block.bio_generator","color":"dark_red","bold":true},{"translate":"mech.manual.page_52.body"}]'
#53: Bio Generator Upgrades
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.upgrades","color":"black","with":[{"translate":"mech.manual.page_53.upgrade"},{"translate":"mech.manual.page_53.ender"},{"translate":"mech.manual.page_53.nether"}]}]'
#54: Bio Generator Fuels 1
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.page_54.title","color":"dark_red","bold":true},{"translate":"mech.manual.page_54.body","color":"black","bold":false}]}]'
#55: Bio Generator Fuels 2
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.page_55.body","color":"black","bold":false}]}]'
#56: Quarry
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee3b"}]},{"translate":"mech.block.quarry","color":"dark_red","bold":true},{"translate":"mech.manual.page_56.body"}]'
#57: Quarry Setup
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"text":"\\uee3c","color":"white"},{"translate":"mech.manual.page_57.body"}]'
#58: Quarry Upgrades
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.upgrades","color":"black","with":[{"translate":"mech.manual.page_58.upgrade"},{"translate":"mech.manual.page_58.ender"},{"translate":"mech.manual.page_58.nether"}]}]'
#59: Auto Farm
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee3d"}]},{"translate":"mech.block.auto_farm","color":"dark_red","bold":true},{"translate":"mech.manual.page_59.body"}]'
#60: Auto Farm Upgrades
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.upgrades","color":"black","with":[{"translate":"mech.manual.page_60.upgrade"},{"translate":"mech.manual.page_60.ender"},{"translate":"mech.manual.page_60.nether"}]}]'
#61: Auto Fisher
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee3f"}]},{"translate":"mech.block.auto_fisher","color":"dark_red","bold":true},{"translate":"mech.manual.page_61.body"}]'
#62: Auto Fisher Upgrades
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.upgrades","color":"black","with":[{"translate":"mech.manual.page_62.upgrade"},{"translate":"mech.manual.page_62.ender"},{"translate":"mech.manual.page_62.nether"}]}]'
#63: Item Reformer
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee40"}]},{"translate":"mech.block.item_reformer","color":"dark_red","bold":true},{"translate":"mech.manual.page_63.body"}]'
#64: Item Reformer Upgrades
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.upgrades","color":"black","with":[{"translate":"mech.manual.page_64.upgrade"},{"translate":"mech.manual.page_64.ender"},{"translate":"mech.manual.page_64.nether"}]}]'
#65: Mob Grinder
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee41"}]},{"translate":"mech.block.mob_grinder","color":"dark_red","bold":true},{"translate":"mech.manual.page_65.body"}]'
#66: Mob Grinder Upgrades
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.upgrades","color":"black","with":[{"translate":"mech.manual.page_66.upgrade"},{"translate":"mech.manual.page_66.ender"},{"translate":"mech.manual.page_66.nether"}]}]'
#67: Lava Fabricator
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee42"}]},{"translate":"mech.block.lava_fabricator","color":"dark_red","bold":true},{"translate":"mech.manual.page_67.body"}]'
#68: Lava Fabricator Upgrades
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.upgrades","color":"black","with":[{"translate":"mech.manual.page_68.upgrade"},{"translate":"mech.manual.page_68.ender"},{"translate":"mech.manual.page_68.nether"}]}]'
#69: Super Piston
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee43"}]},{"translate":"mech.block.super_piston","color":"dark_red","bold":true},{"translate":"mech.manual.page_69.body"}]'
#70: Super Sticky Piston/Turn Table recipe
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee44"}]},{"text":"\\n\\n\\n"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee45"}]}]'

## AOM T3
#71: TOC
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black","bold":false},{"translate":"mech.manual.page_71.title","bold":true,"color":"dark_aqua"},{"translate":"mech.manual.list","with":[{"translate":"mech.block.dimensional_generator"}],"clickEvent":{"action":"change_page","value":"72"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.disenchanter"}],"clickEvent":{"action":"change_page","value":"77"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.teleporter"}],"clickEvent":{"action":"change_page","value":"79"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.spawner_controller"}],"clickEvent":{"action":"change_page","value":"81"}},{"translate":"mech.manual.list","with":[{"translate":"mech.item.spawner_mover"}],"clickEvent":{"action":"change_page","value":"83"}},{"text":"\\n\\n\\n\\n\\n                     \\uee06","color":"white","clickEvent":{"action":"change_page","value":"3"}}]'
#72: Dimensional Generator
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee46"}]},{"translate":"mech.block.dimensional_generator","color":"dark_red","bold":true},{"translate":"mech.manual.page_72.body"}]'
#73: Dimensional Generator Upgrades
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.upgrades","color":"black","with":[{"translate":"mech.manual.page_73.upgrade"},{"translate":"mech.manual.page_73.ender"},{"translate":"mech.manual.page_73.nether"}]}]'
#74: Dimensional Generator Overworld Fuels
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.page_74.title","color":"dark_red","bold":true},{"translate":"mech.manual.page_74.body","color":"black","bold":false}]}]'
#75: Dimensional Generator Ender Fuels
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.page_75.title","color":"dark_red","bold":true},{"translate":"mech.manual.page_75.body","color":"black","bold":false}]}]'
#76: Dimensional Generator Nether Fuels
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.page_76.title","color":"dark_red","bold":true},{"translate":"mech.manual.page_76.body","color":"black","bold":false}]}]'
#77: Disenchanter
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee47"}]},{"translate":"mech.block.disenchanter","color":"dark_red","bold":true},{"translate":"mech.manual.page_77.body"}]'
#78: Disenchanter Upgrades
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.upgrades","color":"black","with":[{"translate":"mech.manual.page_78.upgrade"},{"translate":"mech.manual.page_78.ender"},{"translate":"mech.manual.page_78.nether"}]}]'
#79: Teleporter
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee48"}]},{"translate":"mech.block.teleporter","color":"dark_red","bold":true},{"translate":"mech.manual.page_79.body"}]'
#80: Teleporter Upgrades
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.upgrades","color":"black","with":[{"translate":"mech.manual.page_80.upgrade"},{"translate":"mech.manual.page_80.ender"},{"translate":"mech.manual.page_80.nether"}]}]'
#81: Spawner Controller
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee49"}]},{"translate":"mech.block.spawner_controller","color":"dark_red","bold":true},{"translate":"mech.manual.page_81.body"}]'
#82: Spawner Controller Upgrades
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.upgrades","color":"black","with":[{"translate":"mech.manual.page_82.upgrade"},{"translate":"mech.manual.page_82.ender"},{"translate":"mech.manual.page_82.nether"}]}]'
#83: Spawner Mover
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee4a"}]},{"translate":"mech.item.spawner_mover","color":"dark_red","bold":true},{"translate":"mech.manual.page_83.body"}]'

## Nuclear Ascension
#84: TOC
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black","bold":false},{"translate":"mech.manual.page_84.title","bold":true,"color":"dark_aqua"},{"translate":"mech.manual.list","with":[{"translate":"mech.manual.page_84.fuel_cells"}],"clickEvent":{"action":"change_page","value":"85"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.centrifuge"}],"clickEvent":{"action":"change_page","value":"86"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.control_rod"}],"clickEvent":{"action":"change_page","value":"87"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.temperature_observer"}],"clickEvent":{"action":"change_page","value":"88"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.reaction_rate_observer"}],"clickEvent":{"action":"change_page","value":"89"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.steam_turbine"}],"clickEvent":{"action":"change_page","value":"90"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.fission_reactor"}],"clickEvent":{"action":"change_page","value":"91"}},{"translate":"mech.manual.list","with":[{"translate":"mech.manual.page_84.reactor_mechanics"}],"clickEvent":{"action":"change_page","value":"92"}},{"translate":"mech.manual.list","with":[{"translate":"mech.manual.page_84.block_stats"}],"clickEvent":{"action":"change_page","value":"96"}},{"text":"\\n                     \\uee06","color":"white","clickEvent":{"action":"change_page","value":"3"}}]'
#85: Fuel Cells
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee4b"}]},{"translate":"mech.manual.page_85.title","color":"dark_red","bold":true},{"translate":"mech.manual.page_85.body"}]'
#86: Centrifuge
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee4c"}]},{"translate":"mech.block.centrifuge","color":"dark_red","bold":true},{"translate":"mech.manual.page_86.body"}]'
#87: Control Rod
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee4d"}]},{"translate":"mech.block.control_rod","color":"dark_red","bold":true},{"translate":"mech.manual.page_87.body"}]'
#88: Temperature Observer
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee4e"}]},{"translate":"mech.block.temperature_observer","color":"dark_red","bold":true},{"translate":"mech.manual.page_88.body"}]'
#89: Reaction Rate Observer
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee4f"}]},{"translate":"mech.block.reaction_rate_observer","color":"dark_red","bold":true},{"translate":"mech.manual.page_89.body"}]'
#90: Steam Turbine
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee50"}]},{"translate":"mech.block.steam_turbine","color":"dark_red","bold":true},{"translate":"mech.manual.page_90.body"}]'
#91: Fission Reactor
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee51"}]},{"translate":"mech.block.fission_reactor","color":"dark_red","bold":true},{"translate":"mech.manual.page_91.body"}]'
#92: Reactor Mechanics
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.page_92.title","color":"dark_red","bold":true},{"translate":"mech.manual.page_92.body","color":"black","bold":false}]'
#93:Reactor Mechanics 2
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.page_93.body","color":"black","bold":false}]'
#94: Reactor Mechanics 3
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee52"}]},{"translate":"mech.manual.page_94.body"}]'
#95: Reactor Mechanics 4
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.page_95.body","color":"black","bold":false}]'
#96: Block Stats Exchangers
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.page_96.title","color":"dark_red","bold":true},{"translate":"mech.manual.page_96.body","color":"black","bold":false}]'
#97: Block Stats Boilers
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.page_97.title","color":"dark_red","bold":true},{"translate":"mech.manual.page_97.body","color":"black","bold":false}]'
#98: Block Stats Coolers
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.page_98.title","color":"dark_red","bold":true},{"translate":"mech.manual.page_98.body","color":"black","bold":false}]'


### Gadgets
#99: TOC
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black","bold":false},{"translate":"mech.manual.page_99.title","bold":true,"color":"dark_aqua"},{"translate":"mech.manual.list","with":[{"translate":"mech.block.charging_station"}],"clickEvent":{"action":"change_page","value":"100"}},{"translate":"mech.manual.list","with":[{"translate":"mech.item.portable_battery"}],"clickEvent":{"action":"change_page","value":"101"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.tinker_table"}],"clickEvent":{"action":"change_page","value":"102"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.xp_tank"}],"clickEvent":{"action":"change_page","value":"103"}},{"translate":"mech.manual.list","with":[{"translate":"mech.manual.page_99.new_tools_armor"}],"clickEvent":{"action":"change_page","value":"104"}},{"translate":"mech.manual.list","with":[{"translate":"mech.manual.page_99.titanium_weapons"}],"clickEvent":{"action":"change_page","value":"107"}},{"translate":"mech.manual.list","with":[{"translate":"mech.manual.page_99.weapon_upgrades"}],"clickEvent":{"action":"change_page","value":"108"}},{"translate":"mech.manual.list","with":[{"translate":"mech.manual.page_99.titanium_tools"}],"clickEvent":{"action":"change_page","value":"110"}},{"translate":"mech.manual.list","with":[{"translate":"mech.manual.page_99.tool_upgrades"}],"clickEvent":{"action":"change_page","value":"111"}},{"translate":"mech.manual.list","with":[{"translate":"mech.manual.page_99.titanium_armor"}],"clickEvent":{"action":"change_page","value":"113"}},{"translate":"mech.manual.list","with":[{"translate":"mech.manual.page_99.armor_upgrades"}],"clickEvent":{"action":"change_page","value":"114"}},{"translate":"mech.manual.list","with":[{"translate":"mech.manual.page_99.guns"}],"clickEvent":{"action":"change_page","value":"117"}},{"translate":"mech.manual.page_99.gun_upgrades","clickEvent":{"action":"change_page","value":"121"}},{"text":"  \\uee06","color":"white","clickEvent":{"action":"change_page","value":"3"}}]'
#100: Charging Station
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee53"}]},{"translate":"mech.block.charging_station","color":"dark_red","bold":true},{"translate":"mech.manual.page_100.body"}]'
#101: Portable Battery
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee54"}]},{"translate":"mech.item.portable_battery","color":"dark_red","bold":true},{"translate":"mech.manual.page_101.body"}]'
#102: Tinker Table
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee55"}]},{"translate":"mech.block.tinker_table","color":"dark_red","bold":true},{"translate":"mech.manual.page_102.body"}]'
#103: XP Tank
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee56"}]},{"translate":"mech.block.xp_tank","color":"dark_red","bold":true},{"translate":"mech.manual.page_103.body"}]'
#104: New Tools/Armor 1
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.page_104.title","color":"dark_red","bold":true},{"translate":"mech.manual.page_104.body","color":"black","bold":false}]'
#105: New Tools/Armor 2
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.page_105.body","color":"black","bold":false}]'
#106: New Tools/Armor 3
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.page_106.body","color":"black","bold":false}]'
#107: Titanium Sword
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee57"}]},{"translate":"mech.manual.page_107.title","color":"dark_red","bold":true},{"translate":"mech.manual.page_107.body"}]'
#108: Weapon Upgrades 1
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"\\uee58 \\n\\n\\n\\n\\n\\n\\n\\n","color":"white"},{"translate":"mech.manual.page_108.title","color":"dark_red","bold":true},{"translate":"mech.manual.page_108.body","color":"black","bold":false}]'
#109: Weapon Upgrades 2
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"\\uee59 \\n\\n\\n\\n\\n\\n\\n\\n","color":"white"},{"translate":"mech.manual.page_109.body","color":"black","bold":false}]'
#110: Titanium Tools
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"\\uee5a \\n\\n\\n\\n\\n\\n\\n\\n","color":"white"},{"translate":"mech.manual.page_110.title","color":"dark_red","bold":true},{"translate":"mech.manual.page_110.body","color":"black","bold":false}]'
#111: Tools Upgrades 1
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"\\uee5b \\n\\n\\n\\n\\n\\n\\n\\n","color":"white"},{"translate":"mech.manual.page_111.body","color":"black","bold":false}]'
#112: Tools Upgrades 2
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"\\uee5c \\n\\n\\n\\n\\n\\n\\n\\n","color":"white"},{"translate":"mech.manual.page_112.body","color":"black","bold":false}]'
#113: Titanium Armor
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"\\uee5d \\n\\n\\n\\n\\n\\n\\n\\n","color":"white"},{"translate":"mech.manual.page_113.title","color":"dark_red","bold":true},{"translate":"mech.manual.page_113.body","color":"black","bold":false}]'
#114: Armor Upgrades 1
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"\\uee5e \\n\\n\\n\\n\\n\\n\\n\\n","color":"white"},{"translate":"mech.manual.page_114.title","color":"dark_red","bold":true},{"translate":"mech.manual.page_114.body","color":"black","bold":false}]'
#115: Armor Upgrades 2
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"\\uee5f \\n\\n\\n\\n\\n\\n\\n\\n","color":"white"},{"translate":"mech.manual.page_115.body","color":"black","bold":false}]'
#116: Armor Upgrades 3
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"\\uee60 \\n\\n\\n\\n\\n\\n\\n\\n","color":"white"},{"translate":"mech.manual.page_116.body","color":"black","bold":false}]'
#117: Gun Parts
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"\\uee61 \\n\\n\\n\\n\\n\\n\\n\\n","color":"white"},{"translate":"mech.manual.page_117.title","color":"dark_red","bold":true},{"translate":"mech.manual.page_117.body","color":"black","bold":false}]'
#118: Guns
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"\\uee62 \\n\\n\\n\\n\\n\\n\\n\\n","color":"white"},{"translate":"mech.manual.page_118.title","color":"dark_red","bold":true},{"translate":"mech.manual.page_118.body","color":"black","bold":false}]'
#119: Gun Info 1
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.page_119.body","color":"black","bold":false}]'
#120: Gun Info 2
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.page_120.body","color":"black","bold":false}]'
#121: Gun Upgrades
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"\\uee63 \\n\\n\\n\\n\\n\\n\\n\\n","color":"white"},{"translate":"mech.manual.page_121.body","color":"black","bold":false}]'

### Assembly
#122: TOC
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black","bold":false},{"translate":"mech.manual.page_122.title","bold":true,"color":"dark_aqua"},{"translate":"mech.manual.list","with":[{"translate":"mech.block.compressor"}],"clickEvent":{"action":"change_page","value":"123"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.decompressor"}],"clickEvent":{"action":"change_page","value":"124"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.stone_cutter"}],"clickEvent":{"action":"change_page","value":"125"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.dye_machine"}],"clickEvent":{"action":"change_page","value":"128"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.fast_hopper"}],"clickEvent":{"action":"change_page","value":"129"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.ender_hopper"}],"clickEvent":{"action":"change_page","value":"130"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.item_transmitter"}],"clickEvent":{"action":"change_page","value":"131"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.item_receiver"}],"clickEvent":{"action":"change_page","value":"133"}},{"translate":"mech.manual.list","with":[{"translate":"mech.item.item_filter"}],"clickEvent":{"action":"change_page","value":"134"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.unlimited_storage_unit"}],"clickEvent":{"action":"change_page","value":"135"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.auto_jukebox"}],"clickEvent":{"action":"change_page","value":"136"}},{"text":"\\n                     \\uee06","color":"white","clickEvent":{"action":"change_page","value":"3"}}]'
#123: Compressor
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee64"}]},{"translate":"mech.block.compressor","color":"dark_red","bold":true},{"translate":"mech.manual.page_123.body"}]'
#124: Decompressor
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee65"}]},{"translate":"mech.block.decompressor","color":"dark_red","bold":true},{"translate":"mech.manual.page_124.body"}]'
#125: Stone Cutter
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee66"}]},{"translate":"mech.block.stone_cutter","color":"dark_red","bold":true},{"translate":"mech.manual.page_125.body"}]'
#126: Stone Cutter Recipes 1
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.page_126.body","color":"black"}]'
#127: Stone Cutter Recipes 2
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.page_127.body","color":"black"}]'
#128: Dye Machine
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee67"}]},{"translate":"mech.block.dye_machine","color":"dark_red","bold":true},{"translate":"mech.manual.page_128.body"}]'
#129: Fast Hopper
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee68"}]},{"translate":"mech.block.fast_hopper","color":"dark_red","bold":true},{"translate":"mech.manual.page_129.body"}]'
#130: Ender Hopper
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee69"}]},{"translate":"mech.block.ender_hopper","color":"dark_red","bold":true},{"translate":"mech.manual.page_130.body"}]'
#131: Item Transmitter
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee6a"}]},{"translate":"mech.block.item_transmitter","color":"dark_red","bold":true},{"translate":"mech.manual.page_131.body"}]'
#132: Item Transmitter Upgrades
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.upgrades","color":"black","with":[{"translate":"mech.manual.page_132.upgrade"},{"translate":"mech.manual.page_132.ender"},{"translate":"mech.manual.page_132.nether"}]}]'
#133: Item Receiver
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee6b"}]},{"translate":"mech.block.item_receiver","color":"dark_red","bold":true},{"translate":"mech.manual.page_132.body"}]'
#134: Item Filter
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee6c"}]},{"translate":"mech.item.item_filter","color":"dark_red","bold":true},{"translate":"mech.manual.page_133.body"}]'
#135: Unlimited Storage Unit
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee6d"}]},{"translate":"mech.block.unlimited_storage_unit","color":"dark_red","bold":true},{"translate":"mech.manual.page_134.body"}]'
#136: Auto Jukebox
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee6e"}]},{"translate":"mech.block.auto_jukebox","color":"dark_red","bold":true},{"translate":"mech.manual.page_135.body"},{"text":"Find the easter egg legit :P","obfuscated":true}]'

#137: End
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.page_136.body","color":"dark_aqua","bold":true},{"text":"\\n\\n\\n\\n\\n\\n\\n\\n\\n                  \\uee06","color":"white","clickEvent":{"action":"change_page","value":"3"}}]'









