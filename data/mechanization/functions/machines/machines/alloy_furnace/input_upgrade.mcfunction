
#get counts
scoreboard players set temp_0 mech_data 0
scoreboard players set temp_1 mech_data 0
scoreboard players set temp_2 mech_data 0
execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[{Slot:0b}].Count
execute store result score temp_1 mech_data run data get block ~ ~ ~ Items[{Slot:1b}].Count
execute store result score temp_2 mech_data run data get block ~ ~ ~ Items[{Slot:2b}].Count

#Steel Ingot
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:iron_ingot"},{Slot:1b,id:"minecraft:coal"},{Slot:2b,id:"minecraft:flint"}]} if score temp_0 mech_data matches 2.. if score temp_1 mech_data matches 4.. if score temp_2 mech_data matches 2.. run tag @s add mech_active
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:iron_ingot"},{Slot:1b,id:"minecraft:flint"},{Slot:2b,id:"minecraft:coal"}]} if score temp_0 mech_data matches 2.. if score temp_1 mech_data matches 2.. if score temp_2 mech_data matches 4.. run tag @s add mech_active
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:coal"},{Slot:1b,id:"minecraft:iron_ingot"},{Slot:2b,id:"minecraft:flint"}]} if score temp_0 mech_data matches 4.. if score temp_1 mech_data matches 2.. if score temp_2 mech_data matches 2.. run tag @s add mech_active
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:flint"},{Slot:1b,id:"minecraft:iron_ingot"},{Slot:2b,id:"minecraft:coal"}]} if score temp_0 mech_data matches 2.. if score temp_1 mech_data matches 2.. if score temp_2 mech_data matches 4.. run tag @s add mech_active
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:coal"},{Slot:1b,id:"minecraft:flint"},{Slot:2b,id:"minecraft:iron_ingot"}]} if score temp_0 mech_data matches 4.. if score temp_1 mech_data matches 2.. if score temp_2 mech_data matches 2.. run tag @s add mech_active
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:flint"},{Slot:1b,id:"minecraft:coal"},{Slot:2b,id:"minecraft:iron_ingot"}]} if score temp_0 mech_data matches 2.. if score temp_1 mech_data matches 4.. if score temp_2 mech_data matches 2.. run tag @s add mech_active

#Structural Ingot
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{OreDict:["ingotTin"]}},{Slot:1b,id:"minecraft:lapis_lazuli"},{Slot:2b,id:"minecraft:quartz"}]} if score temp_0 mech_data matches 2.. if score temp_1 mech_data matches 4.. if score temp_2 mech_data matches 4.. run tag @s add mech_active
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{OreDict:["ingotTin"]}},{Slot:1b,id:"minecraft:quartz"},{Slot:2b,id:"minecraft:lapis_lazuli"}]} if score temp_0 mech_data matches 2.. if score temp_1 mech_data matches 4.. if score temp_2 mech_data matches 4.. run tag @s add mech_active
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:lapis_lazuli"},{Slot:1b,tag:{OreDict:["ingotTin"]}},{Slot:2b,id:"minecraft:quartz"}]} if score temp_0 mech_data matches 4.. if score temp_1 mech_data matches 2.. if score temp_2 mech_data matches 4.. run tag @s add mech_active
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:quartz"},{Slot:1b,tag:{OreDict:["ingotTin"]}},{Slot:2b,id:"minecraft:lapis_lazuli"}]} if score temp_0 mech_data matches 4.. if score temp_1 mech_data matches 2.. if score temp_2 mech_data matches 4.. run tag @s add mech_active
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:lapis_lazuli"},{Slot:1b,id:"minecraft:quartz"},{Slot:2b,tag:{OreDict:["ingotTin"]}}]} if score temp_0 mech_data matches 4.. if score temp_1 mech_data matches 4.. if score temp_2 mech_data matches 2.. run tag @s add mech_active
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:quartz"},{Slot:1b,id:"minecraft:lapis_lazuli"},{Slot:2b,tag:{OreDict:["ingotTin"]}}]} if score temp_0 mech_data matches 4.. if score temp_1 mech_data matches 4.. if score temp_2 mech_data matches 2.. run tag @s add mech_active

#Conductive Ingot
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{OreDict:["ingotCopper"]}},{Slot:1b,id:"minecraft:gold_ingot"},{Slot:2b,id:"minecraft:redstone"}]} if score temp_0 mech_data matches 2.. if score temp_1 mech_data matches 2.. if score temp_2 mech_data matches 16.. run tag @s add mech_active
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{OreDict:["ingotCopper"]}},{Slot:1b,id:"minecraft:redstone"},{Slot:2b,id:"minecraft:gold_ingot"}]} if score temp_0 mech_data matches 2.. if score temp_1 mech_data matches 16.. if score temp_2 mech_data matches 2.. run tag @s add mech_active
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:gold_ingot"},{Slot:1b,tag:{OreDict:["ingotCopper"]}},{Slot:2b,id:"minecraft:redstone"}]} if score temp_0 mech_data matches 2.. if score temp_1 mech_data matches 2.. if score temp_2 mech_data matches 16.. run tag @s add mech_active
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:redstone"},{Slot:1b,tag:{OreDict:["ingotCopper"]}},{Slot:2b,id:"minecraft:gold_ingot"}]} if score temp_0 mech_data matches 16.. if score temp_1 mech_data matches 2.. if score temp_2 mech_data matches 2.. run tag @s add mech_active
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:gold_ingot"},{Slot:1b,id:"minecraft:redstone"},{Slot:2b,tag:{OreDict:["ingotCopper"]}}]} if score temp_0 mech_data matches 2.. if score temp_1 mech_data matches 16.. if score temp_2 mech_data matches 2.. run tag @s add mech_active
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:redstone"},{Slot:1b,id:"minecraft:gold_ingot"},{Slot:2b,tag:{OreDict:["ingotCopper"]}}]} if score temp_0 mech_data matches 16.. if score temp_1 mech_data matches 2.. if score temp_2 mech_data matches 2.. run tag @s add mech_active

#Titanium Steel Ingot
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{OreDict:["ingotTitanium"]}},{Slot:1b,tag:{OreDict:["ingotSteel"]}},{Slot:2b,id:"minecraft:blaze_rod"}]} if score temp_0 mech_data matches 1.. if score temp_1 mech_data matches 2.. if score temp_2 mech_data matches 2.. run tag @s add mech_active
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{OreDict:["ingotTitanium"]}},{Slot:2b,tag:{OreDict:["ingotSteel"]}},{Slot:1b,id:"minecraft:blaze_rod"}]} if score temp_0 mech_data matches 1.. if score temp_1 mech_data matches 2.. if score temp_2 mech_data matches 2.. run tag @s add mech_active
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,tag:{OreDict:["ingotTitanium"]}},{Slot:0b,tag:{OreDict:["ingotSteel"]}},{Slot:2b,id:"minecraft:blaze_rod"}]} if score temp_0 mech_data matches 2.. if score temp_1 mech_data matches 1.. if score temp_2 mech_data matches 2.. run tag @s add mech_active
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,tag:{OreDict:["ingotTitanium"]}},{Slot:2b,tag:{OreDict:["ingotSteel"]}},{Slot:0b,id:"minecraft:blaze_rod"}]} if score temp_0 mech_data matches 2.. if score temp_1 mech_data matches 1.. if score temp_2 mech_data matches 2.. run tag @s add mech_active
execute if block ~ ~ ~ dropper{Items:[{Slot:2b,tag:{OreDict:["ingotTitanium"]}},{Slot:0b,tag:{OreDict:["ingotSteel"]}},{Slot:1b,id:"minecraft:blaze_rod"}]} if score temp_0 mech_data matches 2.. if score temp_1 mech_data matches 2.. if score temp_2 mech_data matches 1.. run tag @s add mech_active
execute if block ~ ~ ~ dropper{Items:[{Slot:2b,tag:{OreDict:["ingotTitanium"]}},{Slot:1b,tag:{OreDict:["ingotSteel"]}},{Slot:0b,id:"minecraft:blaze_rod"}]} if score temp_0 mech_data matches 2.. if score temp_1 mech_data matches 2.. if score temp_2 mech_data matches 1.. run tag @s add mech_active

#Reinforced Structural Ingot
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{OreDict:["ingotTitanium"]}},{Slot:1b,tag:{OreDict:["ingotStructural"]}},{Slot:2b,id:"minecraft:prismarine_crystals"}]} if score temp_0 mech_data matches 1.. if score temp_1 mech_data matches 2.. if score temp_2 mech_data matches 2.. run tag @s add mech_active
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{OreDict:["ingotTitanium"]}},{Slot:2b,tag:{OreDict:["ingotStructural"]}},{Slot:1b,id:"minecraft:prismarine_crystals"}]} if score temp_0 mech_data matches 1.. if score temp_1 mech_data matches 2.. if score temp_2 mech_data matches 2.. run tag @s add mech_active
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,tag:{OreDict:["ingotTitanium"]}},{Slot:0b,tag:{OreDict:["ingotStructural"]}},{Slot:2b,id:"minecraft:prismarine_crystals"}]} if score temp_0 mech_data matches 2.. if score temp_1 mech_data matches 1.. if score temp_2 mech_data matches 2.. run tag @s add mech_active
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,tag:{OreDict:["ingotTitanium"]}},{Slot:2b,tag:{OreDict:["ingotStructural"]}},{Slot:0b,id:"minecraft:prismarine_crystals"}]} if score temp_0 mech_data matches 2.. if score temp_1 mech_data matches 1.. if score temp_2 mech_data matches 2.. run tag @s add mech_active
execute if block ~ ~ ~ dropper{Items:[{Slot:2b,tag:{OreDict:["ingotTitanium"]}},{Slot:0b,tag:{OreDict:["ingotStructural"]}},{Slot:1b,id:"minecraft:prismarine_crystals"}]} if score temp_0 mech_data matches 2.. if score temp_1 mech_data matches 2.. if score temp_2 mech_data matches 1.. run tag @s add mech_active
execute if block ~ ~ ~ dropper{Items:[{Slot:2b,tag:{OreDict:["ingotTitanium"]}},{Slot:1b,tag:{OreDict:["ingotStructural"]}},{Slot:0b,id:"minecraft:prismarine_crystals"}]} if score temp_0 mech_data matches 2.. if score temp_1 mech_data matches 2.. if score temp_2 mech_data matches 1.. run tag @s add mech_active

#Super Conductive Ingot
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{OreDict:["ingotTitanium"]}},{Slot:1b,tag:{OreDict:["ingotConductive"]}},{Slot:2b,id:"minecraft:ender_pearl"}]} if score temp_0 mech_data matches 1.. if score temp_1 mech_data matches 2.. if score temp_2 mech_data matches 2.. run tag @s add mech_active
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{OreDict:["ingotTitanium"]}},{Slot:2b,tag:{OreDict:["ingotConductive"]}},{Slot:1b,id:"minecraft:ender_pearl"}]} if score temp_0 mech_data matches 1.. if score temp_1 mech_data matches 2.. if score temp_2 mech_data matches 2.. run tag @s add mech_active
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,tag:{OreDict:["ingotTitanium"]}},{Slot:0b,tag:{OreDict:["ingotConductive"]}},{Slot:2b,id:"minecraft:ender_pearl"}]} if score temp_0 mech_data matches 2.. if score temp_1 mech_data matches 1.. if score temp_2 mech_data matches 2.. run tag @s add mech_active
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,tag:{OreDict:["ingotTitanium"]}},{Slot:2b,tag:{OreDict:["ingotConductive"]}},{Slot:0b,id:"minecraft:ender_pearl"}]} if score temp_0 mech_data matches 2.. if score temp_1 mech_data matches 1.. if score temp_2 mech_data matches 2.. run tag @s add mech_active
execute if block ~ ~ ~ dropper{Items:[{Slot:2b,tag:{OreDict:["ingotTitanium"]}},{Slot:0b,tag:{OreDict:["ingotConductive"]}},{Slot:1b,id:"minecraft:ender_pearl"}]} if score temp_0 mech_data matches 2.. if score temp_1 mech_data matches 2.. if score temp_2 mech_data matches 1.. run tag @s add mech_active
execute if block ~ ~ ~ dropper{Items:[{Slot:2b,tag:{OreDict:["ingotTitanium"]}},{Slot:1b,tag:{OreDict:["ingotConductive"]}},{Slot:0b,id:"minecraft:ender_pearl"}]} if score temp_0 mech_data matches 2.. if score temp_1 mech_data matches 2.. if score temp_2 mech_data matches 1.. run tag @s add mech_active

#Nether Ingot
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{OreDict:["ingotTitanium"]}},{Slot:1b,id:"minecraft:nether_star"},{Slot:2b,id:"minecraft:nether_brick"}]} if score temp_0 mech_data matches 4.. if score temp_1 mech_data matches 1.. if score temp_2 mech_data matches 4.. run tag @s add mech_active
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{OreDict:["ingotTitanium"]}},{Slot:2b,id:"minecraft:nether_star"},{Slot:1b,id:"minecraft:nether_brick"}]} if score temp_0 mech_data matches 4.. if score temp_1 mech_data matches 4.. if score temp_2 mech_data matches 1.. run tag @s add mech_active
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,tag:{OreDict:["ingotTitanium"]}},{Slot:0b,id:"minecraft:nether_star"},{Slot:2b,id:"minecraft:nether_brick"}]} if score temp_0 mech_data matches 1.. if score temp_1 mech_data matches 4.. if score temp_2 mech_data matches 4.. run tag @s add mech_active
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,tag:{OreDict:["ingotTitanium"]}},{Slot:2b,id:"minecraft:nether_star"},{Slot:0b,id:"minecraft:nether_brick"}]} if score temp_0 mech_data matches 4.. if score temp_1 mech_data matches 4.. if score temp_2 mech_data matches 1.. run tag @s add mech_active
execute if block ~ ~ ~ dropper{Items:[{Slot:2b,tag:{OreDict:["ingotTitanium"]}},{Slot:0b,id:"minecraft:nether_star"},{Slot:1b,id:"minecraft:nether_brick"}]} if score temp_0 mech_data matches 1.. if score temp_1 mech_data matches 4.. if score temp_2 mech_data matches 4.. run tag @s add mech_active
execute if block ~ ~ ~ dropper{Items:[{Slot:2b,tag:{OreDict:["ingotTitanium"]}},{Slot:1b,id:"minecraft:nether_star"},{Slot:0b,id:"minecraft:nether_brick"}]} if score temp_0 mech_data matches 4.. if score temp_1 mech_data matches 1.. if score temp_2 mech_data matches 4.. run tag @s add mech_active

#Ender Ingot
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{OreDict:["ingotTitanium"]}},{Slot:1b,id:"minecraft:chorus_fruit"},{Slot:2b,id:"minecraft:dragon_breath"}]} if score temp_0 mech_data matches 4.. if score temp_1 mech_data matches 32.. if score temp_2 mech_data matches 32.. run tag @s add mech_active
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,tag:{OreDict:["ingotTitanium"]}},{Slot:2b,id:"minecraft:chorus_fruit"},{Slot:1b,id:"minecraft:dragon_breath"}]} if score temp_0 mech_data matches 4.. if score temp_1 mech_data matches 32.. if score temp_2 mech_data matches 32.. run tag @s add mech_active
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,tag:{OreDict:["ingotTitanium"]}},{Slot:0b,id:"minecraft:chorus_fruit"},{Slot:2b,id:"minecraft:dragon_breath"}]} if score temp_0 mech_data matches 32.. if score temp_1 mech_data matches 4.. if score temp_2 mech_data matches 32.. run tag @s add mech_active
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,tag:{OreDict:["ingotTitanium"]}},{Slot:2b,id:"minecraft:chorus_fruit"},{Slot:0b,id:"minecraft:dragon_breath"}]} if score temp_0 mech_data matches 32.. if score temp_1 mech_data matches 4.. if score temp_2 mech_data matches 32.. run tag @s add mech_active
execute if block ~ ~ ~ dropper{Items:[{Slot:2b,tag:{OreDict:["ingotTitanium"]}},{Slot:0b,id:"minecraft:chorus_fruit"},{Slot:1b,id:"minecraft:dragon_breath"}]} if score temp_0 mech_data matches 32.. if score temp_1 mech_data matches 32.. if score temp_2 mech_data matches 4.. run tag @s add mech_active
execute if block ~ ~ ~ dropper{Items:[{Slot:2b,tag:{OreDict:["ingotTitanium"]}},{Slot:1b,id:"minecraft:chorus_fruit"},{Slot:0b,id:"minecraft:dragon_breath"}]} if score temp_0 mech_data matches 32.. if score temp_1 mech_data matches 32.. if score temp_2 mech_data matches 4.. run tag @s add mech_active

#Crystal Composite
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:emerald"},{Slot:1b,id:"minecraft:diamond"},{Slot:2b,id:"minecraft:redstone"}]} if score temp_0 mech_data matches 2.. if score temp_1 mech_data matches 2.. if score temp_2 mech_data matches 16.. run tag @s add mech_active
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:emerald"},{Slot:2b,id:"minecraft:diamond"},{Slot:1b,id:"minecraft:redstone"}]} if score temp_0 mech_data matches 2.. if score temp_1 mech_data matches 16.. if score temp_2 mech_data matches 2.. run tag @s add mech_active
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:emerald"},{Slot:0b,id:"minecraft:diamond"},{Slot:2b,id:"minecraft:redstone"}]} if score temp_0 mech_data matches 2.. if score temp_1 mech_data matches 2.. if score temp_2 mech_data matches 16.. run tag @s add mech_active
execute if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:emerald"},{Slot:2b,id:"minecraft:diamond"},{Slot:0b,id:"minecraft:redstone"}]} if score temp_0 mech_data matches 16.. if score temp_1 mech_data matches 2.. if score temp_2 mech_data matches 2.. run tag @s add mech_active
execute if block ~ ~ ~ dropper{Items:[{Slot:2b,id:"minecraft:emerald"},{Slot:0b,id:"minecraft:diamond"},{Slot:1b,id:"minecraft:redstone"}]} if score temp_0 mech_data matches 2.. if score temp_1 mech_data matches 16.. if score temp_2 mech_data matches 2.. run tag @s add mech_active
execute if block ~ ~ ~ dropper{Items:[{Slot:2b,id:"minecraft:emerald"},{Slot:1b,id:"minecraft:diamond"},{Slot:0b,id:"minecraft:redstone"}]} if score temp_0 mech_data matches 16.. if score temp_1 mech_data matches 2.. if score temp_2 mech_data matches 2.. run tag @s add mech_active



