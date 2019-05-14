
#get initial output count
scoreboard players set temp_0 mech_data 0
execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[{Slot:2b}].Count

scoreboard players set out_0 mech_data 1
execute if score temp_0 mech_data matches 1.. run function mechanization:machines/machines/grinder/verify_input_nether

## Set Output

#vanilla ores
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:coal_ore"}]} run replaceitem block ~ ~ ~ container.2 coal 2
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:iron_ore"}]} run replaceitem block ~ ~ ~ container.2 iron_ingot 2
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:gold_ore"}]} run replaceitem block ~ ~ ~ container.2 gold_ingot 2
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:lapis_ore"}]} run replaceitem block ~ ~ ~ container.2 lapis_lazuli 6
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:diamond_ore"}]} run replaceitem block ~ ~ ~ container.2 diamond 2
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:redstone_ore"}]} run replaceitem block ~ ~ ~ container.2 redstone 6
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:emerald_ore"}]} run replaceitem block ~ ~ ~ container.2 emerald 2
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:nether_quartz_ore"}]} run replaceitem block ~ ~ ~ container.2 quartz 6

#mech ores
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["oreCopper"]}}]} run replaceitem block ~ ~ ~ container.2 structure_block{	mech_itemid: 1301, CustomModelData: 6421301, OreDict:["ingotCopper"], 	display: {Name: "{\"italic\":false,\"color\":\"gold\",\"translate\":\"mech.resource.ingot\",\"with\":[{\"translate\":\"mech.resource.copper\"}]}"},HideFlags: 32			} 2
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["oreTin"]}}]} run replaceitem block ~ ~ ~ container.2 structure_block{		mech_itemid: 1311, CustomModelData: 6421311, OreDict:["ingotTin"], 		display: {Name: "{\"italic\":false,\"color\":\"gray\",\"translate\":\"mech.resource.ingot\",\"with\":[{\"translate\":\"mech.resource.tin\"}]}"},HideFlags: 32				} 2
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["oreTitanium"]}}]} run replaceitem block ~ ~ ~ container.2 structure_block{	mech_itemid: 1321, CustomModelData: 6421321, OreDict:["ingotTitanium"], display: {Name: "{\"italic\":false,\"color\":\"light_purple\",\"translate\":\"mech.resource.ingot\",\"with\":[{\"translate\":\"mech.resource.titanium\"}]}"},HideFlags: 32	} 2
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["oreUranium"]}}]} run replaceitem block ~ ~ ~ container.2 structure_block{	mech_itemid: 1431, CustomModelData: 6421431, OreDict:["ingotUranium"], 	display: {Name: "{\"italic\":false,\"color\":\"green\",\"translate\":\"mech.resource.ingot\",\"with\":[{\"translate\":\"mech.resource.uranium\"}]}"},HideFlags: 32			} 2

#Logs
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:oak_log"}]} run replaceitem block ~ ~ ~ container.2 charcoal 2
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:birch_log"}]} run replaceitem block ~ ~ ~ container.2 charcoal 2
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:spruce_log"}]} run replaceitem block ~ ~ ~ container.2 charcoal 2
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:jungle_log"}]} run replaceitem block ~ ~ ~ container.2 charcoal 2
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:dark_oak_log"}]} run replaceitem block ~ ~ ~ container.2 charcoal 2
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:acacia_log"}]} run replaceitem block ~ ~ ~ container.2 charcoal 2

#Extra
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:cobblestone"}]} run replaceitem block ~ ~ ~ container.2 glass 1
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:stone"}]} run replaceitem block ~ ~ ~ container.2 flint 1
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:gravel"}]} run replaceitem block ~ ~ ~ container.2 flint 1
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:blaze_rod"}]} run replaceitem block ~ ~ ~ container.2 blaze_powder 3
execute if score out_0 mech_data matches 1 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:bone"}]} run replaceitem block ~ ~ ~ container.2 bone_meal 4

#add to output
execute if score out_0 mech_data matches 1 store result score temp_1 mech_data run data get block ~ ~ ~ Items[{Slot:2b}].Count
execute if score out_0 mech_data matches 1 run scoreboard players operation temp_0 mech_data += temp_1 mech_data
execute if score out_0 mech_data matches 1 store result block ~ ~ ~ Items[{Slot:2b}].Count int 1 run scoreboard players get temp_0 mech_data

execute if score out_0 mech_data matches 1 store result score temp_0 mech_data run data get block ~ ~ ~ Items[{Slot:0b}].Count
execute if score out_0 mech_data matches 1 run scoreboard players remove temp_0 mech_data 1
execute if score out_0 mech_data matches 1 store result block ~ ~ ~ Items[{Slot:0b}].Count int 1 run scoreboard players get temp_0 mech_data

execute if score out_0 mech_data matches 1 run scoreboard players remove @s mech_power 360
tag @s remove mech_active


