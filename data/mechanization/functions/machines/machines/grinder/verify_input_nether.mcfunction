scoreboard players set out_0 mech_data 0

#vanilla ores
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:coal_ore"},{Slot:2b,id:"minecraft:coal"}]} run scoreboard players set out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:iron_ore"},{Slot:2b,id:"minecraft:iron_ingot"}]} run scoreboard players set out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:gold_ore"},{Slot:2b,id:"minecraft:gold_ingot"}]} run scoreboard players set out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:lapis_ore"},{Slot:2b,id:"minecraft:lapis_lazuli"}]} run scoreboard players set out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:diamond_ore"},{Slot:2b,id:"minecraft:diamond"}]} run scoreboard players set out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:redstone_ore"},{Slot:2b,id:"minecraft:redstone_ore"}]} run scoreboard players set out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:emerald_ore"},{Slot:2b,id:"minecraft:emerald"}]} run scoreboard players set out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:nether_quartz_ore"},{Slot:2b,id:"minecraft:quartz"}]} run scoreboard players set out_0 mech_data 1

#mech ores
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["oreCopper"]}},{Slot:2b,tag:{OreDict:["ingotCopper"]}}]} run scoreboard players set out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["oreTin"]}},{Slot:2b,tag:{OreDict:["ingotTin"]}}]} run scoreboard players set out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["oreTitanium"]}},{Slot:2b,tag:{OreDict:["ingotTitanium"]}}]} run scoreboard players set out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["oreUranium"]}},{Slot:2b,tag:{OreDict:["ingotUranium"]}}]} run scoreboard players set out_0 mech_data 1
#Logs
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:oak_log"},{Slot:2b,id:"minecraft:charcoal"}]} run scoreboard players set out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:birch_log"},{Slot:2b,id:"minecraft:charcoal"}]} run scoreboard players set out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:spruce_log"},{Slot:2b,id:"minecraft:charcoal"}]} run scoreboard players set out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:jungle_log"},{Slot:2b,id:"minecraft:charcoal"}]} run scoreboard players set out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:dark_oak_log"},{Slot:2b,id:"minecraft:charcoal"}]} run scoreboard players set out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:acacia_log"},{Slot:2b,id:"minecraft:charcoal"}]} run scoreboard players set out_0 mech_data 1

#Extra
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:cobblestone"},{Slot:2b,id:"minecraft:glass"}]} run scoreboard players add temp_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:stone"},{Slot:2b,id:"minecraft:flint"}]} run scoreboard players add temp_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:gravel"},{Slot:2b,id:"minecraft:flint"}]} run scoreboard players add temp_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:blaze_rod"},{Slot:2b,id:"minecraft:blaze_powder"}]} run scoreboard players set out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:bone"},{Slot:2b,id:"minecraft:bone_meal"}]} run scoreboard players set out_0 mech_data 1
