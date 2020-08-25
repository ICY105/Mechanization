
function mechanization:gadgets/machines/tinker_table/reset_item

#battery modifier
scoreboard players set temp_0 mech_data 0
execute if block ~ ~ ~ barrel{Items:[ {Slot:12b,tag:{mech_itemid:4209}} ]} run scoreboard players add temp_0 mech_data 32000
execute if block ~ ~ ~ barrel{Items:[ {Slot:13b,tag:{mech_itemid:4209}} ]} run scoreboard players add temp_0 mech_data 32000
execute if block ~ ~ ~ barrel{Items:[ {Slot:14b,tag:{mech_itemid:4209}} ]} run scoreboard players add temp_0 mech_data 32000
execute if block ~ ~ ~ barrel{Items:[ {Slot:15b,tag:{mech_itemid:4209}} ]} run scoreboard players add temp_0 mech_data 32000
execute if block ~ ~ ~ barrel{Items:[ {Slot:16b,tag:{mech_itemid:4209}} ]} run scoreboard players add temp_0 mech_data 32000
execute if score temp_0 mech_data matches 1.. run data modify block ~ ~ ~ Items[{Slot:10b}].tag.mech_battery set value {models:0,base_model:0,max_energy:0,energy:0}
execute if score temp_0 mech_data matches 1.. store result block ~ ~ ~ Items[{Slot:10b}].tag.mech_battery.max_energy int 1 run scoreboard players get temp_0 mech_data

#apply modifier
execute if block ~ ~ ~ barrel{Items:[{Slot:10b,tag:{mech_modify:1b,mech_itemid:4200}}]} run function mechanization:gadgets/machines/tinker_table/modify_tool
execute if block ~ ~ ~ barrel{Items:[{Slot:10b,tag:{mech_modify:1b,mech_itemid:4201}}]} run function mechanization:gadgets/machines/tinker_table/modify_tool
execute if block ~ ~ ~ barrel{Items:[{Slot:10b,tag:{mech_modify:1b,mech_itemid:4202}}]} run function mechanization:gadgets/machines/tinker_table/modify_tool

execute if block ~ ~ ~ barrel{Items:[{Slot:10b,tag:{mech_modify:1b,mech_itemid:4203}}]} run function mechanization:gadgets/machines/tinker_table/modify_tool
execute if block ~ ~ ~ barrel{Items:[{Slot:10b,tag:{mech_modify:1b,mech_itemid:4204}}]} run function mechanization:gadgets/machines/tinker_table/modify_tool

execute if block ~ ~ ~ barrel{Items:[{Slot:10b,tag:{mech_modify:1b,mech_itemid:4205}}]} run function mechanization:gadgets/machines/tinker_table/modify_armor
execute if block ~ ~ ~ barrel{Items:[{Slot:10b,tag:{mech_modify:1b,mech_itemid:4206}}]} run function mechanization:gadgets/machines/tinker_table/modify_armor
execute if block ~ ~ ~ barrel{Items:[{Slot:10b,tag:{mech_modify:1b,mech_itemid:4207}}]} run function mechanization:gadgets/machines/tinker_table/modify_armor
execute if block ~ ~ ~ barrel{Items:[{Slot:10b,tag:{mech_modify:1b,mech_itemid:4208}}]} run function mechanization:gadgets/machines/tinker_table/modify_armor

execute if block ~ ~ ~ barrel{Items:[{Slot:10b,tag:{mech_modify:1b,mech_itemid:4102}}]} run function mechanization:gadgets/machines/tinker_table/modify_gun
execute if block ~ ~ ~ barrel{Items:[{Slot:10b,tag:{mech_modify:1b,mech_itemid:4103}}]} run function mechanization:gadgets/machines/tinker_table/modify_gun
execute if block ~ ~ ~ barrel{Items:[{Slot:10b,tag:{mech_modify:1b,mech_itemid:4104}}]} run function mechanization:gadgets/machines/tinker_table/modify_gun
execute if block ~ ~ ~ barrel{Items:[{Slot:10b,tag:{mech_modify:1b,mech_itemid:4105}}]} run function mechanization:gadgets/machines/tinker_table/modify_gun

#copy modifier items
data modify block ~ ~ ~ Items[{Slot:10b}].tag.mech_modifiers append from block ~ ~ ~ Items[{Slot:12b}]
data modify block ~ ~ ~ Items[{Slot:10b}].tag.mech_modifiers append from block ~ ~ ~ Items[{Slot:13b}]
data modify block ~ ~ ~ Items[{Slot:10b}].tag.mech_modifiers append from block ~ ~ ~ Items[{Slot:14b}]
data modify block ~ ~ ~ Items[{Slot:10b}].tag.mech_modifiers append from block ~ ~ ~ Items[{Slot:15b}]
data modify block ~ ~ ~ Items[{Slot:10b}].tag.mech_modifiers append from block ~ ~ ~ Items[{Slot:16b}]

#add lore
execute if block ~ ~ ~ barrel{Items:[{tag:{mech_itemid:4209}}]} run data modify block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore append value '[{"translate":"mech.item.portable_battery.lore","color":"gray","italic":false,"with":[{"text":"0"},{"text":"0"}]}]'
data modify block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore append from block ~ ~ ~ Items[{Slot:12b}].tag.display.Name
data modify block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore append from block ~ ~ ~ Items[{Slot:13b}].tag.display.Name
data modify block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore append from block ~ ~ ~ Items[{Slot:14b}].tag.display.Name
data modify block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore append from block ~ ~ ~ Items[{Slot:15b}].tag.display.Name
data modify block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore append from block ~ ~ ~ Items[{Slot:16b}].tag.display.Name
