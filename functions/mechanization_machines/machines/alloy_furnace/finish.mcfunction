#bronze
testforblock ~ ~ ~ minecraft:chest -1 {Items:[{id:"minecraft:firework_charge",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;12414020]},display:{Name:"§6Copper Ingot"}},Damage:0s},{id:"minecraft:firework_charge",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;16777215]},display:{Name:"§7Tin Ingot"}},Damage:0s}]}
execute @s[score_checks_min=1] ~ ~ ~ blockdata ~ ~ ~ {Items:[{Slot:18b,id:"minecraft:diamond_shovel",Count:1b,tag:{Unbreakable:1,display:{Name:"§fGUI part, don't take."}},Damage:21s},{Slot:22b,id:"minecraft:firework_charge",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;16750848]},display:{Name:"§cBronze Ingot"}},Damage:0s}]}

#conductive
testforblock ~ ~ ~ minecraft:chest -1 {Items:[{id:"minecraft:redstone",Count:8b,Damage:0s},{id:"minecraft:firework_charge",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;12414020]},display:{Name:"§6Copper Ingot"}},Damage:0s},{id:"minecraft:gold_ingot",Count:2b,Damage:0s}]}
execute @s[score_checks_min=1] ~ ~ ~ blockdata ~ ~ ~ {Items:[{Slot:18b,id:"minecraft:diamond_shovel",Count:1b,tag:{Unbreakable:1,display:{Name:"§fGUI part, don't take."}},Damage:21s},{Slot:22b,id:"minecraft:firework_charge",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;16772611]},display:{Name:"§eConductive Alloy"}},Damage:0s}]}

#steel
testforblock ~ ~ ~ minecraft:chest -1 {Items:[{id:"minecraft:iron_ingot",Count:1b,Damage:0s},{id:"minecraft:coal",Count:4b}]}
execute @s[score_checks_min=1] ~ ~ ~ blockdata ~ ~ ~ {Items:[{Slot:18b,id:"minecraft:diamond_shovel",Count:1b,tag:{Unbreakable:1,display:{Name:"§fGUI part, don't take."}},Damage:21s},{Slot:22b,id:"minecraft:firework_charge",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;6710886]},display:{Name:"§8Steel Ingot"}},Damage:0s}]}

#structual
testforblock ~ ~ ~ minecraft:chest -1 {Items:[{id:"minecraft:quartz",Count:4b,Damage:0s},{id:"minecraft:firework_charge",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;16777215]},display:{Name:"§7Tin Ingot"}},Damage:0s},{id:"minecraft:dye",Count:4b,Damage:4s}]}
execute @s[score_checks_min=1] ~ ~ ~ blockdata ~ ~ ~ {Items:[{Slot:18b,id:"minecraft:diamond_shovel",Count:1b,tag:{Unbreakable:1,display:{Name:"§fGUI part, don't take."}},Damage:21s},{Slot:22b,id:"minecraft:firework_charge",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;8883115]},display:{Name:"§9Structual Alloy"}},Damage:0s}]}

#nether
testforblock ~ ~ ~ minecraft:chest -1 {Items:[{id:"minecraft:quartz",Count:64b,Damage:0s},{id:"minecraft:firework_charge",Count:2b,tag:{Explosion:{Colors:[I;13216198]},display:{Name:"§dTitanium Ingot"}},Damage:0s},{id:"minecraft:nether_star",Count:1b,Damage:0s}]}
execute @s[score_checks_min=1] ~ ~ ~ blockdata ~ ~ ~ {Items:[{Slot:18b,id:"minecraft:diamond_shovel",Count:1b,tag:{Unbreakable:1,display:{Name:"§fGUI part, don't take."}},Damage:21s},{Slot:22b,id:"minecraft:firework_charge",Count:2b,tag:{Explosion:{Type:0b,Colors:[I;9175040]},display:{Name:"§4Nether Alloy"}},Damage:0s}]}

#ender
testforblock ~ ~ ~ minecraft:chest -1 {Items:[{id:"minecraft:dragon_breath",Count:32b,Damage:0s},{id:"minecraft:firework_charge",Count:4b,tag:{Explosion:{Colors:[I;13216198]},display:{Name:"§dTitanium Ingot"}},Damage:0s},{id:"minecraft:ender_pearl",Count:16b,Damage:0s}]}
execute @s[score_checks_min=1] ~ ~ ~ blockdata ~ ~ ~ {Items:[{Slot:18b,id:"minecraft:diamond_shovel",Count:1b,tag:{Unbreakable:1,display:{Name:"§fGUI part, don't take."}},Damage:21s},{Slot:22b,id:"minecraft:firework_charge",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;8388727]},display:{Name:"§5Ender Alloy"}},Damage:0s}]}

#crystal composite
testforblock ~ ~ ~ minecraft:chest -1 {Items:[{Slot:3b,id:"minecraft:diamond",Count:4b,Damage:0s},{Slot:4b,id:"minecraft:dye",Count:16b,Damage:4s},{Slot:5b,id:"minecraft:emerald",Count:4b,Damage:0s}]}
execute @s[score_checks_min=1] ~ ~ ~ blockdata ~ ~ ~ {Items:[{Slot:18b,id:"minecraft:diamond_shovel",Count:1b,tag:{Unbreakable:1,display:{Name:"§fGUI part, don't take."}},Damage:21s},{Slot:22b,id:"minecraft:diamond",Count:1b,tag:{display:{Name:"§3Crystal Composite"},ench:[{id:48,lvl:1}]},Damage:0s}]}



scoreboard players set @s timer 0
scoreboard players tag @s remove recipeValid