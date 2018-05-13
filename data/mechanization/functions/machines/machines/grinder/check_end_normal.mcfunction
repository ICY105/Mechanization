replaceitem block ~ ~ ~ container.1 air
scoreboard players set temp_0 mech_data 0
execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[1].Count

execute if score temp_0 mech_data matches 0 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:coal_ore"}]} run replaceitem block ~ ~ ~ container.2 coal 2
execute if score temp_0 mech_data matches 1.. if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:coal_ore"},{Slot:2b,id:"minecraft:coal"}]} run scoreboard players add temp_0 mech_data 2

execute if score temp_0 mech_data matches 0 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:iron_ore"}]} run replaceitem block ~ ~ ~ container.2 iron_ingot 2
execute if score temp_0 mech_data matches 1.. if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:iron_ore"},{Slot:2b,id:"minecraft:iron_ingot"}]} run scoreboard players add temp_0 mech_data 2

execute if score temp_0 mech_data matches 0 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:gold_ore"}]} run replaceitem block ~ ~ ~ container.2 gold_ingot 2
execute if score temp_0 mech_data matches 1.. if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:gold_ore"},{Slot:2b,id:"minecraft:gold_ingot"}]} run scoreboard players add temp_0 mech_data 2

execute if score temp_0 mech_data matches 0 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:lapis_ore"}]} run replaceitem block ~ ~ ~ container.2 lapis_lazuli 6
execute if score temp_0 mech_data matches 1.. if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:lapis_ore"},{Slot:2b,id:"minecraft:lapis_lazuli"}]} run scoreboard players add temp_0 mech_data 6

execute if score temp_0 mech_data matches 0 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:diamond_ore"}]} run replaceitem block ~ ~ ~ container.2 diamond 2
execute if score temp_0 mech_data matches 1.. if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:diamond_ore"},{Slot:2b,id:"minecraft:diamond"}]} run scoreboard players add temp_0 mech_data 2

execute if score temp_0 mech_data matches 0 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:redstone_ore"}]} run replaceitem block ~ ~ ~ container.2 redstone 6
execute if score temp_0 mech_data matches 1.. if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:redstone_ore"},{Slot:2b,id:"minecraft:redstone_ore"}]} run scoreboard players add temp_0 mech_data 6

execute if score temp_0 mech_data matches 0 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:emerald_ore"}]} run replaceitem block ~ ~ ~ container.2 emerald 2
execute if score temp_0 mech_data matches 1.. if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:emerald_ore"},{Slot:2b,id:"minecraft:emerald"}]} run scoreboard players add temp_0 mech_data 2

execute if score temp_0 mech_data matches 0 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:nether_quartz_ore"}]} run replaceitem block ~ ~ ~ container.2 quartz 2
execute if score temp_0 mech_data matches 1.. if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:nether_quartz_ore"},{Slot:2b,id:"minecraft:quartz"}]} run scoreboard players add temp_0 mech_data 2



execute if score temp_0 mech_data matches 0 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["oreCopper"]}}]} run replaceitem block ~ ~ ~ container.2 firework_star{mech_itemid: 2101, Explosion: {Colors: [I; 12414020]}, HideFlags: 32, display: {Name: "{\"text\":\"Copper Ingot\",\"color\":\"gold\",\"italic\":false}"}, OreDict: ["ingotCopper"]} 2
execute if score temp_0 mech_data matches 1.. if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["oreCopper"]}},{Slot:2b,tag:{OreDict:["ingotCopper"]}}]} run scoreboard players add temp_0 mech_data 2

execute if score temp_0 mech_data matches 0 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["oreTin"]}}]} run replaceitem block ~ ~ ~ container.2 firework_star{mech_itemid: 2103, Explosion: {Colors: [I; 16777215]}, HideFlags: 32, display: {Name: "{\"text\":\"Tin Ingot\",\"color\":\"gray\",\"italic\":false}"}, OreDict: ["ingotTin"]} 2
execute if score temp_0 mech_data matches 1.. if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["oreTin"]}},{Slot:2b,tag:{OreDict:["ingotTin"]}}]} run scoreboard players add temp_0 mech_data 2

execute if score temp_0 mech_data matches 0 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["oreTitanium"]}}]} run replaceitem block ~ ~ ~ container.2 firework_star{mech_itemid: 2105, Explosion: {Colors: [I; 13216198]}, HideFlags: 32, display: {Name: "{\"text\":\"Titanium Ingot\",\"color\":\"light_purple\",\"italic\":false}"}, OreDict: ["ingotTitanium"]} 2
execute if score temp_0 mech_data matches 1.. if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["oreTitanium"]}},{Slot:2b,tag:{OreDict:["ingotTitanium"]}}]} run scoreboard players add temp_0 mech_data 2

execute if score temp_0 mech_data matches 0 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["oreUranium"]}}]} run replaceitem block ~ ~ ~ container.2 firework_star{mech_itemid: 3104, Explosion: {Colors: [I; 8978176]}, HideFlags: 32, display: {Name: "{\"text\":\"Uranium Ingot\",\"color\":\"dark_green\",\"italic\":false}"}, OreDict: ["ingotUranium"]} 2
execute if score temp_0 mech_data matches 1.. if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["oreUranium"]}},{Slot:2b,tag:{OreDict:["ingotUranium"]}}]} run scoreboard players add temp_0 mech_data 2


#Logs
execute if score temp_0 mech_data matches 0 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:oak_log"}]} run replaceitem block ~ ~ ~ container.2 oak_planks 6
execute if score temp_0 mech_data matches 1.. if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:oak_log"},{Slot:2b,id:"minecraft:oak_planks"}]} run scoreboard players add temp_0 mech_data 6

execute if score temp_0 mech_data matches 0 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:birch_log"}]} run replaceitem block ~ ~ ~ container.2 birch_planks 6
execute if score temp_0 mech_data matches 1.. if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:birch_log"},{Slot:2b,id:"minecraft:birch_planks"}]} run scoreboard players add temp_0 mech_data 6

execute if score temp_0 mech_data matches 0 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:spruce_log"}]} run replaceitem block ~ ~ ~ container.2 spruce_planks 6
execute if score temp_0 mech_data matches 1.. if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:spruce_log"},{Slot:2b,id:"minecraft:spruce_planks"}]} run scoreboard players add temp_0 mech_data 6

execute if score temp_0 mech_data matches 0 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:jungle_log"}]} run replaceitem block ~ ~ ~ container.2 jungle_planks 6
execute if score temp_0 mech_data matches 1.. if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:jungle_log"},{Slot:2b,id:"minecraft:jungle_planks"}]} run scoreboard players add temp_0 mech_data 6

execute if score temp_0 mech_data matches 0 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:dark_oak_log"}]} run replaceitem block ~ ~ ~ container.2 dark_oak_planks 6
execute if score temp_0 mech_data matches 1.. if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:dark_oak_log"},{Slot:2b,id:"minecraft:dark_oak_planks"}]} run scoreboard players add temp_0 mech_data 6

execute if score temp_0 mech_data matches 0 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:acacia_log"}]} run replaceitem block ~ ~ ~ container.2 acacia_planks 6
execute if score temp_0 mech_data matches 1.. if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:acacia_log"},{Slot:2b,id:"minecraft:acacia_planks"}]} run scoreboard players add temp_0 mech_data 6

#Extra
execute if score temp_0 mech_data matches 0 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:gravel"}]} run replaceitem block ~ ~ ~ container.2 flint 1
execute if score temp_0 mech_data matches 1.. if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:gravel"},{Slot:2b,id:"minecraft:flint"}]} run scoreboard players add temp_0 mech_data 1
execute if score temp_0 mech_data matches 0 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:blaze_rod"}]} run replaceitem block ~ ~ ~ container.2 blaze_powder 3
execute if score temp_0 mech_data matches 1.. if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:blaze_rod"},{Slot:2b,id:"minecraft:blaze_powder"}]} run scoreboard players add temp_0 mech_data 3


#TTB Compat
execute if score temp_0 mech_data matches 0 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{amethyst_ore:1b}}]} run replaceitem block ~ ~ ~ container.2 command_block 3
execute if score temp_0 mech_data matches 1.. if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{amethyst_ore:1b}},{Slot:2b,id:"minecraft:command_block"}]} run scoreboard players add temp_0 mech_data 3

execute if score temp_0 mech_data matches 0 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{vulcaanium_ore:1b}}]} run replaceitem block ~ ~ ~ container.2 chain_command_block 3
execute if score temp_0 mech_data matches 1.. if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{vulcaanium_ore:1b}},{Slot:2b,id:"minecraft:chain_command_block"}]} run scoreboard players add temp_0 mech_data 3



execute unless score temp_0 mech_data matches 0 store result block ~ ~ ~ Items[1].Count int 1 run scoreboard players get temp_0 mech_data

execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[0].Count
scoreboard players remove temp_0 mech_data 1
execute store result block ~ ~ ~ Items[0].Count int 1 run scoreboard players get temp_0 mech_data

scoreboard players remove @s mech_power 360
tag @s remove mech_active


