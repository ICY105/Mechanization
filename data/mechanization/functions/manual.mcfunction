
execute in minecraft:overworld run data remove block -29999999 0 1601 Items
execute in minecraft:overworld run replaceitem block -29999999 0 1601 container.0 minecraft:written_book{pages:[],author:"ImCoolYeah105", title:"Mechanical Manual"} 
execute in minecraft:overworld run data remove block -29999999 0 1601 Items[0].tag.pages

## Start
#1: Title Page
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee10"}]},{"translate":"mech.manual.page_1","color":"black"}]'
#2: Manual
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.image_centered","color":"white","bold":false,"with":[{"text":"\\uee1c"}]},{"translate":"mech.item.mechanical_manual","color":"dark_red","bold":true},{"translate":"mech.manual.page_2.body","color":"black"}]'
#3: Global TOC
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black","bold":false},{"translate":"mech.manual.page_3.title","color":"dark_aqua","bold":true},{"translate":"mech.manual.page_3.basics","clickEvent":{"action":"change_page","value":"4"}},{"translate":"mech.manual.page_3.aom_t1","clickEvent":{"action":"change_page","value":"27"}},{"translate":"mech.manual.page_3.aom_t2","clickEvent":{"action":"change_page","value":"3"}},{"translate":"mech.manual.page_3.aom_t3","clickEvent":{"action":"change_page","value":"3"}},{"translate":"mech.manual.page_3.nuclear","clickEvent":{"action":"change_page","value":"3"}},{"translate":"mech.manual.page_3.gadgets","clickEvent":{"action":"change_page","value":"3"}},{"translate":"mech.manual.page_3.assembly","clickEvent":{"action":"change_page","value":"3"}}]'

## Base Module
#4: Base TOC
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black","bold":false},{"translate":"mech.manual.page_4.title","bold":true,"color":"dark_aqua"},{"translate":"mech.manual.page_4.start","clickEvent":{"action":"change_page","value":"5"}},{"translate":"mech.manual.list","clickEvent":{"action":"change_page","value":"7"},"with":[{"translate":"mech.block.machine_crafting_table"}]},{"translate":"mech.manual.page_4.ores","clickEvent":{"action":"change_page","value":"8"}},{"translate":"mech.manual.page_4.tools","clickEvent":{"action":"change_page","value":"12"}},{"translate":"mech.manual.page_4.batteries","clickEvent":{"action":"change_page","value":"14"}},{"translate":"mech.manual.list","clickEvent":{"action":"change_page","value":"20"},"with":[{"translate":"mech.block.energy_relay"}]},{"translate":"mech.manual.list","clickEvent":{"action":"change_page","value":"22"},"with":[{"translate":"mech.item.machine_upgrade"}]},{"translate":"mech.manual.page_4.networks","clickEvent":{"action":"change_page","value":"25"}}]'
#5: Getting Started 1
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black","bold":false},{"translate":"mech.manual.page_5.title","bold":true,"color":"dark_red"},{"translate":"mech.manual.page_5.body1"},{"translate":"mech.block.machine_crafting_table","color":"dark_green","clickEvent":{"action":"change_page","value":"6"}},{"translate":"mech.manual.page_5.body2"},{"translate":"mech.item.wrench","color":"dark_green","clickEvent":{"action":"change_page","value":"11"}},{"text":" & "},{"translate":"mech.item.multimeter","color":"dark_green","clickEvent":{"action":"change_page","value":"12"}},{"translate":"mech.manual.page_5.body3"},{"translate":"mech.manual.page_5.body4","color":"dark_green","clickEvent":{"action":"change_page","value":"7"}},{"translate":"mech.manual.page_5.body5"}]'
#6: Getting Started 2
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.page_6.body1","color":"black"}]'
#7: Machine Crafting Table
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee11"}]},{"translate":"mech.block.machine_crafting_table","color":"dark_red"},{"translate":"mech.manual.page_7.body"}]'
#8: Copper Ore
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee12"}]},{"text":"\\n\\n"},{"translate":"mech.resource.ore","color":"dark_red","bold":true,"with":[{"translate":"mech.resource.copper"}]},{"translate":"mech.manual.page_8.body"}]'
#9: Tin Ore
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee13"}]},{"text":"\\n\\n"},{"translate":"mech.resource.ore","color":"dark_red","bold":true,"with":[{"translate":"mech.resource.tin"}]},{"translate":"mech.manual.page_9.body"}]'
#10: Titanium Ore
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee14"}]},{"text":"\\n\\n"},{"translate":"mech.resource.ore","color":"dark_red","bold":true,"with":[{"translate":"mech.resource.titanium"}]},{"translate":"mech.manual.page_10.body"}]'
#11: Uranium Ore
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee15"}]},{"text":"\\n\\n"},{"translate":"mech.resource.ore","color":"dark_red","bold":true,"with":[{"translate":"mech.resource.uranium"}]},{"translate":"mech.manual.page_11.body"}]'
#12: Wrench
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee16"}]},{"translate":"mech.item.wrench","color":"dark_red","bold":true},{"translate":"mech.manual.page_12.body"}]'
#13: Multimeter
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee17"}]},{"translate":"mech.item.multimeter","color":"dark_red","bold":true},{"translate":"mech.manual.page_13.body1"},{"translate":"mech.manual.page_13.body2","color":"dark_green","clickEvent":{"action":"change_page","value":"6"}}]'
#14: Batteries
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.page_14.title","color":"dark_red","bold":true},{"translate":"mech.manual.page_14.body"}]'
#15: Battery Upgrades
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.upgrades","color":"black","with":[{"translate":"mech.manual.page_15.upgrade"},{"translate":"mech.manual.page_15.ender"},{"translate":"mech.manual.page_15.nether"}]}]'
#16: T1 Battery
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee18"}]},{"translate":"mech.block.battery.tier_1","color":"dark_red","bold":true},{"translate":"mech.manual.page_16.body"}]'
#17: T2 Battery
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee19"}]},{"translate":"mech.block.battery.tier_2","color":"dark_red","bold":true},{"translate":"mech.manual.page_17.body"}]'
#18: T3 Battery
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee1a"}]},{"translate":"mech.block.battery.tier_3","color":"dark_red","bold":true},{"translate":"mech.manual.page_18.body"}]'
#19: Q Battery
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee1b"}]},{"translate":"mech.block.battery.quantum","color":"dark_red","bold":true},{"translate":"mech.manual.page_19.body"}]'
#20: Relay
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee1d"}]},{"translate":"mech.block.energy_relay","color":"dark_red","bold":true},{"translate":"mech.manual.page_20.body"}]'
#21: Relay modes
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.page_21.body","color":"black"}]'
#22: Upgrade
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee1d"}]},{"translate":"mech.item.machine_upgrade","color":"dark_red","bold":true},{"translate":"mech.manual.page_22.body"}]'
#23: Ender Upgrade
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee1e"}]},{"translate":"mech.item.ender_upgrade","color":"dark_red","bold":true},{"translate":"mech.manual.page_23.body"}]'
#24: Nether Upgrade
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee1f"}]},{"translate":"mech.item.nether_upgrade","color":"dark_red","bold":true},{"translate":"mech.manual.page_24.body"}]'
#25: Networks
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.page_25.title","color":"dark_red","bold":true},{"translate":"mech.manual.page_25.body"}]'
#26: Networks 2
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.page_26.body","color":"black"}]'

## AOM T1
#27: TOC
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black","bold":false},{"translate":"mech.manual.page_27.title","bold":true,"color":"dark_aqua"},{"translate":"mech.manual.page_4.start","clickEvent":{"action":"change_page","value":"5"}},{"translate":"mech.manual.list","clickEvent":{"action":"change_page","value":"7"},"with":[{"translate":"mech.block.machine_crafting_table"}]},{"translate":"mech.manual.page_4.ores","clickEvent":{"action":"change_page","value":"8"}},{"translate":"mech.manual.page_4.tools","clickEvent":{"action":"change_page","value":"12"}},{"translate":"mech.manual.page_4.batteries","clickEvent":{"action":"change_page","value":"14"}},{"translate":"mech.manual.list","clickEvent":{"action":"change_page","value":"20"},"with":[{"translate":"mech.block.energy_relay"}]},{"translate":"mech.manual.list","clickEvent":{"action":"change_page","value":"22"},"with":[{"translate":"mech.item.machine_upgrade"}]},{"translate":"mech.manual.page_4.networks","clickEvent":{"action":"change_page","value":"25"}}]'

















