scoreboard players set out_0 mech_data 0

#vanilla ores
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:coal_ore"},{Slot:2b,id:"minecraft:coal"}]} run scoreboard players set out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:iron_ore"},{Slot:2b,tag:{OreDict:["dustIron"]}}]} run scoreboard players set out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:gold_ore"},{Slot:2b,tag:{OreDict:["dustGold"]}}]} run scoreboard players set out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:lapis_ore"},{Slot:2b,id:"minecraft:lapis_lazuli"}]} run scoreboard players set out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:diamond_ore"},{Slot:2b,id:"minecraft:diamond"}]} run scoreboard players set out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:redstone_ore"},{Slot:2b,id:"minecraft:redstone_ore"}]} run scoreboard players set out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:emerald_ore"},{Slot:2b,id:"minecraft:emerald"}]} run scoreboard players set out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:nether_quartz_ore"},{Slot:2b,id:"minecraft:quartz"}]} run scoreboard players set out_0 mech_data 1

#mech ores
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["oreCopper"]}},{Slot:2b,tag:{OreDict:["dustCopper"]}}]} run scoreboard players set out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["oreTin"]}},{Slot:2b,tag:{OreDict:["dustTin"]}}]} run scoreboard players set out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["oreTitanium"]}},{Slot:2b,tag:{OreDict:["dustTitanium"]}}]} run scoreboard players set out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["oreUranium"]}},{Slot:2b,tag:{OreDict:["dustUranium"]}}]} run scoreboard players set out_0 mech_data 1

#mech ingots
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:iron_ingot"},{Slot:2b,tag:{OreDict:["dustIron"]}}]} run scoreboard players set out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:gold_ingot"},{Slot:2b,tag:{OreDict:["dustGold"]}}]} run scoreboard players set out_0 mech_data 1

execute if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["ingotCopper"]}},{Slot:2b,tag:{OreDict:["dustCopper"]}}]} run scoreboard players set out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["ingotTin"]}},{Slot:2b,tag:{OreDict:["dustTin"]}}]} run scoreboard players set out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["ingotTitanium"]}},{Slot:2b,tag:{OreDict:["dustTitanium"]}}]} run scoreboard players set out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["ingotSteel"]}},{Slot:2b,tag:{OreDict:["dustSteel"]}}]} run scoreboard players set out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["ingotStructural"]}},{Slot:2b,tag:{OreDict:["dustStructural"]}}]} run scoreboard players set out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["ingotConductive"]}},{Slot:2b,tag:{OreDict:["dustConductive"]}}]} run scoreboard players set out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["ingotTitaniumSteel"]}},{Slot:2b,tag:{OreDict:["dustTitaniumSteel"]}}]} run scoreboard players set out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["ingotReinforcedStructural"]}},{Slot:2b,tag:{OreDict:["dustReinforcedStructural"]}}]} run scoreboard players set out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["ingotSuperConductive"]}},{Slot:2b,tag:{OreDict:["dustSuperConductive"]}}]} run scoreboard players set out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["ingotNetherAlloy"]}},{Slot:2b,tag:{OreDict:["dustNetherAlloy"]}}]} run scoreboard players set out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["ingotEnderAlloy"]}},{Slot:2b,tag:{OreDict:["dustEnderAlloy"]}}]} run scoreboard players set out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["ingotUranium"]}},{Slot:2b,tag:{OreDict:["dustUranium"]}}]} run scoreboard players set out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["ingotPlutonium"]}},{Slot:2b,tag:{OreDict:["dustPlutonium"]}}]} run scoreboard players set out_0 mech_data 1

#Logs
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:oak_log"},{Slot:2b,id:"minecraft:oak_planks"}]} run scoreboard players set out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:birch_log"},{Slot:2b,id:"minecraft:birch_planks"}]} run scoreboard players set out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:spruce_log"},{Slot:2b,id:"minecraft:spruce_planks"}]} run scoreboard players set out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:jungle_log"},{Slot:2b,id:"minecraft:jungle_planks"}]} run scoreboard players set out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:dark_oak_log"},{Slot:2b,id:"minecraft:dark_oak_planks"}]} run scoreboard players set out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:acacia_log"},{Slot:2b,id:"minecraft:acacia_planks"}]} run scoreboard players set out_0 mech_data 1

#Extra
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:cobblestone"},{Slot:2b,id:"minecraft:sand"}]} run scoreboard players add out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:stone"},{Slot:2b,id:"minecraft:gravel"}]} run scoreboard players add out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:gravel"},{Slot:2b,id:"minecraft:flint"}]} run scoreboard players add out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:blaze_rod"},{Slot:2b,id:"minecraft:blaze_powder"}]} run scoreboard players set out_0 mech_data 1
execute if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:bone"},{Slot:2b,id:"minecraft:bone_meal"}]} run scoreboard players set out_0 mech_data 1
