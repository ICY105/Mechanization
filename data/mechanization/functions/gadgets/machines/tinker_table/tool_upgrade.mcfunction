replaceitem block ~ ~ ~ container.0 air
replaceitem block ~ ~ ~ container.2 air
replaceitem block ~ ~ ~ container.6 air
replaceitem block ~ ~ ~ container.8 air

execute if block ~ ~ ~ dropper{Items:[{Slot:4b,id:"minecraft:diamond_pickaxe"}]} run replaceitem block ~ ~ ~ container.4 diamond_pickaxe{mech_itemid: 4200, Damage:1561, HideFlags:36, du_durability:1b, durability_max:2048, Unbreakable:1b,mech_upgrades:{empowered:0,autosmelt:0,magnetic:0,trash:0,smash:0},modified:2,display:{Lore:["§7Modified"],Name:"{\"text\":\"Titanium Pickaxe\",\"color\":\"light_purple\",\"italic\":false}"}, AttributeModifiers:[{AttributeName:"mech.durability",Name:"mech.durability",Amount:2048,Operation:0,UUIDLeast:12345,UUIDMost:12345,Slot:"offhand"}]}
execute if block ~ ~ ~ dropper{Items:[{Slot:4b,id:"minecraft:diamond_axe"}]} run replaceitem block ~ ~ ~ container.4 diamond_axe{mech_itemid: 4201, Damage:1561, HideFlags:36, du_durability:1b, durability_max:2048, Unbreakable:1b,mech_upgrades:{empowered:0,autosmelt:0,magnetic:0,trash:0,smash:0},modified:2,display:{Lore:["§7Modified"],Name:"{\"text\":\"Titanium Axe\",\"color\":\"light_purple\",\"italic\":false}"}, AttributeModifiers:[{AttributeName:"mech.durability",Name:"mech.durability",Amount:2048,Operation:0,UUIDLeast:12345,UUIDMost:12345,Slot:"offhand"}]}
execute if block ~ ~ ~ dropper{Items:[{Slot:4b,id:"minecraft:diamond_shovel"}]} run replaceitem block ~ ~ ~ container.4 diamond_shovel{mech_itemid: 4202, Damage:1561, HideFlags:36, du_durability:1b, durability_max:2048, Unbreakable:1b,mech_upgrades:{empowered:0,autosmelt:0,magnetic:0,trash:0,smash:0},modified:2,display:{Lore:["§7Modified"],Name:"{\"text\":\"Titanium Shovel\",\"color\":\"light_purple\",\"italic\":false}"}, AttributeModifiers:[{AttributeName:"mech.durability",Name:"mech.durability",Amount:2048,Operation:0,UUIDLeast:12345,UUIDMost:12345,Slot:"offhand"}]}



execute if block ~ ~ ~ dropper{Items:[{tag:{OreDict:["upgradeAutoSmelt"]}}]} store success block ~ ~ ~ Items[2].tag.mech_upgrades.autosmelt int 1 if entity @s
execute if block ~ ~ ~ dropper{Items:[{tag:{OreDict:["upgradeMagnetic"]}}]} store success block ~ ~ ~ Items[2].tag.mech_upgrades.magnetic int 1 if entity @s
execute if block ~ ~ ~ dropper{Items:[{tag:{OreDict:["upgradeTrash"]}}]} store success block ~ ~ ~ Items[2].tag.mech_upgrades.trash int 1 if entity @s
execute if block ~ ~ ~ dropper{Items:[{tag:{OreDict:["upgradeSmash"]}}]} store success block ~ ~ ~ Items[2].tag.mech_upgrades.smash int 1 if entity @s

scoreboard players set temp_0 mech_data 0
execute if block ~ ~ ~ dropper{Items:[ {Slot:1b,tag:{OreDict:["upgradeEmpowered"]}} ]} run scoreboard players add temp_0 mech_data 1
execute if block ~ ~ ~ dropper{Items:[ {Slot:3b,tag:{OreDict:["upgradeEmpowered"]}} ]} run scoreboard players add temp_0 mech_data 1
execute if block ~ ~ ~ dropper{Items:[ {Slot:5b,tag:{OreDict:["upgradeEmpowered"]}} ]} run scoreboard players add temp_0 mech_data 1
execute if block ~ ~ ~ dropper{Items:[ {Slot:7b,tag:{OreDict:["upgradeEmpowered"]}} ]} run scoreboard players add temp_0 mech_data 1
execute if score temp_0 mech_data matches 1 store success block ~ ~ ~ Items[2].tag.mech_upgrades.empowered int 1 if entity @s
execute if score temp_0 mech_data matches 2.. store success block ~ ~ ~ Items[2].tag.mech_upgrades.empowered int 2 if entity @s



replaceitem block ~ ~ ~ container.1 air
replaceitem block ~ ~ ~ container.3 air
replaceitem block ~ ~ ~ container.5 air
replaceitem block ~ ~ ~ container.7 air

replaceitem block ~ ~ ~ container.0 diamond_shovel{Unbreakable:1,UIPart:1,display:{Name:"{\"text\":\" \",\"italic\":false}"},Damage:113,HideFlags:63}
replaceitem block ~ ~ ~ container.2 diamond_shovel{Unbreakable:1,UIPart:1,display:{Name:"{\"text\":\" \",\"italic\":false}"},Damage:43,HideFlags:63}
replaceitem block ~ ~ ~ container.6 diamond_shovel{Unbreakable:1,UIPart:1,display:{Name:"{\"text\":\" \",\"italic\":false}"},Damage:43,HideFlags:63}
replaceitem block ~ ~ ~ container.8 diamond_shovel{Unbreakable:1,UIPart:1,display:{Name:"{\"text\":\" \",\"italic\":false}"},Damage:43,HideFlags:63}


