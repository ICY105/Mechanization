
#copy modifiers
data modify block ~ ~ ~ Items append from block ~ ~ ~ Items[{Slot:9b}].tag.mech_modifiers[0]
data modify block ~ ~ ~ Items append from block ~ ~ ~ Items[{Slot:9b}].tag.mech_modifiers[1]
data modify block ~ ~ ~ Items append from block ~ ~ ~ Items[{Slot:9b}].tag.mech_modifiers[2]
data modify block ~ ~ ~ Items append from block ~ ~ ~ Items[{Slot:9b}].tag.mech_modifiers[3]
data modify block ~ ~ ~ Items append from block ~ ~ ~ Items[{Slot:9b}].tag.mech_modifiers[4]

#remove modifiers
data remove block ~ ~ ~ Items[{Slot:9b}].tag.mech_modifiers
data remove block ~ ~ ~ Items[{Slot:9b}].tag.AttributeModifiers

#remove lore
data remove block ~ ~ ~ Items[{Slot:9b}].tag.display.Lore

#reset item
execute if block ~ ~ ~ barrel{Items:[{Slot:9b,tag:{mech_itemid:4205}}]} run data modify block ~ ~ ~ Items[{Slot:9b}].tag.AttributeModifiers set value [{UUIDMost: -4637703358552391046L, UUIDLeast: -8750817167000175126L, Amount: 3.0d, Slot: "head",  AttributeName: "generic.armor", Operation: 0, Name: "generic.armor"}, {UUIDMost: 3057600368919399202L, UUIDLeast: -8021831367380608468L, Amount: 2.0d, Slot: "head",  AttributeName: "generic.armorToughness", Operation: 0, Name: "generic.armorToughness"}]
execute if block ~ ~ ~ barrel{Items:[{Slot:9b,tag:{mech_itemid:4206}}]} run data modify block ~ ~ ~ Items[{Slot:9b}].tag.AttributeModifiers set value [{UUIDMost: -4637703358552391047L, UUIDLeast: -8750817167000175127L, Amount: 8.0d, Slot: "chest", AttributeName: "generic.armor", Operation: 0, Name: "generic.armor"}, {UUIDMost: 3057600368919399203L, UUIDLeast: -8021831367380608469L, Amount: 2.0d, Slot: "chest", AttributeName: "generic.armorToughness", Operation: 0, Name: "generic.armorToughness"}]
execute if block ~ ~ ~ barrel{Items:[{Slot:9b,tag:{mech_itemid:4207}}]} run data modify block ~ ~ ~ Items[{Slot:9b}].tag.AttributeModifiers set value [{UUIDMost: -4637703358552391048L, UUIDLeast: -8750817167000175128L, Amount: 6.0d, Slot: "legs",  AttributeName: "generic.armor", Operation: 0, Name: "generic.armor"}, {UUIDMost: 3057600368919399204L, UUIDLeast: -8021831367380608470L, Amount: 2.0d, Slot: "legs",  AttributeName: "generic.armorToughness", Operation: 0, Name: "generic.armorToughness"}]
execute if block ~ ~ ~ barrel{Items:[{Slot:9b,tag:{mech_itemid:4208}}]} run data modify block ~ ~ ~ Items[{Slot:9b}].tag.AttributeModifiers set value [{UUIDMost: -4637703358552391049L, UUIDLeast: -8750817167000175129L, Amount: 3.0d, Slot: "feet",  AttributeName: "generic.armor", Operation: 0, Name: "generic.armor"}, {UUIDMost: 3057600368919399205L, UUIDLeast: -8021831367380608471L, Amount: 2.0d, Slot: "feet",  AttributeName: "generic.armorToughness", Operation: 0, Name: "generic.armorToughness"}]

execute if block ~ ~ ~ barrel{Items:[{Slot:9b,tag:{mech_itemid:4102}}]} run data modify block ~ ~ ~ Items[{Slot:9b}].tag.mech_gun set value {energy:16, fire_rate:2, heat:35, recoil_x:6, recoil_y:6, damage:30, velocity:5, bouncy:0}
execute if block ~ ~ ~ barrel{Items:[{Slot:9b,tag:{mech_itemid:4103}}]} run data modify block ~ ~ ~ Items[{Slot:9b}].tag.mech_gun set value {energy:24, fire_rate:4, heat:50, recoil_x:4, recoil_y:4, damage:60, velocity:6, bouncy:0}
execute if block ~ ~ ~ barrel{Items:[{Slot:9b,tag:{mech_itemid:4104}}]} run data modify block ~ ~ ~ Items[{Slot:9b}].tag.mech_gun set value {energy:32, fire_rate:12, heat:75, recoil_x:2, recoil_y:2, damage:80, velocity:4, bouncy:0}
execute if block ~ ~ ~ barrel{Items:[{Slot:9b,tag:{mech_itemid:4105}}]} run data modify block ~ ~ ~ Items[{Slot:9b}].tag.mech_gun set value {energy:64, fire_rate:40, heat:400, recoil_x:8, recoil_y:8, damage:200, velocity:10, bouncy:0}

data modify block ~ ~ ~ Items[{Slot:9b}].tag.du_auto_smelt set value 0b
data modify block ~ ~ ~ Items[{Slot:9b}].tag.du_trash set value 0b
data remove block ~ ~ ~ Items[{Slot:9b}].tag.mech_battery

#move item
execute store success block ~ ~ ~ Items[{Slot:9b}].Slot byte 22 if entity @s
