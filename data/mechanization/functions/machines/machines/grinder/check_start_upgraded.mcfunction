replaceitem block ~ ~ ~ container.1 air
scoreboard players set temp_0 mech_data 0
execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[1].Count

execute if score temp_0 mech_data matches 0..61 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:coal_ore"}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..61 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:iron_ore"}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..61 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:gold_ore"}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..52 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:lapis_ore"}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..61 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:diamond_ore"}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..52 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:redstone_ore"}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..61 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:emerald_ore"}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..60 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:nether_quartz_ore"}]} run tag @s add mech_active

execute if score temp_0 mech_data matches 0..61 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["oreCopper"]}}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..61 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["oreTin"]}}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..61 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["oreTitanium"]}}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..61 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{OreDict:["oreUranium"]}}]} run tag @s add mech_active

execute if score temp_0 mech_data matches 0..56 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:oak_log"}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..56 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:birch_log"}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..56 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:spruce_log"}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..56 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:jungle_log"}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..56 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:dark_oak_log"}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..56 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:acacia_log"}]} run tag @s add mech_active

#Extra
execute if score temp_0 mech_data matches 0..63 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:gravel"}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..60 if block ~ ~ ~ furnace{Items:[{Slot:0b,id:"minecraft:blaze_rod"}]} run tag @s add mech_active

#TTB Compat
execute if score temp_0 mech_data matches 0..59 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{amethyst_ore:1b}}]} run tag @s add mech_active
execute if score temp_0 mech_data matches 0..59 if block ~ ~ ~ furnace{Items:[{Slot:0b,tag:{vulcaanium_ore:1b}}]} run tag @s add mech_active