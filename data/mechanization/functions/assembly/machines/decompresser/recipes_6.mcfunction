
#get count
execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[{Slot:6b}].Count
scoreboard players set temp_1 mech_data 0

#3x3
execute if data block ~ ~ ~ Items:[{Slot:6b,id:"minecraft:iron_ingot"}] store success score temp_1 mech_data run summon item ^ ^ ^1 {Item:{id:"minecraft:iron_nugget",Count:9b}}
execute if data block ~ ~ ~ Items:[{Slot:6b,id:"minecraft:gold_ingot"}] store success score temp_1 mech_data run summon item ^ ^ ^1 {Item:{id:"minecraft:gold_nugget",Count:9b}}
execute if data block ~ ~ ~ Items:[{Slot:6b,id:"minecraft:iron_block"}] store success score temp_1 mech_data run summon item ^ ^ ^1 {Item:{id:"minecraft:iron_ingot",Count:9b}}
execute if data block ~ ~ ~ Items:[{Slot:6b,id:"minecraft:gold_block"}] store success score temp_1 mech_data run summon item ^ ^ ^1 {Item:{id:"minecraft:gold_ingot",Count:9b}}
execute if data block ~ ~ ~ Items:[{Slot:6b,id:"minecraft:diamond_block"}] store success score temp_1 mech_data run summon item ^ ^ ^1 {Item:{id:"minecraft:diamond",Count:9b}}
execute if data block ~ ~ ~ Items:[{Slot:6b,id:"minecraft:emerald_block"}] store success score temp_1 mech_data run summon item ^ ^ ^1 {Item:{id:"minecraft:emerald",Count:9b}}
execute if data block ~ ~ ~ Items:[{Slot:6b,id:"minecraft:redstone_block"}] store success score temp_1 mech_data run summon item ^ ^ ^1 {Item:{id:"minecraft:redstone",Count:9b}}
execute if data block ~ ~ ~ Items:[{Slot:6b,id:"minecraft:slime_block"}] store success score temp_1 mech_data run summon item ^ ^ ^1 {Item:{id:"minecraft:slime_ball",Count:9b}}
execute if data block ~ ~ ~ Items:[{Slot:6b,id:"minecraft:melon_block"}] store success score temp_1 mech_data run summon item ^ ^ ^1 {Item:{id:"minecraft:melon",Count:9b}}
execute if data block ~ ~ ~ Items:[{Slot:6b,id:"minecraft:hay_block"}] store success score temp_1 mech_data run summon item ^ ^ ^1 {Item:{id:"minecraft:wheat",Count:9b}}
execute if data block ~ ~ ~ Items:[{Slot:6b,id:"minecraft:dried_kelp_block"}] store success score temp_1 mech_data run summon item ^ ^ ^1 {Item:{id:"minecraft:dried_kelp",Count:9b}}
execute if data block ~ ~ ~ Items:[{Slot:6b,id:"minecraft:coal_block"}] store success score temp_1 mech_data run summon item ^ ^ ^1 {Item:{id:"minecraft:coal",Count:9b}}
execute if data block ~ ~ ~ Items:[{Slot:6b,id:"minecraft:lapis_block"}] store success score temp_1 mech_data run summon item ^ ^ ^1 {Item:{id:"minecraft:lapis_lazuli",Count:9b}}
execute if data block ~ ~ ~ Items:[{Slot:6b,id:"minecraft:bone_block"}] store success score temp_1 mech_data run summon item ^ ^ ^1 {Item:{id:"minecraft:bone_meal",Count:9b}}
execute if data block ~ ~ ~ Items:[{Slot:6b,id:"minecraft:prismarine_bricks"}] store success score temp_1 mech_data run summon item ^ ^ ^1 {Item:{id:"minecraft:prismarine_shard",Count:9b}}
execute if data block ~ ~ ~ Items:[{Slot:6b,id:"minecraft:nether_wart_block"}] store success score temp_1 mech_data run summon item ^ ^ ^1 {Item:{id:"minecraft:nether_wart",Count:9b}}

execute if data block ~ ~ ~ Items[{Slot:6b,tag:{OreDict:["blockCopper"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:base/resources_x9/copper_ingot
execute if data block ~ ~ ~ Items[{Slot:6b,tag:{OreDict:["ingotCopper"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:base/resources_x9/copper_nugget
execute if data block ~ ~ ~ Items[{Slot:6b,tag:{OreDict:["blockTin"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:base/resources_x9/tin_ingot
execute if data block ~ ~ ~ Items[{Slot:6b,tag:{OreDict:["ingotTin"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:base/resources_x9/tin_nugget
execute if data block ~ ~ ~ Items[{Slot:6b,tag:{OreDict:["blockTitanium"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:base/resources_x9/titanium_ingot
execute if data block ~ ~ ~ Items[{Slot:6b,tag:{OreDict:["ingotTitanium"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:base/resources_x9/titanium_nugget
execute if data block ~ ~ ~ Items[{Slot:6b,tag:{OreDict:["blockSteel"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:base/resources_x9/steel_ingot
execute if data block ~ ~ ~ Items[{Slot:6b,tag:{OreDict:["ingotSteel"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:base/resources_x9/steel_nugget
execute if data block ~ ~ ~ Items[{Slot:6b,tag:{OreDict:["blockConductive"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:base/resources_x9/conductive_ingot
execute if data block ~ ~ ~ Items[{Slot:6b,tag:{OreDict:["ingotConductive"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:base/resources_x9/conductive_nugget
execute if data block ~ ~ ~ Items[{Slot:6b,tag:{OreDict:["blockStructural"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:base/resources_x9/structural_ingot
execute if data block ~ ~ ~ Items[{Slot:6b,tag:{OreDict:["ingotStructural"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:base/resources_x9/structural_nugget
execute if data block ~ ~ ~ Items[{Slot:6b,tag:{OreDict:["blockTitaniumSteel"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:base/resources_x9/titanium_steel_ingot
execute if data block ~ ~ ~ Items[{Slot:6b,tag:{OreDict:["ingotTitaniumSteel"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:base/resources_x9/titanium_steel_nugget
execute if data block ~ ~ ~ Items[{Slot:6b,tag:{OreDict:["blockSuperConductive"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:base/resources_x9/super_conductive_ingot
execute if data block ~ ~ ~ Items[{Slot:6b,tag:{OreDict:["ingotSuperConductive"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:base/resources_x9/super_conductive_nugget
execute if data block ~ ~ ~ Items[{Slot:6b,tag:{OreDict:["blockReinforcedStructural"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:base/resources_x9/reinforced_structural_ingot
execute if data block ~ ~ ~ Items[{Slot:6b,tag:{OreDict:["ingotReinforcedStructural"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:base/resources_x9/reinforced_structural_nugget
execute if data block ~ ~ ~ Items[{Slot:6b,tag:{OreDict:["blockEnderAlloy"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:base/resources_x9/ender_alloy_ingot
execute if data block ~ ~ ~ Items[{Slot:6b,tag:{OreDict:["ingotEnderAlloy"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:base/resources_x9/ender_alloy_nugget
execute if data block ~ ~ ~ Items[{Slot:6b,tag:{OreDict:["blockNetherAlloy"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:base/resources_x9/nether_alloy_ingot
execute if data block ~ ~ ~ Items[{Slot:6b,tag:{OreDict:["ingotNetherAlloy"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:base/resources_x9/nether_alloy_nugget
execute if data block ~ ~ ~ Items[{Slot:6b,tag:{OreDict:["blockUranium"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:base/resources_x9/uranium_ingot
execute if data block ~ ~ ~ Items[{Slot:6b,tag:{OreDict:["ingotUranium"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:base/resources_x9/uranium_nugget
execute if data block ~ ~ ~ Items[{Slot:6b,tag:{OreDict:["blockPlutonium"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:base/resources_x9/plutonium_ingot
execute if data block ~ ~ ~ Items[{Slot:6b,tag:{OreDict:["ingotPlutonium"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:base/resources_x9/plutonium_nugget
execute if data block ~ ~ ~ Items[{Slot:6b,tag:{OreDict:["blockCrystalComposite"]}}] store success score temp_1 mech_data run loot spawn ^ ^ ^1 loot mechanization:base/resources_x9/crystal_composite

# 2x2
execute if data block ~ ~ ~ Items:[{Slot:6b,id:"minecraft:quartz_block"}] store success score temp_1 mech_data run summon item ^ ^ ^1 {Item:{id:"minecraft:quartz",Count:4b}}
execute if data block ~ ~ ~ Items:[{Slot:6b,id:"minecraft:snow_block"}] store success score temp_1 mech_data run summon item ^ ^ ^1 {Item:{id:"minecraft:snowball",Count:4b}}
execute if data block ~ ~ ~ Items:[{Slot:6b,id:"minecraft:clay"}] store success score temp_1 mech_data run summon item ^ ^ ^1 {Item:{id:"minecraft:clay_ball",Count:4}}
execute if data block ~ ~ ~ Items:[{Slot:6b,id:"minecraft:glowstone"}] store success score temp_1 mech_data run summon item ^ ^ ^1 {Item:{id:"minecraft:glowstone_dust",Count:4b}}
execute if data block ~ ~ ~ Items:[{Slot:6b,id:"minecraft:blue_ice"}] store success score temp_1 mech_data run summon item ^ ^ ^1 {Item:{id:"minecraft:packed_ice",Count:4b}}
execute if data block ~ ~ ~ Items:[{Slot:6b,id:"minecraft:packed_ice"}] store success score temp_1 mech_data run summon item ^ ^ ^1 {Item:{id:"minecraft:ice",Count:4b}}
execute if data block ~ ~ ~ Items:[{Slot:6b,id:"minecraft:white_wool"}] store success score temp_1 mech_data run summon item ^ ^ ^1 {Item:{id:"minecraft:string",Count:4b}}

#cleanup
execute if score temp_1 mech_data matches 1 run scoreboard players remove temp_0 mech_data 1
execute if score temp_1 mech_data matches 1 store result block ~ ~ ~ Items[{Slot:6b}].Count byte 1 run scoreboard players get temp_0 mech_data
execute if score temp_1 mech_data matches 1 run scoreboard players remove @s mech_power 16
