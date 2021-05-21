
execute in minecraft:overworld run data remove block -29999999 0 1601 Items
execute in minecraft:overworld run item replace block -29999999 0 1601 container.0 with minecraft:written_book{pages:[],author:"ImCoolYeah105", title:"Mechanical Manual",CustomModelData:6421105,mech_version:3} 
execute in minecraft:overworld run data remove block -29999999 0 1601 Items[0].tag.pages

#99: TOC
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"mech.manual.gadgets_toc.title","bold":true,"color":"dark_aqua"},{"translate":"mech.manual.list","with":[{"translate":"mech.block.xp_tank"}],"clickEvent":{"action":"change_page","value":"100"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.charging_station"}],"clickEvent":{"action":"change_page","value":"101"}},{"translate":"mech.manual.list","with":[{"translate":"mech.item.portable_battery"}],"clickEvent":{"action":"change_page","value":"102"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.tinker_table"}],"clickEvent":{"action":"change_page","value":"103"}},{"translate":"mech.manual.list","with":[{"translate":"mech.manual.gadgets_toc.new_tools_armor"}],"clickEvent":{"action":"change_page","value":"105"}},{"translate":"mech.manual.list","with":[{"translate":"mech.manual.gadgets_toc.titanium_weapons"}],"clickEvent":{"action":"change_page","value":"108"}},{"translate":"mech.manual.list","with":[{"translate":"mech.manual.gadgets_toc.weapon_upgrades"}],"clickEvent":{"action":"change_page","value":"109"}},{"translate":"mech.manual.list","with":[{"translate":"mech.manual.gadgets_toc.titanium_tools"}],"clickEvent":{"action":"change_page","value":"111"}},{"translate":"mech.manual.list","with":[{"translate":"mech.manual.gadgets_toc.tool_upgrades"}],"clickEvent":{"action":"change_page","value":"112"}},{"translate":"mech.manual.list","with":[{"translate":"mech.manual.gadgets_toc.titanium_armor"}],"clickEvent":{"action":"change_page","value":"114"}},{"translate":"mech.manual.list","with":[{"translate":"mech.manual.gadgets_toc.armor_upgrades"}],"clickEvent":{"action":"change_page","value":"115"}},{"translate":"mech.manual.list","with":[{"translate":"mech.manual.gadgets_toc.guns"}],"clickEvent":{"action":"change_page","value":"118"}},{"translate":"mech.manual.gadgets_toc.gun_upgrades","clickEvent":{"action":"change_page","value":"122"}},{"text":"  \\uee06","color":"white","font":"mechanization:default","clickEvent":{"action":"change_page","value":"3"}}]'
#100: XP Tank
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"mech.manual.image_centered","color":"white","font":"mechanization:default","with":[{"text":"\\uee56"}]},{"translate":"mech.block.xp_tank","color":"dark_red","bold":true},{"translate":"mech.manual.xp_tank.body"}]'
#101: Charging Station
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"mech.manual.image_centered","color":"white","font":"mechanization:default","with":[{"text":"\\uee53"}]},{"translate":"mech.block.charging_station","color":"dark_red","bold":true},{"translate":"mech.manual.charging_station.body"}]'
#102: Portable Battery
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"mech.manual.image_centered","color":"white","font":"mechanization:default","with":[{"text":"\\uee54"}]},{"translate":"mech.item.portable_battery","color":"dark_red","bold":true},{"translate":"mech.manual.portable_battery.body"}]'
#103: Tinker Table
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"mech.manual.image_centered","color":"white","font":"mechanization:default","with":[{"text":"\\uee55"}]},{"translate":"mech.block.tinker_table","color":"dark_red","bold":true},{"translate":"mech.manual.tinker_table.body"}]'
#104: Base Upgrade
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"mech.manual.image_centered","color":"white","font":"mechanization:default","with":[{"text":"\\uee70"}]},{"translate":"mech.item.upgrade_base","color":"dark_red","bold":true},{"translate":"mech.manual.upgrade_base.body"}]'
#105: New Tools/Armor 1
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"mech.manual.tools_armor.title","color":"dark_red","bold":true},{"translate":"mech.manual.tools_armor.body1","color":"black","bold":false}]'
#106: New Tools/Armor 2
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"mech.manual.tools_armor.body2","color":"black","bold":false}]'
#107: New Tools/Armor 3
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"mech.manual.tools_armor.body3","color":"black","bold":false}]'
#108: Titanium Sword
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"mech.manual.image_centered","color":"white","font":"mechanization:default","with":[{"text":"\\uee57"}]},{"translate":"mech.manual.titanium_weapons.title1","color":"dark_red","bold":true},{"translate":"mech.manual.titanium_weapons.body1"}]'
#109: Weapon Upgrades 1
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"text":"\\uee58 \\n\\n\\n\\n\\n\\n\\n\\n","color":"white","font":"mechanization:default"},{"translate":"mech.manual.titanium_weapons.title2","color":"dark_red","bold":true},{"translate":"mech.manual.titanium_weapons.body2","color":"black","bold":false}]'
#110: Weapon Upgrades 2
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"text":"\\uee59 \\n\\n\\n\\n\\n\\n\\n\\n","color":"white","font":"mechanization:default"},{"translate":"mech.manual.titanium_weapons.body3","color":"black","bold":false}]'
#111: Titanium Tools
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"text":"\\uee5a \\n\\n\\n\\n\\n\\n\\n\\n","color":"white","font":"mechanization:default"},{"translate":"mech.manual.titanium_tools.title1","color":"dark_red","bold":true},{"translate":"mech.manual.titanium_tools.body1","color":"black","bold":false}]'
#112: Tools Upgrades 1
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"text":"\\uee5b \\n\\n\\n\\n\\n\\n\\n\\n","color":"white","font":"mechanization:default"},{"translate":"mech.manual.titanium_tools.body2","color":"black","bold":false}]'
#113: Tools Upgrades 2
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"text":"\\uee5c \\n\\n\\n\\n\\n\\n\\n\\n","color":"white","font":"mechanization:default"},{"translate":"mech.manual.titanium_tools.body3","color":"black","bold":false}]'
#114: Titanium Armor
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"text":"\\uee5d \\n\\n\\n\\n\\n\\n\\n\\n","color":"white","font":"mechanization:default"},{"translate":"mech.manual.titanium_armor.title1","color":"dark_red","bold":true},{"translate":"mech.manual.titanium_armor.body1","color":"black","bold":false}]'
#115: Armor Upgrades 1
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"text":"\\uee5e \\n\\n\\n\\n\\n\\n\\n\\n","color":"white","font":"mechanization:default"},{"translate":"mech.manual.titanium_armor.title2","color":"dark_red","bold":true},{"translate":"mech.manual.titanium_armor.body2","color":"black","bold":false}]'
#116: Armor Upgrades 2
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"text":"\\uee5f \\n\\n\\n\\n\\n\\n\\n\\n","color":"white","font":"mechanization:default"},{"translate":"mech.manual.titanium_armor.body3","color":"black","bold":false}]'
#117: Armor Upgrades 3
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"text":"\\uee60 \\n\\n\\n\\n\\n\\n\\n\\n","color":"white","font":"mechanization:default"},{"translate":"mech.manual.titanium_armor.body4","color":"black","bold":false}]'
#118: Gun Parts
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"text":"\\uee61 \\n\\n\\n\\n\\n\\n\\n\\n","color":"white","font":"mechanization:default"},{"translate":"mech.manual.plasma_guns.title1","color":"dark_red","bold":true},{"translate":"mech.manual.plasma_guns.body1","color":"black","bold":false}]'
#119: Guns
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"text":"\\uee62 \\n\\n\\n\\n\\n\\n\\n\\n","color":"white","font":"mechanization:default"},{"translate":"mech.manual.plasma_guns.title2","color":"dark_red","bold":true},{"translate":"mech.manual.plasma_guns.body2","color":"black","bold":false}]'
#120: Gun Info 1
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"mech.manual.plasma_guns.body3","color":"black","bold":false}]'
#121: Gun Info 2
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"mech.manual.plasma_guns.body4","color":"black","bold":false}]'
#122: Gun Upgrades
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"text":"\\uee63 \\n\\n\\n\\n\\n\\n\\n\\n","color":"white","font":"mechanization:default"},{"translate":"mech.manual.plasma_guns.body5","color":"black","bold":false}]'



### Assembly
#123: TOC
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"mech.manual.gadgets.title","bold":true,"color":"dark_aqua"},{"translate":"mech.manual.list","with":[{"translate":"mech.block.compressor"}],"clickEvent":{"action":"change_page","value":"124"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.decompressor"}],"clickEvent":{"action":"change_page","value":"125"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.stone_cutter"}],"clickEvent":{"action":"change_page","value":"126"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.dye_machine"}],"clickEvent":{"action":"change_page","value":"129"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.fast_hopper"}],"clickEvent":{"action":"change_page","value":"130"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.ender_hopper"}],"clickEvent":{"action":"change_page","value":"131"}},{"translate":"mech.manual.gadgets.item_transmittion","clickEvent":{"action":"change_page","value":"132"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.unlimited_storage_unit"}],"clickEvent":{"action":"change_page","value":"136"}},{"translate":"mech.manual.list","with":[{"translate":"mech.block.auto_jukebox"}],"clickEvent":{"action":"change_page","value":"137"}},{"translate":"mech.manual.gadgets.mss","clickEvent":{"action":"change_page","value":"138"}},{"text":"            \\uee06","color":"white","font":"mechanization:default","clickEvent":{"action":"change_page","value":"3"}}]'
#124: Compressor
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"mech.manual.image_centered","color":"white","font":"mechanization:default","with":[{"text":"\\uee64"}]},{"translate":"mech.block.compressor","color":"dark_red","bold":true},{"translate":"mech.manual.compresser.body"}]'
#125: Decompressor
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"mech.manual.image_centered","color":"white","font":"mechanization:default","with":[{"text":"\\uee65"}]},{"translate":"mech.block.decompressor","color":"dark_red","bold":true},{"translate":"mech.manual.decompresser.body"}]'
#126: Stone Cutter
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"mech.manual.image_centered","color":"white","font":"mechanization:default","with":[{"text":"\\uee66"}]},{"translate":"mech.block.stone_cutter","color":"dark_red","bold":true},{"translate":"mech.manual.stone_cutter.body1"}]'
#127: Stone Cutter Recipes 1
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"mech.manual.stone_cutter.body2","color":"black"}]'
#128: Stone Cutter Recipes 2
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"mech.manual.stone_cutter.body3","color":"black"}]'
#129: Dye Machine
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"mech.manual.image_centered","color":"white","font":"mechanization:default","with":[{"text":"\\uee67"}]},{"translate":"mech.block.dye_machine","color":"dark_red","bold":true},{"translate":"mech.manual.dye_machine.body"}]'
#130: Fast Hopper
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"mech.manual.image_centered","color":"white","font":"mechanization:default","with":[{"text":"\\uee68"}]},{"translate":"mech.block.fast_hopper","color":"dark_red","bold":true},{"translate":"mech.manual.fast_hopper.body"}]'
#131: Ender Hopper
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"mech.manual.image_centered","color":"white","font":"mechanization:default","with":[{"text":"\\uee69"}]},{"translate":"mech.block.ender_hopper","color":"dark_red","bold":true},{"translate":"mech.manual.ender_hopper.body"}]'
#132: Item Transmitter
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"mech.manual.image_centered","color":"white","font":"mechanization:default","with":[{"text":"\\uee6a"}]},{"translate":"mech.block.item_transmitter","color":"dark_red","bold":true},{"translate":"mech.manual.item_transmittion.body1"}]'
#133: Item Transmitter Upgrades
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"mech.manual.upgrades","color":"black","with":[{"translate":"mech.manual.item_transmittion.upgrade"},{"translate":"mech.manual.item_transmittion.ender"},{"translate":"mech.manual.item_transmittion.nether"}]}]'
#134: Item Receiver
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"mech.manual.image_centered","color":"white","font":"mechanization:default","with":[{"text":"\\uee6b"}]},{"translate":"mech.block.item_receiver","color":"dark_red","bold":true},{"translate":"mech.manual.item_transmittion.body2"}]'
#135: Item Filter
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"mech.manual.image_centered","color":"white","font":"mechanization:default","with":[{"text":"\\uee6c"}]},{"translate":"mech.item.item_filter","color":"dark_red","bold":true},{"translate":"mech.manual.item_transmittion.body3"}]'
#136: Unlimited Storage Unit
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"mech.manual.image_centered","color":"white","font":"mechanization:default","with":[{"text":"\\uee6d"}]},{"translate":"mech.block.unlimited_storage_unit","color":"dark_red","bold":true},{"translate":"mech.manual.storage_unit.body"}]'
#137: Auto Jukebox
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"mech.manual.image_centered","color":"white","font":"mechanization:default","with":[{"text":"\\uee6e"}]},{"translate":"mech.block.auto_jukebox","color":"dark_red","bold":true},{"translate":"mech.manual.auto_jukebox.body"},{"text":"Find the easter egg legit :P","obfuscated":true}]'
#138: MSS Terminal
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"mech.manual.image_centered","color":"white","font":"mechanization:default","with":[{"text":"\\uee71"}]},{"translate":"mech.block.mss_terminal","color":"dark_red","bold":true},{"translate":"mech.manual.mss_terminal.body"}]'
#139: MSS Deive Bay
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"mech.manual.image_centered","color":"white","font":"mechanization:default","with":[{"text":"\\uee72"}]},{"translate":"mech.block.mss_drive_bay","color":"dark_red","bold":true},{"translate":"mech.manual.mss_drive_bay.body"}]'
#140: MSS Storage Drive
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"mech.manual.image_centered","color":"white","font":"mechanization:default","with":[{"text":"\\uee73"}]},{"translate":"mech.item.mss_storage_drive","color":"dark_red","bold":true},{"translate":"mech.manual.mss_storage_drive.body"}]'



#141: End
execute in minecraft:overworld run data modify block -29999999 0 1601 Items[0].tag.pages append value '[{"text":"","font":"minecraft:default","bold":false,"color":"black"},{"translate":"mech.manual.the_end.body","color":"dark_aqua","bold":true},{"text":"\\n\\n\\n\\n\\n\\n\\n\\n\\n"},{"translate":"mech.manual.return_button","color":"white","font":"mechanization:default","clickEvent":{"action":"change_page","value":"3"},"with":[{"text":"\\uee06"}]}]'









