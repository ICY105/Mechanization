replaceitem block ~ ~ ~ container.0 air
replaceitem block ~ ~ ~ container.2 air
replaceitem block ~ ~ ~ container.6 air
replaceitem block ~ ~ ~ container.8 air

execute if block ~ ~ ~ dropper{Items:[{Slot:4b,id:"minecraft:leather_boots"}]} run replaceitem block ~ ~ ~ container.4 leather_boots{			mech_itemid: 4208, Damage:66, HideFlags:36, du_durability:1b, durability_max:1024, Unbreakable:1b, mech_upgrades:{flight:0,slowfall:0,nightVision:0,waterbreathing:0,eater:0,invisibility:0,shield:0,antidote:0},modified:3,display:{Lore:["§7Modified"],Name:"{\"translate\":\"mech.item.titanium_boots\",		\"color\":\"light_purple\",\"italic\":false}",color:13216198},AttributeModifiers:[{AttributeName:"mech.durability",Name:"mech.durability",Amount:1024,Operation:0,UUIDLeast:12345,UUIDMost:12345,Slot:"offhand"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:2.0,Operation:0,UUIDLeast:100050,UUIDMost:100050,Slot:"feet"},{AttributeName:"generic.armorToughness",Name:"generic.armorToughness",Amount:1.0,Operation:0,UUIDLeast:100051,UUIDMost:100051,Slot:"feet"},{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:0.1,Operation:1,UUIDLeast:100056,UUIDMost:100056,Slot:"feet"},{AttributeName:"generic.knockbackResistance",Name:"generic.knockbackResistance",Amount:0.0,Operation:0,UUIDLeast:100053,UUIDMost:100053,Slot:"feet"},{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:0.0,Operation:0,UUIDLeast:100052,UUIDMost:100052,Slot:"feet"}]}

execute if block ~ ~ ~ dropper{Items:[{tag:{OreDict:["upgradeFlight"]}}]} store success block ~ ~ ~ Items[2].tag.mech_upgrades.flight int 1 if entity @s
execute if block ~ ~ ~ dropper{Items:[{tag:{OreDict:["upgradeSlowfall"]}}]} store success block ~ ~ ~ Items[2].tag.mech_upgrades.slowfall int 1 if entity @s
execute if block ~ ~ ~ dropper{Items:[{tag:{OreDict:["upgradeNightVision"]}}]} store success block ~ ~ ~ Items[2].tag.mech_upgrades.nightVision int 1 if entity @s
execute if block ~ ~ ~ dropper{Items:[{tag:{OreDict:["upgradeWaterBreathing"]}}]} store success block ~ ~ ~ Items[2].tag.mech_upgrades.waterbreathing int 1 if entity @s
execute if block ~ ~ ~ dropper{Items:[{tag:{OreDict:["upgradeEater"]}}]} store success block ~ ~ ~ Items[2].tag.mech_upgrades.eater int 1 if entity @s
execute if block ~ ~ ~ dropper{Items:[{tag:{OreDict:["upgradeInvisibility"]}}]} store success block ~ ~ ~ Items[2].tag.mech_upgrades.invisibility int 1 if entity @s
execute if block ~ ~ ~ dropper{Items:[{tag:{OreDict:["upgradeShield"]}}]} store success block ~ ~ ~ Items[2].tag.mech_upgrades.shield int 1 if entity @s
execute if block ~ ~ ~ dropper{Items:[{tag:{OreDict:["upgradeAntidote"]}}]} store success block ~ ~ ~ Items[2].tag.mech_upgrades.antidote int 1 if entity @s

scoreboard players set temp_0 mech_data 0
execute if block ~ ~ ~ dropper{Items:[ {Slot:1b,tag:{OreDict:["upgradeArmor"]}} ]} run scoreboard players add temp_0 mech_data 1
execute if block ~ ~ ~ dropper{Items:[ {Slot:3b,tag:{OreDict:["upgradeArmor"]}} ]} run scoreboard players add temp_0 mech_data 1
execute if block ~ ~ ~ dropper{Items:[ {Slot:5b,tag:{OreDict:["upgradeArmor"]}} ]} run scoreboard players add temp_0 mech_data 1
execute if block ~ ~ ~ dropper{Items:[ {Slot:7b,tag:{OreDict:["upgradeArmor"]}} ]} run scoreboard players add temp_0 mech_data 1
execute if score temp_0 mech_data matches 1 store success block ~ ~ ~ Items[2].tag.AttributeModifiers[1].Amount double 3 if entity @s
execute if score temp_0 mech_data matches 2.. store success block ~ ~ ~ Items[2].tag.AttributeModifiers[1].Amount double 4 if entity @s

scoreboard players set temp_0 mech_data 0
execute if block ~ ~ ~ dropper{Items:[ {Slot:1b,tag:{OreDict:["upgradeToughness"]}} ]} run scoreboard players add temp_0 mech_data 1
execute if block ~ ~ ~ dropper{Items:[ {Slot:3b,tag:{OreDict:["upgradeToughness"]}} ]} run scoreboard players add temp_0 mech_data 1
execute if block ~ ~ ~ dropper{Items:[ {Slot:5b,tag:{OreDict:["upgradeToughness"]}} ]} run scoreboard players add temp_0 mech_data 1
execute if block ~ ~ ~ dropper{Items:[ {Slot:7b,tag:{OreDict:["upgradeToughness"]}} ]} run scoreboard players add temp_0 mech_data 1
execute if score temp_0 mech_data matches 1 store success block ~ ~ ~ Items[2].tag.AttributeModifiers[2].Amount double 2 if entity @s
execute if score temp_0 mech_data matches 2.. store success block ~ ~ ~ Items[2].tag.AttributeModifiers[2].Amount double 3 if entity @s

scoreboard players set temp_0 mech_data 0
execute if block ~ ~ ~ dropper{Items:[ {Slot:1b,tag:{OreDict:["upgradeSpeed"]}} ]} run scoreboard players add temp_0 mech_data 1
execute if block ~ ~ ~ dropper{Items:[ {Slot:3b,tag:{OreDict:["upgradeSpeed"]}} ]} run scoreboard players add temp_0 mech_data 1
execute if block ~ ~ ~ dropper{Items:[ {Slot:5b,tag:{OreDict:["upgradeSpeed"]}} ]} run scoreboard players add temp_0 mech_data 1
execute if block ~ ~ ~ dropper{Items:[ {Slot:7b,tag:{OreDict:["upgradeSpeed"]}} ]} run scoreboard players add temp_0 mech_data 1
execute if score temp_0 mech_data matches 0 store success block ~ ~ ~ Items[2].tag.AttributeModifiers[3].Amount double 0 if entity @s
execute if score temp_0 mech_data matches 1 store success block ~ ~ ~ Items[2].tag.AttributeModifiers[3].Amount double 0.1 if entity @s
execute if score temp_0 mech_data matches 2.. store success block ~ ~ ~ Items[2].tag.AttributeModifiers[3].Amount double 0.2 if entity @s

execute if block ~ ~ ~ dropper{Items:[ {tag:{OreDict:["upgradeKnockResist"]}} ]} store success block ~ ~ ~ Items[2].tag.AttributeModifiers[4].Amount double 0.5 if entity @s
execute if block ~ ~ ~ dropper{Items:[ {tag:{OreDict:["upgradeHealth"]}} ]} store success block ~ ~ ~ Items[2].tag.AttributeModifiers[5].Amount double 5 if entity @s



replaceitem block ~ ~ ~ container.1 air
replaceitem block ~ ~ ~ container.3 air
replaceitem block ~ ~ ~ container.5 air
replaceitem block ~ ~ ~ container.7 air

replaceitem block ~ ~ ~ container.0 diamond_shovel{Unbreakable:1,UIPart:1,display:{Name:"{\"text\":\" \",\"italic\":false}"},Damage:113,HideFlags:63}
replaceitem block ~ ~ ~ container.2 diamond_shovel{Unbreakable:1,UIPart:1,display:{Name:"{\"text\":\" \",\"italic\":false}"},Damage:43,HideFlags:63}
replaceitem block ~ ~ ~ container.6 diamond_shovel{Unbreakable:1,UIPart:1,display:{Name:"{\"text\":\" \",\"italic\":false}"},Damage:43,HideFlags:63}
replaceitem block ~ ~ ~ container.8 diamond_shovel{Unbreakable:1,UIPart:1,display:{Name:"{\"text\":\" \",\"italic\":false}"},Damage:43,HideFlags:63}


