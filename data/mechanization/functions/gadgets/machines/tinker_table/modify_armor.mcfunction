
execute if block ~ ~ ~ barrel{Items:[{Slot:17b,tag:{mech_modify:1b,mech_itemid:4208}}]} run data modify block ~ ~ ~ Items[{Slot:17b}].tag.AttributeModifiers set value [{AttributeName:"generic.armor",Name:"generic.armor",Amount:0.0,Operation:0,UUIDLeast:100050,UUIDMost:100050,Slot:"feet" },{AttributeName:"generic.armorToughness",Name:"generic.armorToughness",Amount:1.0,Operation:0,UUIDLeast:100051,UUIDMost:100051,Slot:"feet" },{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:0.0,Operation:1,UUIDLeast:100056,UUIDMost:100056,Slot:"feet" },{AttributeName:"generic.knockbackResistance",Name:"generic.knockbackResistance",Amount:0.0,Operation:0,UUIDLeast:100053,UUIDMost:100053,Slot:"feet" },{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:0.0,Operation:0,UUIDLeast:100052,UUIDMost:100052,Slot:"feet" }]
execute if block ~ ~ ~ barrel{Items:[{Slot:17b,tag:{mech_modify:1b,mech_itemid:4207}}]} run data modify block ~ ~ ~ Items[{Slot:17b}].tag.AttributeModifiers set value [{AttributeName:"generic.armor",Name:"generic.armor",Amount:0.0,Operation:0,UUIDLeast:100060,UUIDMost:100060,Slot:"legs" },{AttributeName:"generic.armorToughness",Name:"generic.armorToughness",Amount:1.0,Operation:0,UUIDLeast:100061,UUIDMost:100061,Slot:"legs" },{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:0.0,Operation:1,UUIDLeast:100066,UUIDMost:100066,Slot:"legs" },{AttributeName:"generic.knockbackResistance",Name:"generic.knockbackResistance",Amount:0.0,Operation:0,UUIDLeast:100063,UUIDMost:100063,Slot:"legs" },{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:0.0,Operation:0,UUIDLeast:100062,UUIDMost:100062,Slot:"legs" }]
execute if block ~ ~ ~ barrel{Items:[{Slot:17b,tag:{mech_modify:1b,mech_itemid:4206}}]} run data modify block ~ ~ ~ Items[{Slot:17b}].tag.AttributeModifiers set value [{AttributeName:"generic.armor",Name:"generic.armor",Amount:0.0,Operation:0,UUIDLeast:100070,UUIDMost:100070,Slot:"chest"},{AttributeName:"generic.armorToughness",Name:"generic.armorToughness",Amount:1.0,Operation:0,UUIDLeast:100071,UUIDMost:100071,Slot:"chest"},{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:0.0,Operation:1,UUIDLeast:100076,UUIDMost:100076,Slot:"chest"},{AttributeName:"generic.knockbackResistance",Name:"generic.knockbackResistance",Amount:0.0,Operation:0,UUIDLeast:100073,UUIDMost:100073,Slot:"chest"},{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:0.0,Operation:0,UUIDLeast:100072,UUIDMost:100072,Slot:"chest"}]
execute if block ~ ~ ~ barrel{Items:[{Slot:17b,tag:{mech_modify:1b,mech_itemid:4205}}]} run data modify block ~ ~ ~ Items[{Slot:17b}].tag.AttributeModifiers set value [{AttributeName:"generic.armor",Name:"generic.armor",Amount:0.0,Operation:0,UUIDLeast:100080,UUIDMost:100080,Slot:"head" },{AttributeName:"generic.armorToughness",Name:"generic.armorToughness",Amount:1.0,Operation:0,UUIDLeast:100081,UUIDMost:100081,Slot:"head" },{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:0.0,Operation:1,UUIDLeast:100086,UUIDMost:100086,Slot:"head" },{AttributeName:"generic.knockbackResistance",Name:"generic.knockbackResistance",Amount:0.0,Operation:0,UUIDLeast:100083,UUIDMost:100083,Slot:"head" },{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:0.0,Operation:0,UUIDLeast:100082,UUIDMost:100082,Slot:"head" }]

execute if block ~ ~ ~ barrel{Items:[{Slot:17b,tag:{mech_modify:1b,mech_itemid:4208}}]} run scoreboard players set temp_0 mech_data 2
execute if block ~ ~ ~ barrel{Items:[{Slot:17b,tag:{mech_modify:1b,mech_itemid:4207}}]} run scoreboard players set temp_0 mech_data 5
execute if block ~ ~ ~ barrel{Items:[{Slot:17b,tag:{mech_modify:1b,mech_itemid:4206}}]} run scoreboard players set temp_0 mech_data 7
execute if block ~ ~ ~ barrel{Items:[{Slot:17b,tag:{mech_modify:1b,mech_itemid:4205}}]} run scoreboard players set temp_0 mech_data 2
scoreboard players set temp_1 mech_data 0
execute if block ~ ~ ~ barrel{Items:[ {Slot:11b,tag:{OreDict:["upgradeArmor"]}} ]} run scoreboard players add temp_1 mech_data 1
execute if block ~ ~ ~ barrel{Items:[ {Slot:12b,tag:{OreDict:["upgradeArmor"]}} ]} run scoreboard players add temp_1 mech_data 1
execute if block ~ ~ ~ barrel{Items:[ {Slot:13b,tag:{OreDict:["upgradeArmor"]}} ]} run scoreboard players add temp_1 mech_data 1
execute if block ~ ~ ~ barrel{Items:[ {Slot:14b,tag:{OreDict:["upgradeArmor"]}} ]} run scoreboard players add temp_1 mech_data 1
execute if block ~ ~ ~ barrel{Items:[ {Slot:15b,tag:{OreDict:["upgradeArmor"]}} ]} run scoreboard players add temp_1 mech_data 1
execute if score temp_1 mech_data matches 1 run scoreboard players add temp_0 mech_data 1
execute if score temp_1 mech_data matches 2.. run scoreboard players add temp_0 mech_data 2
execute store result block ~ ~ ~ Items[{Slot:17b}].tag.AttributeModifiers[{Name:"generic.armor"}].Amount double 1 run scoreboard players get temp_0 mech_data

scoreboard players set temp_0 mech_data 1
execute if block ~ ~ ~ barrel{Items:[ {Slot:11b,tag:{OreDict:["upgradeToughness"]}} ]} run scoreboard players add temp_0 mech_data 1
execute if block ~ ~ ~ barrel{Items:[ {Slot:12b,tag:{OreDict:["upgradeToughness"]}} ]} run scoreboard players add temp_0 mech_data 1
execute if block ~ ~ ~ barrel{Items:[ {Slot:13b,tag:{OreDict:["upgradeToughness"]}} ]} run scoreboard players add temp_0 mech_data 1
execute if block ~ ~ ~ barrel{Items:[ {Slot:14b,tag:{OreDict:["upgradeToughness"]}} ]} run scoreboard players add temp_0 mech_data 1
execute if block ~ ~ ~ barrel{Items:[ {Slot:15b,tag:{OreDict:["upgradeToughness"]}} ]} run scoreboard players add temp_0 mech_data 1
execute store result block ~ ~ ~ Items[{Slot:17b}].tag.AttributeModifiers[{Name:"generic.armorToughness"}].Amount double 1 run scoreboard players get temp_0 mech_data

scoreboard players set temp_0 mech_data 0
execute if block ~ ~ ~ barrel{Items:[ {Slot:11b,tag:{OreDict:["upgradeSpeed"]}} ]} run scoreboard players add temp_0 mech_data 1
execute if block ~ ~ ~ barrel{Items:[ {Slot:12b,tag:{OreDict:["upgradeSpeed"]}} ]} run scoreboard players add temp_0 mech_data 1
execute if block ~ ~ ~ barrel{Items:[ {Slot:13b,tag:{OreDict:["upgradeSpeed"]}} ]} run scoreboard players add temp_0 mech_data 1
execute if block ~ ~ ~ barrel{Items:[ {Slot:14b,tag:{OreDict:["upgradeSpeed"]}} ]} run scoreboard players add temp_0 mech_data 1
execute if block ~ ~ ~ barrel{Items:[ {Slot:15b,tag:{OreDict:["upgradeSpeed"]}} ]} run scoreboard players add temp_0 mech_data 1
execute store result block ~ ~ ~ Items[{Slot:17b}].tag.AttributeModifiers[{Name:"generic.movementSpeed"}].Amount double 0.1 run scoreboard players get temp_0 mech_data

execute if block ~ ~ ~ barrel{Items:[ {tag:{OreDict:["upgradeKnockResist"]}} ]} store success block ~ ~ ~ Items[{Slot:17b}].tag.AttributeModifiers[{Name:"generic.knockbackResistance"}].Amount double 0.5 if entity @s
execute if block ~ ~ ~ barrel{Items:[ {tag:{OreDict:["upgradeHealth"]}} ]} store success block ~ ~ ~ Items[{Slot:17b}].tag.AttributeModifiers[{Name:"generic.maxHealth"}].Amount double 5 if entity @s

