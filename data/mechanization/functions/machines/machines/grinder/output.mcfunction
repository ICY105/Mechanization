
#get initial output count
scoreboard players set temp_0 mech_data 0
execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[{Slot:2b}].Count

scoreboard players set out_0 mech_data 1
execute if score temp_0 mech_data matches 1.. run function mechanization:machines/machines/grinder/verify_input

## Set Output

#vanilla ores
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:coal_ore"}]} run item replace block ~ ~ ~ container.2 with coal 1
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:iron_ore"}]} run item replace block ~ ~ ~ container.2 with structure_block{mech_itemid: 1420, CustomModelData: 6421420, du_smelt_id: 1420, OreDict:["dustIron"], display: {Name: '{"italic":false,"color":"white","translate":"mech.resource.dust","with":[{"translate":"mech.resource.iron"}]}'},HideFlags: 32} 1
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:gold_ore"}]} run item replace block ~ ~ ~ container.2 with structure_block{mech_itemid: 1425, CustomModelData: 6421425, du_smelt_id: 1425, OreDict:["dustGold"], display: {Name: '{"italic":false,"color":"gold","translate":"mech.resource.dust","with":[{"translate":"mech.resource.gold"}]}'},HideFlags: 32} 1
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:lapis_ore"}]} run item replace block ~ ~ ~ container.2 with lapis_lazuli 4
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:diamond_ore"}]} run item replace block ~ ~ ~ container.2 with diamond 1
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:redstone_ore"}]} run item replace block ~ ~ ~ container.2 with redstone 4
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:emerald_ore"}]} run item replace block ~ ~ ~ container.2 with emerald 1
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:nether_quartz_ore"}]} run item replace block ~ ~ ~ container.2 with quartz 1

#mech ores
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["oreCopper"]}}]} run item replace block ~ ~ ~ container.2 with structure_block{	mech_itemid: 1303, CustomModelData: 6421303, du_smelt_id: 1303, OreDict:["dustCopper"], 	display: {Name: '{"italic":false,"color":"gold","translate":"mech.resource.dust","with":[{"translate":"mech.resource.copper"}]}'},HideFlags: 32}
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["oreTin"]}}]} run item replace block ~ ~ ~ container.2 with structure_block{		mech_itemid: 1313, CustomModelData: 6421313, du_smelt_id: 1313, OreDict:["dustTin"], 		display: {Name: '{"italic":false,"color":"gray","translate":"mech.resource.dust","with":[{"translate":"mech.resource.tin"}]}'},HideFlags: 32}
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["oreTitanium"]}}]} run item replace block ~ ~ ~ container.2 with structure_block{	mech_itemid: 1323, CustomModelData: 6421323, du_smelt_id: 1323, OreDict:["dustTitanium"], 	display: {Name: '{"italic":false,"color":"light_purple","translate":"mech.resource.dust","with":[{"translate":"mech.resource.titanium"}]}'},HideFlags: 32}
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["oreUranium"]}}]} run item replace block ~ ~ ~ container.2 with structure_block{	mech_itemid: 1433, CustomModelData: 6421433, du_smelt_id: 1433, OreDict:["dustUranium"],	display: {Name: '{"italic":false,"color":"green","translate":"mech.resource.dust","with":[{"translate":"mech.resource.uranium"}]}'},HideFlags: 32}

#mech ingots
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:iron_ingot"}]} run item replace block ~ ~ ~ container.2 with structure_block{						mech_itemid: 1420, CustomModelData: 6421420, du_smelt_id: 1420, OreDict: ["dustIron"], display: {Name: '{"italic":false,"color":"white","translate":"mech.resource.dust","with":[{"translate":"mech.resource.iron"}]}'},HideFlags: 32}
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:gold_ingot"}]} run item replace block ~ ~ ~ container.2 with structure_block{						mech_itemid: 1425, CustomModelData: 6421425, du_smelt_id: 1425, OreDict: ["dustGold"], display: {Name: '{"italic":false,"color":"gold","translate":"mech.resource.dust","with":[{"translate":"mech.resource.gold"}]}'},HideFlags: 32}

execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["ingotCopper"]}}]} run item replace block ~ ~ ~ container.2 with structure_block{					mech_itemid: 1303, CustomModelData: 6421303, du_smelt_id: 1303, OreDict: ["dustCopper"],				display: {Name: '{"italic":false,"color":"gold","translate":"mech.resource.dust","with":[{"translate":"mech.resource.copper"}]}'},HideFlags: 32}
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["ingotTin"]}}]} run item replace block ~ ~ ~ container.2 with structure_block{					mech_itemid: 1313, CustomModelData: 6421313, du_smelt_id: 1313, OreDict: ["dustTin"],					display: {Name: '{"italic":false,"color":"gray","translate":"mech.resource.dust","with":[{"translate":"mech.resource.tin"}]}'},HideFlags: 32}
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["ingotTitanium"]}}]} run item replace block ~ ~ ~ container.2 with structure_block{				mech_itemid: 1323, CustomModelData: 6421323, du_smelt_id: 1323, OreDict: ["dustTitanium"],				display: {Name: '{"italic":false,"color":"light_purple","translate":"mech.resource.dust","with":[{"translate":"mech.resource.titanium"}]}'},HideFlags: 32}
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["ingotSteel"]}}]} run item replace block ~ ~ ~ container.2 with structure_block{					mech_itemid: 1332, CustomModelData: 6421332, du_smelt_id: 1332, OreDict: ["dustSteel"],					display: {Name: '{"italic":false,"color":"dark_gray","translate":"mech.resource.dust","with":[{"translate":"mech.resource.steel"}]}'},HideFlags: 32}
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["ingotStructural"]}}]} run item replace block ~ ~ ~ container.2 with structure_block{				mech_itemid: 1342, CustomModelData: 6421342, du_smelt_id: 1342, OreDict: ["dustStructural"],			display: {Name: '{"italic":false,"color":"blue","translate":"mech.resource.dust","with":[{"translate":"mech.resource.structural"}]}'},HideFlags: 32}
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["ingotConductive"]}}]} run item replace block ~ ~ ~ container.2 with structure_block{				mech_itemid: 1352, CustomModelData: 6421352, du_smelt_id: 1352, OreDict: ["dustConductive"],			display: {Name: '{"italic":false,"color":"gold","translate":"mech.resource.dust","with":[{"translate":"mech.resource.conductive"}]}'},HideFlags: 32}
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["ingotTitaniumSteel"]}}]} run item replace block ~ ~ ~ container.2 with structure_block{			mech_itemid: 1362, CustomModelData: 6421362, du_smelt_id: 1362, OreDict: ["dustTitaniumSteel"],			display: {Name: '{"italic":false,"color":"light_purple","translate":"mech.resource.dust","with":[{"translate":"mech.resource.titanium_steel"}]}'},HideFlags: 32}
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["ingotReinforcedStructural"]}}]} run item replace block ~ ~ ~ container.2 with structure_block{	mech_itemid: 1372, CustomModelData: 6421372, du_smelt_id: 1372, OreDict: ["dustReinforcedStructural"],	display: {Name: '{"italic":false,"color":"dark_aqua","translate":"mech.resource.dust","with":[{"translate":"mech.resource.reinforced_structural"}]}'},HideFlags: 32}
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["ingotSuperConductive"]}}]} run item replace block ~ ~ ~ container.2 with structure_block{		mech_itemid: 1382, CustomModelData: 6421382, du_smelt_id: 1382, OreDict: ["dustSuperConductive"],		display: {Name: '{"italic":false,"color":"dark_green","translate":"mech.resource.dust","with":[{"translate":"mech.resource.super_conductive"}]}'},HideFlags: 32}
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["ingotNetherAlloy"]}}]} run item replace block ~ ~ ~ container.2 with structure_block{			mech_itemid: 1402, CustomModelData: 6421402, du_smelt_id: 1402, OreDict: ["dustNetherAlloy"], 			display: {Name: '{"italic":false,"color":"dark_red","translate":"mech.resource.dust","with":[{"translate":"mech.resource.nether_alloy"}]}'},HideFlags: 32}
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["ingotEnderAlloy"]}}]} run item replace block ~ ~ ~ container.2 with structure_block{				mech_itemid: 1392, CustomModelData: 6421392, du_smelt_id: 1392, OreDict: ["dustEnderAlloy"], 			display: {Name: '{"italic":false,"color":"dark_purple","translate":"mech.resource.dust","with":[{"translate":"mech.resource.ender_alloy"}]}'},HideFlags: 32}
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["ingotUranium"]}}]} run item replace block ~ ~ ~ container.2 with structure_block{				mech_itemid: 1433, CustomModelData: 6421433, du_smelt_id: 1433, OreDict: ["dustUranium"], 				display: {Name: '{"italic":false,"color":"green","translate":"mech.resource.dust","with":[{"translate":"mech.resource.uranium"}]}'},HideFlags: 32}
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["ingotPlutonium"]}}]} run item replace block ~ ~ ~ container.2 with structure_block{				mech_itemid: 1442, CustomModelData: 6421442, du_smelt_id: 1442, OreDict: ["dustPlutonium"],				display: {Name: '{"italic":false,"color":"blue","translate":"mech.resource.dust","with":[{"translate":"mech.resource.plutonium"}]}'},HideFlags: 32}

#Logs
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:oak_log"}]} run item replace block ~ ~ ~ container.2 with oak_planks 4
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:birch_log"}]} run item replace block ~ ~ ~ container.2 with birch_planks 4
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:spruce_log"}]} run item replace block ~ ~ ~ container.2 with spruce_planks 4
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:jungle_log"}]} run item replace block ~ ~ ~ container.2 with jungle_planks 4
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:dark_oak_log"}]} run item replace block ~ ~ ~ container.2 with dark_oak_planks 4
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:acacia_log"}]} run item replace block ~ ~ ~ container.2 with acacia_planks 4

#Extra
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:cobblestone"}]} run item replace block ~ ~ ~ container.2 with sand 1
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:stone"}]} run item replace block ~ ~ ~ container.2 with gravel 1
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:gravel"}]} run item replace block ~ ~ ~ container.2 with flint 1
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:blaze_rod"}]} run item replace block ~ ~ ~ container.2 with blaze_powder 2
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:bone"}]} run item replace block ~ ~ ~ container.2 with bone_meal 3

#add to output
execute if score out_0 mech_data matches 1 store result score temp_1 mech_data run data get block ~ ~ ~ Items[{Slot:2b}].Count
execute if score out_0 mech_data matches 1 run scoreboard players operation temp_0 mech_data += temp_1 mech_data
execute if score out_0 mech_data matches 1 store result block ~ ~ ~ Items[{Slot:2b}].Count int 1 run scoreboard players get temp_0 mech_data

execute if score out_0 mech_data matches 1 store result score temp_0 mech_data run data get block ~ ~ ~ Items[{Slot:0b}].Count
execute if score out_0 mech_data matches 1 run scoreboard players remove temp_0 mech_data 1
execute if score out_0 mech_data matches 1 store result block ~ ~ ~ Items[{Slot:0b}].Count int 1 run scoreboard players get temp_0 mech_data

execute if score out_0 mech_data matches 1 run scoreboard players remove @s mech_power 360
tag @s remove mech_active


