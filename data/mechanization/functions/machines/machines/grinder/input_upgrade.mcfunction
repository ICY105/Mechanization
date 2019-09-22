
#get output count
scoreboard players set temp_0 mech_data 0
execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[{Slot:2b}].Count

#ores
execute if score temp_0 mech_data matches 0..62 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:coal_ore"}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..62 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:iron_ore"}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..62 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:gold_ore"}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..58 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:lapis_ore"}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..62 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:diamond_ore"}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..58 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:redstone_ore"}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..62 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:emerald_ore"}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..62 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:nether_quartz_ore"}]} run tag @s add mech_active

#mech Ores
execute if score temp_0 mech_data matches 0..62 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["oreCopper"]}}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..62 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["oreTin"]}}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..62 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["oreTitanium"]}}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..62 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["oreUranium"]}}]} run tag @s add mech_active

#mech ingots
execute if score temp_0 mech_data matches 0..63 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:iron_ingot"}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..63 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:gold_ingot"}]} run tag @s add mech_active

execute if score temp_0 mech_data matches 0..63 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["ingotCopper"]}}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..63 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["ingotTin"]}}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..63 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["ingotTitanium"]}}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..63 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["ingotSteel"]}}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..63 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["ingotStructural"]}}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..63 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["ingotConductive"]}}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..63 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["ingotTitaniumSteel"]}}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..63 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["ingotReinforcedStructural"]}}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..63 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["ingotSuperConductive"]}}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..63 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["ingotNetherAlloy"]}}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..63 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["ingotEnderAlloy"]}}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..63 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["ingotUranium"]}}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..63 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["ingotPlutonium"]}}]} run tag @s add mech_active

#Logs
execute if score temp_0 mech_data matches 0..58 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:oak_log"}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..58 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:birch_log"}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..58 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:spruce_log"}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..58 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:jungle_log"}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..58 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:dark_oak_log"}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..58 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:acacia_log"}]} run tag @s add mech_active

#Extra
execute if score temp_0 mech_data matches 0..63 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:cobblestone"}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..63 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:stone"}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..63 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:gravel"}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..61 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:blaze_rod"}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..60 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:bone"}]} run tag @s add mech_active
