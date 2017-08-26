#bronze
testforblock ~ ~ ~ minecraft:chest -1 {Items:[{id:"minecraft:firework_charge",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;12414020]},display:{Name:"§6Copper Ingot"}},Damage:0s},{id:"minecraft:firework_charge",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;16777215]},display:{Name:"§7Tin Ingot"}},Damage:0s}]}
scoreboard players tag @s[score_checks_min=1] add recipeValid

#conductive
testforblock ~ ~ ~ minecraft:chest -1 {Items:[{id:"minecraft:redstone",Count:8b,Damage:0s},{id:"minecraft:firework_charge",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;12414020]},display:{Name:"§6Copper Ingot"}},Damage:0s},{id:"minecraft:gold_ingot",Count:2b,Damage:0s}]}
scoreboard players tag @s[score_checks_min=1] add recipeValid

#steel
testforblock ~ ~ ~ minecraft:chest -1 {Items:[{id:"minecraft:iron_ingot",Count:1b,Damage:0s},{id:"minecraft:coal",Count:4b}]}
scoreboard players tag @s[score_checks_min=1] add recipeValid

#structual
testforblock ~ ~ ~ minecraft:chest -1 {Items:[{id:"minecraft:quartz",Count:4b,Damage:0s},{id:"minecraft:firework_charge",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;16777215]},display:{Name:"§7Tin Ingot"}},Damage:0s},{id:"minecraft:dye",Count:4b,Damage:4s}]}
scoreboard players tag @s[score_checks_min=1] add recipeValid

#nether
testforblock ~ ~ ~ minecraft:chest -1 {Items:[{id:"minecraft:quartz",Count:64b,Damage:0s},{id:"minecraft:firework_charge",Count:2b,tag:{Explosion:{Colors:[I;13216198]},display:{Name:"§dTitanium Ingot"}},Damage:0s},{id:"minecraft:nether_star",Count:1b,Damage:0s}]}
scoreboard players tag @s[score_checks_min=1] add recipeValid

#ender
testforblock ~ ~ ~ minecraft:chest -1 {Items:[{id:"minecraft:dragon_breath",Count:32b,Damage:0s},{id:"minecraft:firework_charge",Count:4b,tag:{Explosion:{Colors:[I;13216198]},display:{Name:"§dTitanium Ingot"}},Damage:0s},{id:"minecraft:ender_pearl",Count:16b,Damage:0s}]}
scoreboard players tag @s[score_checks_min=1] add recipeValid

#crystal composite
testforblock ~ ~ ~ minecraft:chest -1 {Items:[{Slot:3b,id:"minecraft:diamond",Count:4b,Damage:0s},{Slot:4b,id:"minecraft:dye",Count:16b,Damage:4s},{Slot:5b,id:"minecraft:emerald",Count:4b,Damage:0s}]}
scoreboard players tag @s[score_checks_min=1] add recipeValid