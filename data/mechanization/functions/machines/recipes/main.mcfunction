
#### Age of Machine

#Super Piston
execute if score $crafting.in_3 du_data matches 2.. if score $crafting.in_4 du_data matches 8.. if score $crafting.in_5 du_data matches 2.. if score $crafting.in_6 du_data matches 2.. if score $crafting.in_7 du_data matches 8.. if score $crafting.in_8 du_data matches 2.. if block ~ ~ ~ barrel{Items:[{Slot:2b, id:"minecraft:piston"},{Slot:3b, id:"minecraft:piston"},{Slot:4b, id:"minecraft:piston"},{Slot:11b, tag:{OreDict:["ingotSteel"]}},{Slot:12b, id:"minecraft:redstone"},{Slot:13b, tag:{OreDict:["ingotSteel"]}},{Slot:20b, tag:{OreDict:["ingotSteel"]}},{Slot:21b, id:"minecraft:redstone"},{Slot:22b, tag:{OreDict:["ingotSteel"]}}]} run function mechanization:machines/recipes/super_piston

#Super Sticky Piston
execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:slime_block"},{tag: {mech_itemid:2020}} ]} run loot replace block ~ ~ ~ container.16 loot mechanization:machines/super_sticky_piston

#Turn Table
execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:hopper"},{tag: {mech_itemid:2020}} ]} run loot replace block ~ ~ ~ container.16 loot mechanization:machines/turn_table

#global
execute if block ~ ~ ~ barrel{Items:[{tag:{OreDict:["blockMachineFrame1"]}}]} run function mechanization:machines/recipes/recipes_t1
execute if block ~ ~ ~ barrel{Items:[{tag:{OreDict:["blockMachineFrame2"]}}]} run function mechanization:machines/recipes/recipes_t2
execute if block ~ ~ ~ barrel{Items:[{tag:{OreDict:["blockMachineFrame3"]}}]} run function mechanization:machines/recipes/recipes_t3

#Spawner Mover
execute if score $crafting.in_0 du_data matches 4.. if score $crafting.in_2 du_data matches 4.. if score $crafting.in_6 du_data matches 4.. if score $crafting.in_8 du_data matches 4.. if block ~ ~ ~ barrel{Items:[{Slot:2b, id:"minecraft:iron_bars"},{Slot:3b, id:"minecraft:shulker_shell"},{Slot:4b, id:"minecraft:iron_bars"},{Slot:11b, tag:{OreDict:["ingotEnderAlloy"]}},{Slot:12b, tag:{OreDict:["ingotNetherAlloy"]}},{Slot:13b, tag:{OreDict:["ingotEnderAlloy"]}},{Slot:20b, id:"minecraft:iron_bars"},{Slot:21b, id:"minecraft:shulker_shell"},{Slot:22b, id:"minecraft:iron_bars"}]} run function mechanization:machines/recipes/spawner_mover
