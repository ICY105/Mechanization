
execute in minecraft:overworld run data remove block -29999999 0 1601 Items
execute in minecraft:overworld run replaceitem block -29999999 0 1601 container.0 minecraft:written_book{pages:[],author:"ImCoolYeah105", title:"Mechanical Manual Vol 2",CustomModelData:6421105,mech_version:2} 
execute in minecraft:overworld run data remove block -29999999 0 1601 Items[0].tag.pages

## Start
#1: Title Page
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee10"}]},{"translate":"mech.manual.page_1","color":"black"}]'
#2: Manual
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.image_centered","color":"white","bold":false,"with":[{"text":"\\uee6f"}]},{"translate":"mech.item.mechanical_manual","color":"dark_red","bold":true},{"text":"\\n        Vol 2","color":"dark_red","bold":true},{"translate":"mech.manual.page_2.body","color":"black"}]'
#3: Global TOC
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black","bold":false},{"translate":"mech.manual.page_3.title","color":"dark_aqua","bold":true},{"translate":"mech.manual.page_3.gadgets","clickEvent":{"action":"change_page","value":"4"}},{"translate":"mech.manual.page_3.assembly","clickEvent":{"action":"change_page","value":"27"}}]'

### Gadgets
#4: TOC
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black","bold":false},{"translate":"mech.manual.page_99.title","bold":true,"color":"dark_aqua"},{"translate":"mech.manual.list","with":[{"translate":"mech.block.charging_station"}],"clickEvent":{"action":"change_page","value":"5"}},{"translate":"mech.manual.list","with":[{"translate":"mech.item.portable_battery"}],"clickEvent":{"action":"change_page","value":"6"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.tinker_table"}],"clickEvent":{"action":"change_page","value":"7"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.xp_tank"}],"clickEvent":{"action":"change_page","value":"8"}},{"translate":"mech.manual.list","with":[{"translate":"mech.manual.page_99.new_tools_armor"}],"clickEvent":{"action":"change_page","value":"9"}},{"translate":"mech.manual.list","with":[{"translate":"mech.manual.page_99.titanium_weapons"}],"clickEvent":{"action":"change_page","value":"12"}},{"translate":"mech.manual.list","with":[{"translate":"mech.manual.page_99.weapon_upgrades"}],"clickEvent":{"action":"change_page","value":"13"}},{"translate":"mech.manual.list","with":[{"translate":"mech.manual.page_99.titanium_tools"}],"clickEvent":{"action":"change_page","value":"15"}},{"translate":"mech.manual.list","with":[{"translate":"mech.manual.page_99.tool_upgrades"}],"clickEvent":{"action":"change_page","value":"16"}},{"translate":"mech.manual.list","with":[{"translate":"mech.manual.page_99.titanium_armor"}],"clickEvent":{"action":"change_page","value":"18"}},{"translate":"mech.manual.list","with":[{"translate":"mech.manual.page_99.armor_upgrades"}],"clickEvent":{"action":"change_page","value":"19"}},{"translate":"mech.manual.list","with":[{"translate":"mech.manual.page_99.guns"}],"clickEvent":{"action":"change_page","value":"22"}},{"translate":"mech.manual.page_99.gun_upgrades","clickEvent":{"action":"change_page","value":"26"}},{"text":"  \\uee06","color":"white","clickEvent":{"action":"change_page","value":"3"}}]'
#5: Charging Station
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee53"}]},{"translate":"mech.block.charging_station","color":"dark_red","bold":true},{"translate":"mech.manual.page_100.body"}]'
#6: Portable Battery
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee54"}]},{"translate":"mech.item.portable_battery","color":"dark_red","bold":true},{"translate":"mech.manual.page_101.body"}]'
#7: Tinker Table
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee55"}]},{"translate":"mech.block.tinker_table","color":"dark_red","bold":true},{"translate":"mech.manual.page_102.body"}]'
#8: XP Tank
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee56"}]},{"translate":"mech.block.xp_tank","color":"dark_red","bold":true},{"translate":"mech.manual.page_103.body"}]'
#9: New Tools/Armor 1
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.page_104.title","color":"dark_red","bold":true},{"translate":"mech.manual.page_104.body","color":"black","bold":false}]'
#10: New Tools/Armor 2
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.page_105.body","color":"black","bold":false}]'
#11: New Tools/Armor 3
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.page_106.body","color":"black","bold":false}]'
#12: Titanium Sword
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee57"}]},{"translate":"mech.manual.page_107.title","color":"dark_red","bold":true},{"translate":"mech.manual.page_107.body"}]'
#13: Weapon Upgrades 1
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"\\uee58 \\n\\n\\n\\n\\n\\n\\n\\n","color":"white"},{"translate":"mech.manual.page_108.title","color":"dark_red","bold":true},{"translate":"mech.manual.page_108.body","color":"black","bold":false}]'
#14: Weapon Upgrades 2
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"\\uee59 \\n\\n\\n\\n\\n\\n\\n\\n","color":"white"},{"translate":"mech.manual.page_109.body","color":"black","bold":false}]'
#15: Titanium Tools
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"\\uee5a \\n\\n\\n\\n\\n\\n\\n\\n","color":"white"},{"translate":"mech.manual.page_110.title","color":"dark_red","bold":true},{"translate":"mech.manual.page_110.body","color":"black","bold":false}]'
#16: Tools Upgrades 1
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"\\uee5b \\n\\n\\n\\n\\n\\n\\n\\n","color":"white"},{"translate":"mech.manual.page_111.body","color":"black","bold":false}]'
#17: Tools Upgrades 2
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"\\uee5c \\n\\n\\n\\n\\n\\n\\n\\n","color":"white"},{"translate":"mech.manual.page_112.body","color":"black","bold":false}]'
#18: Titanium Armor
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"\\uee5d \\n\\n\\n\\n\\n\\n\\n\\n","color":"white"},{"translate":"mech.manual.page_113.title","color":"dark_red","bold":true},{"translate":"mech.manual.page_113.body","color":"black","bold":false}]'
#19: Armor Upgrades 1
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"\\uee5e \\n\\n\\n\\n\\n\\n\\n\\n","color":"white"},{"translate":"mech.manual.page_114.title","color":"dark_red","bold":true},{"translate":"mech.manual.page_114.body","color":"black","bold":false}]'
#20: Armor Upgrades 2
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"\\uee5f \\n\\n\\n\\n\\n\\n\\n\\n","color":"white"},{"translate":"mech.manual.page_115.body","color":"black","bold":false}]'
#21: Armor Upgrades 3
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"\\uee60 \\n\\n\\n\\n\\n\\n\\n\\n","color":"white"},{"translate":"mech.manual.page_116.body","color":"black","bold":false}]'
#22: Gun Parts
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"\\uee61 \\n\\n\\n\\n\\n\\n\\n\\n","color":"white"},{"translate":"mech.manual.page_117.title","color":"dark_red","bold":true},{"translate":"mech.manual.page_117.body","color":"black","bold":false}]'
#23: Guns
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"\\uee62 \\n\\n\\n\\n\\n\\n\\n\\n","color":"white"},{"translate":"mech.manual.page_118.title","color":"dark_red","bold":true},{"translate":"mech.manual.page_118.body","color":"black","bold":false}]'
#24: Gun Info 1
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.page_119.body","color":"black","bold":false}]'
#25: Gun Info 2
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.page_120.body","color":"black","bold":false}]'
#26: Gun Upgrades
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"\\uee63 \\n\\n\\n\\n\\n\\n\\n\\n","color":"white"},{"translate":"mech.manual.page_121.body","color":"black","bold":false}]'

### Assembly
#27: TOC
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black","bold":false},{"translate":"mech.manual.page_122.title","bold":true,"color":"dark_aqua"},{"translate":"mech.manual.list","with":[{"translate":"mech.block.compressor"}],"clickEvent":{"action":"change_page","value":"28"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.decompressor"}],"clickEvent":{"action":"change_page","value":"29"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.stone_cutter"}],"clickEvent":{"action":"change_page","value":"30"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.dye_machine"}],"clickEvent":{"action":"change_page","value":"33"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.fast_hopper"}],"clickEvent":{"action":"change_page","value":"34"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.ender_hopper"}],"clickEvent":{"action":"change_page","value":"35"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.item_transmitter"}],"clickEvent":{"action":"change_page","value":"36"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.item_receiver"}],"clickEvent":{"action":"change_page","value":"37"}},{"translate":"mech.manual.list","with":[{"translate":"mech.item.item_filter"}],"clickEvent":{"action":"change_page","value":"39"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.unlimited_storage_unit"}],"clickEvent":{"action":"change_page","value":"40"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.auto_jukebox"}],"clickEvent":{"action":"change_page","value":"41"}},{"text":"\\n                     \\uee06","color":"white","clickEvent":{"action":"change_page","value":"3"}}]'
#28: Compressor
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee64"}]},{"translate":"mech.block.compressor","color":"dark_red","bold":true},{"translate":"mech.manual.page_123.body"}]'
#29: Decompressor
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee65"}]},{"translate":"mech.block.decompressor","color":"dark_red","bold":true},{"translate":"mech.manual.page_124.body"}]'
#30: Stone Cutter
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee66"}]},{"translate":"mech.block.stone_cutter","color":"dark_red","bold":true},{"translate":"mech.manual.page_125.body"}]'
#31: Stone Cutter Recipes 1
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.page_126.body","color":"black"}]'
#32: Stone Cutter Recipes 2
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.page_127.body","color":"black"}]'
#33: Dye Machine
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee67"}]},{"translate":"mech.block.dye_machine","color":"dark_red","bold":true},{"translate":"mech.manual.page_128.body"}]'
#34: Fast Hopper
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee68"}]},{"translate":"mech.block.fast_hopper","color":"dark_red","bold":true},{"translate":"mech.manual.page_129.body"}]'
#35: Ender Hopper
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee69"}]},{"translate":"mech.block.ender_hopper","color":"dark_red","bold":true},{"translate":"mech.manual.page_130.body"}]'
#36: Item Transmitter
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee6a"}]},{"translate":"mech.block.item_transmitter","color":"dark_red","bold":true},{"translate":"mech.manual.page_131.body"}]'
#37: Item Transmitter Upgrades
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.upgrades","color":"black","with":[{"translate":"mech.manual.page_132.upgrade"},{"translate":"mech.manual.page_132.ender"},{"translate":"mech.manual.page_132.nether"}]}]'
#38: Item Receiver
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee6b"}]},{"translate":"mech.block.item_receiver","color":"dark_red","bold":true},{"translate":"mech.manual.page_132.body"}]'
#39: Item Filter
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee6c"}]},{"translate":"mech.item.item_filter","color":"dark_red","bold":true},{"translate":"mech.manual.page_133.body"}]'
#40: Unlimited Storage Unit
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee6d"}]},{"translate":"mech.block.unlimited_storage_unit","color":"dark_red","bold":true},{"translate":"mech.manual.page_134.body"}]'
#41: Auto Jukebox
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","color":"black"},{"translate":"mech.manual.image_centered","color":"white","with":[{"text":"\\uee6e"}]},{"translate":"mech.block.auto_jukebox","color":"dark_red","bold":true},{"translate":"mech.manual.page_135.body"},{"text":"Find the easter egg legit :P","obfuscated":true}]'

#42: End
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"translate":"mech.manual.page_136.body","color":"dark_aqua","bold":true},{"text":"\\n\\n\\n\\n\\n\\n\\n\\n\\n                  \\uee06","color":"white","clickEvent":{"action":"change_page","value":"3"}}]'









