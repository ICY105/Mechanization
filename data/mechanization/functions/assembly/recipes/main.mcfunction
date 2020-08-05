#Auto Jukebox
execute if block ~ ~ ~ barrel{Items:[{Slot:2b, tag:{OreDict:["ingotSteel"]}},{Slot:3b, tag:{OreDict:["ingotSteel"]}},{Slot:4b, tag:{OreDict:["ingotSteel"]}},{Slot:11b, tag:{OreDict:["ingotSteel"]}},{Slot:12b, tag:{OreDict:["gemCrystalComposite"]}},{Slot:13b, tag:{OreDict:["ingotSteel"]}},{Slot:20b, tag:{OreDict:["ingotSteel"]}},{Slot:21b, tag:{OreDict:["ingotSteel"]}},{Slot:22b, tag:{OreDict:["ingotSteel"]}}]} run loot replace block ~ ~ ~ container.16 loot mechanization:assembly/auto_jukebox

#Decompresser
execute if score $crafting.in_3 du_data matches 2.. if score $crafting.in_5 du_data matches 2.. if score $crafting.in_7 du_data matches 9.. if block ~ ~ ~ barrel{Items:[{Slot:2b, id:"minecraft:piston"},{Slot:3b, id:"minecraft:crafting_table"},{Slot:4b, id:"minecraft:piston"},{Slot:11b, tag:{OreDict:["ingotConductive"]}},{Slot:12b, tag:{OreDict:["blockMachineFrame2"]}},{Slot:13b, tag:{OreDict:["ingotConductive"]}},{Slot:20b, id:"minecraft:piston"},{Slot:21b, id:"minecraft:iron_ingot"},{Slot:22b, id:"minecraft:piston"}]} run function mechanization:assembly/recipes/decompressor

#Compressor
execute if score $crafting.in_3 du_data matches 2.. if score $crafting.in_5 du_data matches 2.. if block ~ ~ ~ barrel{Items:[{Slot:2b, id:"minecraft:piston"},{Slot:3b, id:"minecraft:crafting_table"},{Slot:4b, id:"minecraft:piston"},{Slot:11b, tag:{OreDict:["ingotConductive"]}},{Slot:12b, tag:{OreDict:["blockMachineFrame2"]}},{Slot:13b, tag:{OreDict:["ingotConductive"]}},{Slot:20b, id:"minecraft:piston"},{Slot:21b, id:"minecraft:iron_block"},{Slot:22b, id:"minecraft:piston"}]} run function mechanization:assembly/recipes/compressor

#Stone Cutter
execute if score $crafting.in_0 du_data matches 4.. if score $crafting.in_2 du_data matches 4.. if score $crafting.in_3 du_data matches 2.. if score $crafting.in_5 du_data matches 2.. if score $crafting.in_6 du_data matches 4.. if score $crafting.in_8 du_data matches 4.. if block ~ ~ ~ barrel{Items:[{Slot:2b, id:"minecraft:chiseled_stone_bricks"},{Slot:3b, id:"minecraft:crafting_table"},{Slot:4b, id:"minecraft:chiseled_stone_bricks"},{Slot:11b, tag:{OreDict:["ingotConductive"]}},{Slot:12b, tag:{OreDict:["blockMachineFrame2"]}},{Slot:13b, tag:{OreDict:["ingotConductive"]}},{Slot:20b, id:"minecraft:chiseled_stone_bricks"},{Slot:21b, id:"minecraft:iron_pickaxe"},{Slot:22b, id:"minecraft:chiseled_stone_bricks"}]} run function mechanization:assembly/recipes/stone_cutter

#Dye Machine
execute if score $crafting.in_0 du_data matches 4.. if score $crafting.in_2 du_data matches 4.. if score $crafting.in_3 du_data matches 2.. if score $crafting.in_5 du_data matches 2.. if score $crafting.in_6 du_data matches 4.. if score $crafting.in_7 du_data matches 4.. if score $crafting.in_8 du_data matches 4.. if block ~ ~ ~ barrel{Items:[{Slot:2b, id:"minecraft:blue_dye"},{Slot:3b, id:"minecraft:crafting_table"},{Slot:4b, id:"minecraft:green_dye"},{Slot:11b, tag:{OreDict:["ingotConductive"]}},{Slot:12b, tag:{OreDict:["blockMachineFrame2"]}},{Slot:13b, tag:{OreDict:["ingotConductive"]}},{Slot:20b, id:"minecraft:yellow_dye"},{Slot:21b, id:"minecraft:red_dye"},{Slot:22b, id:"minecraft:black_dye"}]} run function mechanization:assembly/recipes/dye_machine

#Fast Hopper
execute if score $crafting.in_1 du_data matches 2.. if score $crafting.in_3 du_data matches 2.. if score $crafting.in_5 du_data matches 2.. if score $crafting.in_7 du_data matches 2.. if block ~ ~ ~ barrel{Items:[{Slot:2b, tag:{OreDict:["ingotSteel"]}},{Slot:3b, tag:{OreDict:["ingotStructural"]}},{Slot:4b, tag:{OreDict:["ingotSteel"]}},{Slot:11b, id:"minecraft:blaze_powder"},{Slot:12b, id:"minecraft:hopper"},{Slot:13b, id:"minecraft:blaze_powder"},{Slot:20b, tag:{OreDict:["ingotSteel"]}},{Slot:21b, tag:{OreDict:["ingotStructural"]}},{Slot:22b, tag:{OreDict:["ingotSteel"]}}]} run function mechanization:assembly/recipes/fast_hopper

#Ender Hopper
execute if score $crafting.in_1 du_data matches 2.. if score $crafting.in_3 du_data matches 2.. if score $crafting.in_5 du_data matches 2.. if score $crafting.in_7 du_data matches 2.. if block ~ ~ ~ barrel{Items:[{Slot:2b, tag:{OreDict:["ingotSteel"]}},{Slot:3b, tag:{OreDict:["ingotStructural"]}},{Slot:4b, tag:{OreDict:["ingotSteel"]}},{Slot:11b, id:"minecraft:ender_eye"},{Slot:12b, id:"minecraft:hopper"},{Slot:13b, id:"minecraft:ender_eye"},{Slot:20b, tag:{OreDict:["ingotSteel"]}},{Slot:21b, tag:{OreDict:["ingotStructural"]}},{Slot:22b, tag:{OreDict:["ingotSteel"]}}]} run function mechanization:assembly/recipes/ender_hopper

#Unlimited Storage
execute if score $crafting.in_3 du_data matches 2.. if score $crafting.in_5 du_data matches 2.. if block ~ ~ ~ barrel{Items:[{Slot:2b, id:"minecraft:chest"},{Slot:3b, id:"minecraft:ender_chest"},{Slot:4b, id:"minecraft:chest"},{Slot:11b, id:"minecraft:chest"},{Slot:12b, tag:{OreDict:["blockMachineFrame2"]}},{Slot:13b, id:"minecraft:chest"},{Slot:20b, id:"minecraft:chest"},{Slot:21b, id:"minecraft:hopper"},{Slot:22b, id:"minecraft:chest"}]} run function mechanization:assembly/recipes/unlimited_storage_unit

#Item Transmitter
execute if score $crafting.in_0 du_data matches 0 if score $crafting.in_2 du_data matches 0 if score $crafting.in_3 du_data matches 0 if score $crafting.in_5 du_data matches 0 if block ~ ~ ~ barrel{Items:[{Slot:3b, tag:{OreDict:["gemCrystalComposite"]}},{Slot:12b, id:"minecraft:hopper"},{Slot:20b, tag:{OreDict:["ingotSteel"]}},{Slot:21b, tag:{OreDict:["ingotSteel"]}},{Slot:22b, tag:{OreDict:["ingotSteel"]}}]} run loot replace block ~ ~ ~ container.16 loot mechanization:assembly/item_transmitter

#Item Receiver
execute if score $crafting.in_0 du_data matches 0 if score $crafting.in_2 du_data matches 0 if score $crafting.in_3 du_data matches 0 if score $crafting.in_5 du_data matches 0 if block ~ ~ ~ barrel{Items:[{Slot:3b, tag:{OreDict:["gemCrystalComposite"]}},{Slot:12b, tag:{OreDict:["ingotSteel"]}},{Slot:20b, tag:{OreDict:["ingotSteel"]}},{Slot:21b, id:"minecraft:hopper"},{Slot:22b, tag:{OreDict:["ingotSteel"]}}]} run loot replace block ~ ~ ~ container.16 loot mechanization:assembly/item_receiver

#Item Filter
execute if block ~ ~ ~ barrel{Items:[{Slot:2b, id:"minecraft:string"},{Slot:3b, id:"minecraft:string"},{Slot:4b, id:"minecraft:string"},{Slot:11b, id:"minecraft:string"},{Slot:12b, id:"minecraft:iron_ingot"},{Slot:13b, id:"minecraft:string"},{Slot:20b, id:"minecraft:string"},{Slot:21b, id:"minecraft:string"},{Slot:22b, id:"minecraft:string"}]} run loot replace block ~ ~ ~ container.16 loot mechanization:assembly/item_filter

#MSS Terminal
execute if score $crafting.in_1 du_data matches 4.. if score $crafting.in_3 du_data matches 4.. if score $crafting.in_5 du_data matches 4.. if score $crafting.in_7 du_data matches 4.. if block ~ ~ ~ barrel{Items:[{Slot:2b, id:"minecraft:netherite_ingot"},{Slot:3b, tag:{OreDict:["ingotSuperConductive"]}},{Slot:4b, id:"minecraft:netherite_ingot"},{Slot:11b, tag:{OreDict:["ingotNetherAlloy"]}},{Slot:12b, tag:{OreDict:["blockMachineFrame3"]}},{Slot:13b, tag:{OreDict:["ingotEnderAlloy"]}},{Slot:20b, id:"minecraft:netherite_ingot"},{Slot:21b, tag:{OreDict:["gemCrystalComposite"]}},{Slot:22b, id:"minecraft:netherite_ingot"}]} run function mechanization:assembly/recipes/mss_terminal

#MSS Terminal
execute if score $crafting.in_0 du_data matches 4.. if score $crafting.in_1 du_data matches 2.. if score $crafting.in_2 du_data matches 4.. if score $crafting.in_3 du_data matches 2.. if score $crafting.in_5 du_data matches 2.. if score $crafting.in_6 du_data matches 4.. if score $crafting.in_8 du_data matches 4.. if block ~ ~ ~ barrel{Items:[{Slot:2b, id:"minecraft:iron_bars"},{Slot:3b, tag:{OreDict:["gemCrystalComposite"]}},{Slot:4b, id:"minecraft:iron_bars"},{Slot:11b, tag:{OreDict:["ingotConductive"]}},{Slot:12b, tag:{OreDict:["blockMachineFrame2"]}},{Slot:13b, tag:{OreDict:["ingotConductive"]}},{Slot:20b, id:"minecraft:iron_bars"},{Slot:21b, id:"minecraft:barrel"},{Slot:22b, id:"minecraft:iron_bars"}]} run function mechanization:assembly/recipes/mss_drive_bay

#MSS Storage Drive
execute if score $crafting.in_1 du_data matches 2.. if score $crafting.in_7 du_data matches 2.. if block ~ ~ ~ barrel{Items:[{Slot:2b, tag:{OreDict:["ingotTitaniumSteel"]}},{Slot:3b, tag:{OreDict:["ingotEnderAlloy"]}},{Slot:4b, tag:{OreDict:["ingotTitaniumSteel"]}},{Slot:11b, tag:{OreDict:["ingotSuperConductive"]}},{Slot:12b, tag:{mech_itemid:5007}},{Slot:13b, tag:{OreDict:["ingotSuperConductive"]}},{Slot:20b, tag:{OreDict:["ingotTitaniumSteel"]}},{Slot:21b, tag:{OreDict:["ingotNetherAlloy"]}},{Slot:22b, tag:{OreDict:["ingotTitaniumSteel"]}}]} run function mechanization:assembly/recipes/mss_storage_drive




