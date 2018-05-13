replaceitem block ~ ~ ~ container.0 air
replaceitem block ~ ~ ~ container.2 air
replaceitem block ~ ~ ~ container.6 air
replaceitem block ~ ~ ~ container.8 air

replaceitem block ~ ~ ~ container.4 diamond_helmet{mech_upgrades:{mech_itemid: 4205, flight:0,slowfall:0,nightVision:0,waterbreathing:0,eater:0,invisibility:0,shield:0,antidote:0},modified:3,display:{Lore:["§7Modified"],Name:"{\"text\":\"Titanium Helmet\",\"color\":\"light_purple\",\"italic\":false}"},AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:2.0,Operation:0,UUIDLeast:100020,UUIDMost:100020,Slot:"head"},{AttributeName:"generic.armorToughness",Name:"generic.armorToughness",Amount:1.0,Operation:0,UUIDLeast:100021,UUIDMost:100021,Slot:"head"},{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:0.1,Operation:1,UUIDLeast:100026,UUIDMost:100026,Slot:"head"},{AttributeName:"generic.knockbackResistance",Name:"generic.knockbackResistance",Amount:0.0,Operation:0,UUIDLeast:100023,UUIDMost:100023,Slot:"head"},{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:0.0,Operation:0,UUIDLeast:100022,UUIDMost:100022,Slot:"head"}]}



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
execute if score temp_0 mech_data matches 1 store success block ~ ~ ~ Items[2].tag.AttributeModifiers[0].Amount double 3 if entity @s
execute if score temp_0 mech_data matches 2.. store success block ~ ~ ~ Items[2].tag.AttributeModifiers[0].Amount double 4 if entity @s

scoreboard players set temp_0 mech_data 0
execute if block ~ ~ ~ dropper{Items:[ {Slot:1b,tag:{OreDict:["upgradeToughness"]}} ]} run scoreboard players add temp_0 mech_data 1
execute if block ~ ~ ~ dropper{Items:[ {Slot:3b,tag:{OreDict:["upgradeToughness"]}} ]} run scoreboard players add temp_0 mech_data 1
execute if block ~ ~ ~ dropper{Items:[ {Slot:5b,tag:{OreDict:["upgradeToughness"]}} ]} run scoreboard players add temp_0 mech_data 1
execute if block ~ ~ ~ dropper{Items:[ {Slot:7b,tag:{OreDict:["upgradeToughness"]}} ]} run scoreboard players add temp_0 mech_data 1
execute if score temp_0 mech_data matches 1 store success block ~ ~ ~ Items[2].tag.AttributeModifiers[1].Amount double 2 if entity @s
execute if score temp_0 mech_data matches 2.. store success block ~ ~ ~ Items[2].tag.AttributeModifiers[1].Amount double 3 if entity @s

scoreboard players set temp_0 mech_data 0
execute if block ~ ~ ~ dropper{Items:[ {Slot:1b,tag:{OreDict:["upgradeSpeed"]}} ]} run scoreboard players add temp_0 mech_data 1
execute if block ~ ~ ~ dropper{Items:[ {Slot:3b,tag:{OreDict:["upgradeSpeed"]}} ]} run scoreboard players add temp_0 mech_data 1
execute if block ~ ~ ~ dropper{Items:[ {Slot:5b,tag:{OreDict:["upgradeSpeed"]}} ]} run scoreboard players add temp_0 mech_data 1
execute if block ~ ~ ~ dropper{Items:[ {Slot:7b,tag:{OreDict:["upgradeSpeed"]}} ]} run scoreboard players add temp_0 mech_data 1
execute if score temp_0 mech_data matches 0 store success block ~ ~ ~ Items[2].tag.AttributeModifiers[2].Amount double 0 if entity @s
execute if score temp_0 mech_data matches 1 store success block ~ ~ ~ Items[2].tag.AttributeModifiers[2].Amount double 0.1 if entity @s
execute if score temp_0 mech_data matches 2.. store success block ~ ~ ~ Items[2].tag.AttributeModifiers[2].Amount double 0.2 if entity @s

execute if block ~ ~ ~ dropper{Items:[ {tag:{OreDict:["upgradeKnockResist"]}} ]} store success block ~ ~ ~ Items[2].tag.AttributeModifiers[3].Amount double 0.5 if entity @s
execute if block ~ ~ ~ dropper{Items:[ {tag:{OreDict:["upgradeHealth"]}} ]} store success block ~ ~ ~ Items[2].tag.AttributeModifiers[4].Amount double 5 if entity @s



replaceitem block ~ ~ ~ container.1 air
replaceitem block ~ ~ ~ container.3 air
replaceitem block ~ ~ ~ container.5 air
replaceitem block ~ ~ ~ container.7 air

replaceitem block ~ ~ ~ container.0 diamond_shovel{Unbreakable:1,UIPart:1,display:{Name:"{\"text\":\" \",\"italic\":false}"},Damage:85,HideFlags:63}
replaceitem block ~ ~ ~ container.2 diamond_shovel{Unbreakable:1,UIPart:1,display:{Name:"{\"text\":\" \",\"italic\":false}"},Damage:67,HideFlags:63}
replaceitem block ~ ~ ~ container.6 diamond_shovel{Unbreakable:1,UIPart:1,display:{Name:"{\"text\":\" \",\"italic\":false}"},Damage:67,HideFlags:63}
replaceitem block ~ ~ ~ container.8 diamond_shovel{Unbreakable:1,UIPart:1,display:{Name:"{\"text\":\" \",\"italic\":false}"},Damage:67,HideFlags:63}


