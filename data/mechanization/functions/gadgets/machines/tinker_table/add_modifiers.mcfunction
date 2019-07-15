
#copy modifiers
data modify block ~ ~ ~ Items[{Slot:17b}].tag.mech_modifiers set value []
data modify block ~ ~ ~ Items[{Slot:17b}].tag.mech_modifiers append from block ~ ~ ~ Items[{Slot:11b}]
data modify block ~ ~ ~ Items[{Slot:17b}].tag.mech_modifiers append from block ~ ~ ~ Items[{Slot:12b}]
data modify block ~ ~ ~ Items[{Slot:17b}].tag.mech_modifiers append from block ~ ~ ~ Items[{Slot:13b}]
data modify block ~ ~ ~ Items[{Slot:17b}].tag.mech_modifiers append from block ~ ~ ~ Items[{Slot:14b}]
data modify block ~ ~ ~ Items[{Slot:17b}].tag.mech_modifiers append from block ~ ~ ~ Items[{Slot:15b}]

#add lore
data modify block ~ ~ ~ Items[{Slot:17b}].tag.display.Lore set value []
data modify block ~ ~ ~ Items[{Slot:17b}].tag.display.Lore append from block ~ ~ ~ Items[{Slot:11b}].tag.display.Name
data modify block ~ ~ ~ Items[{Slot:17b}].tag.display.Lore append from block ~ ~ ~ Items[{Slot:12b}].tag.display.Name
data modify block ~ ~ ~ Items[{Slot:17b}].tag.display.Lore append from block ~ ~ ~ Items[{Slot:13b}].tag.display.Name
data modify block ~ ~ ~ Items[{Slot:17b}].tag.display.Lore append from block ~ ~ ~ Items[{Slot:14b}].tag.display.Name
data modify block ~ ~ ~ Items[{Slot:17b}].tag.display.Lore append from block ~ ~ ~ Items[{Slot:15b}].tag.display.Name

#apply modifier
execute if block ~ ~ ~ barrel{Items:[{Slot:17b,tag:{mech_modify:1b,mech_itemid:4200}}]} run function mechanization:gadgets/machines/tinker_table/modify_tool
execute if block ~ ~ ~ barrel{Items:[{Slot:17b,tag:{mech_modify:1b,mech_itemid:4201}}]} run function mechanization:gadgets/machines/tinker_table/modify_tool
execute if block ~ ~ ~ barrel{Items:[{Slot:17b,tag:{mech_modify:1b,mech_itemid:4202}}]} run function mechanization:gadgets/machines/tinker_table/modify_tool

execute if block ~ ~ ~ barrel{Items:[{Slot:17b,tag:{mech_modify:1b,mech_itemid:4203}}]} run function mechanization:gadgets/machines/tinker_table/modify_weapon
execute if block ~ ~ ~ barrel{Items:[{Slot:17b,tag:{mech_modify:1b,mech_itemid:4204}}]} run function mechanization:gadgets/machines/tinker_table/modify_weapon

execute if block ~ ~ ~ barrel{Items:[{Slot:17b,tag:{mech_modify:1b,mech_itemid:4205}}]} run function mechanization:gadgets/machines/tinker_table/modify_armor
execute if block ~ ~ ~ barrel{Items:[{Slot:17b,tag:{mech_modify:1b,mech_itemid:4206}}]} run function mechanization:gadgets/machines/tinker_table/modify_armor
execute if block ~ ~ ~ barrel{Items:[{Slot:17b,tag:{mech_modify:1b,mech_itemid:4207}}]} run function mechanization:gadgets/machines/tinker_table/modify_armor
execute if block ~ ~ ~ barrel{Items:[{Slot:17b,tag:{mech_modify:1b,mech_itemid:4208}}]} run function mechanization:gadgets/machines/tinker_table/modify_armor

execute if block ~ ~ ~ barrel{Items:[{Slot:17b,tag:{mech_modify:1b,mech_itemid:4102}}]} run function mechanization:gadgets/machines/tinker_table/modify_gun
execute if block ~ ~ ~ barrel{Items:[{Slot:17b,tag:{mech_modify:1b,mech_itemid:4103}}]} run function mechanization:gadgets/machines/tinker_table/modify_gun
execute if block ~ ~ ~ barrel{Items:[{Slot:17b,tag:{mech_modify:1b,mech_itemid:4104}}]} run function mechanization:gadgets/machines/tinker_table/modify_gun
execute if block ~ ~ ~ barrel{Items:[{Slot:17b,tag:{mech_modify:1b,mech_itemid:4105}}]} run function mechanization:gadgets/machines/tinker_table/modify_gun

#remove modifiers
replaceitem block ~ ~ ~ container.11 minecraft:air
replaceitem block ~ ~ ~ container.12 minecraft:air
replaceitem block ~ ~ ~ container.13 minecraft:air
replaceitem block ~ ~ ~ container.14 minecraft:air
replaceitem block ~ ~ ~ container.15 minecraft:air

