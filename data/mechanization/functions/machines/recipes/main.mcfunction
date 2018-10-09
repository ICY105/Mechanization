#### Base Module

#Mechanical Manual
execute if score in_0 du_data matches 0 if score in_2 du_data matches 0 if score in_6 du_data matches 0 if score in_8 du_data matches 0 if block ~ ~ ~ trapped_chest{Items:[{Slot: 3b, id: "minecraft:redstone"},{Slot: 11b, id:"minecraft:redstone"},{Slot: 12b, id:"minecraft:book"},{Slot: 13b, id:"minecraft:redstone"},{Slot: 21b, id:"minecraft:redstone"}]} run replaceitem block ~ ~ ~ container.16 diamond_shovel{Damage: 400, mech_itemid: 1103, Unbreakable: 1, HideFlags: 38, du_click_detect:1b, manual:{base:400, page:401, page_min:401, page_max:482}, display: {Name: "{\"translate\":\"mech.item.mechanical_manual\",\"color\":\"gray\",\"italic\":false}"}, AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10000,Operation:0,UUIDLeast:100005,UUIDMost:100005,Slot:"mainhand"}]}

#Machine Upgrade
execute if block ~ ~ ~ trapped_chest{Items:[{Slot:2b, tag:{OreDict:["ingotSteel"]}},{Slot:3b, tag:{OreDict:["gemCrystalComposite"]}},{Slot:4b, tag:{OreDict:["ingotSteel"]}},{Slot:11b, tag:{OreDict:["ingotEnder"]}},{Slot:12b, id:"minecraft:enchanted_book"},{Slot:13b, tag:{OreDict:["ingotNether"]}},{Slot:20b, tag:{OreDict:["ingotSteel"]}},{Slot:21b, tag:{OreDict:["gemCrystalComposite"]}},{Slot:22b, tag:{OreDict:["ingotSteel"]}}]} run replaceitem block ~ ~ ~ container.16 diamond_shovel{du_nerf:1b, mech_itemid: 1102, du_click_detect:1b,Unbreakable:1, Damage:42, HideFlags:6, display:{Name: "{\"translate\":\"mech.item.machine_upgrade\",\"color\":\"dark_gray\",\"italic\":false}", Lore: ["§fShift+Right click on a machine to upgrade.", "§fEffects differ between machines."]}, AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:100,Operation:0,UUIDLeast:100005,UUIDMost:100005,Slot:"mainhand"}]}
execute if block ~ ~ ~ trapped_chest{Items:[{Slot:2b, tag:{OreDict:["ingotSteel"]}},{Slot:3b, tag:{OreDict:["gemCrystalComposite"]}},{Slot:4b, tag:{OreDict:["ingotSteel"]}},{Slot:11b, tag:{OreDict:["ingotNether"]}},{Slot:12b, id:"minecraft:enchanted_book"},{Slot:13b, tag:{OreDict:["ingotEnder"]}},{Slot:20b, tag:{OreDict:["ingotSteel"]}},{Slot:21b, tag:{OreDict:["gemCrystalComposite"]}},{Slot:22b, tag:{OreDict:["ingotSteel"]}}]} run replaceitem block ~ ~ ~ container.16 diamond_shovel{du_nerf:1b, mech_itemid: 1102, du_click_detect:1b,Unbreakable:1, Damage:42, HideFlags:6, display:{Name: "{\"translate\":\"mech.item.machine_upgrade\",\"color\":\"dark_gray\",\"italic\":false}", Lore: ["§fShift+Right click on a machine to upgrade.", "§fEffects differ between machines."]}, AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:100,Operation:0,UUIDLeast:100005,UUIDMost:100005,Slot:"mainhand"}]}

## Temporary until nbt output

#Machine Wrench
execute if score in_1 du_data matches 0 if score in_3 du_data matches 0 if score in_5 du_data matches 0 if score in_6 du_data matches 0 if score in_8 du_data matches 0 if block ~ ~ ~ trapped_chest{Items:[{Slot:2b, id:"minecraft:iron_ingot"},{Slot:4b, id:"minecraft:iron_ingot"},{Slot:12b, id:"minecraft:diamond"},{Slot:21b, id:"minecraft:iron_ingot"}]} run replaceitem block ~ ~ ~ container.16 diamond_shovel{du_nerf:1b, mech_itemid: 1100, du_click_detect:3b, Unbreakable:1, Damage:40, HideFlags:6, display: {Name: "{\"translate\":\"mech.item.wrench\",\"color\":\"gray\",\"italic\":false}", Lore: ["§fRight Click to rotate machine.", "§fShift+Right Click to safely break machine."]}, AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:100,Operation:0,UUIDLeast:100005,UUIDMost:100005,Slot:"mainhand"}]}

#Multimeter
execute if block ~ ~ ~ trapped_chest{Items:[{Slot:2b, id:"minecraft:redstone"},{Slot:3b, id:"minecraft:iron_ingot"},{Slot:4b, id:"minecraft:redstone"},{Slot:11b, id:"minecraft:gold_ingot"},{Slot:12b, id:"minecraft:glass"},{Slot:13b, id:"minecraft:gold_ingot"},{Slot:20b, id:"minecraft:gold_ingot"},{Slot:21b, id:"minecraft:iron_ingot"},{Slot:22b, id:"minecraft:gold_ingot"}]} run replaceitem block ~ ~ ~ container.16 diamond_shovel{du_nerf:1b, mech_itemid: 1101, du_click_detect:3b, Unbreakable:1, Damage:41, HideFlags:6, display: {Name: "{\"translate\":\"mech.item.multimeter\",\"color\":\"gold\",\"italic\":false}", Lore: ["§fRight Click to see machine stats.", "§fShift+Right Click to edit machine Grid ID."]}, AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:100,Operation:0,UUIDLeast:100005,UUIDMost:100005,Slot:"mainhand"}]}


#### Age of Machine

#T1 Machine Frame
scoreboard players set temp_0 du_data 0
execute if score in_4 du_data matches 5.. if block ~ ~ ~ trapped_chest{Items:[{Slot:2b, id:"minecraft:glass"},{Slot:3b, tag:{OreDict:["ingotTin"]}},{Slot:4b, id:"minecraft:glass"},{Slot:11b, tag:{OreDict:["ingotTin"]}},{Slot:12b, id:"minecraft:iron_ingot"},{Slot:13b, tag:{OreDict:["ingotTin"]}},{Slot:20b, id:"minecraft:glass"},{Slot:21b, tag:{OreDict:["ingotTin"]}},{Slot:22b, id:"minecraft:glass"}]} store success score temp_0 du_data run replaceitem block ~ ~ ~ container.16 diamond_shovel{du_nerf:1b, mech_itemid: 2200, Unbreakable: 1, OreDict: ["blockMachineFrame1"], display: {Name: "{\"translate\":\"mech.item.machine_frame_tier_1\",\"color\":\"blue\",\"italic\":false}"}, HideFlags: 6, Damage: 79}
execute if score temp_0 du_data matches 1 run scoreboard players set out_4 du_data 5

#T2 Machine Frame
execute if score in_0 du_data matches 2.. if score in_2 du_data matches 2.. if score in_4 du_data matches 5.. if score in_6 du_data matches 2.. if score in_8 du_data matches 2.. if block ~ ~ ~ trapped_chest{Items:[{Slot:2b, id:"minecraft:red_stained_glass"},{Slot:3b, tag:{OreDict:["ingotStructural"]}},{Slot:4b, id:"minecraft:red_stained_glass"},{Slot:11b, tag:{OreDict:["ingotStructural"]}},{Slot:12b, tag:{OreDict:["ingotSteel"]}},{Slot:13b, tag:{OreDict:["ingotStructural"]}},{Slot:20b, id:"minecraft:red_stained_glass"},{Slot:21b, tag:{OreDict:["ingotStructural"]}},{Slot:22b, id:"minecraft:red_stained_glass"}]} run function mechanization:machines/recipes/machine_frame_t2

#T3 Machine Frame
execute if score in_0 du_data matches 4.. if score in_2 du_data matches 4.. if score in_4 du_data matches 5.. if score in_6 du_data matches 4.. if score in_8 du_data matches 4.. if block ~ ~ ~ trapped_chest{Items:[{Slot:2b, id:"minecraft:purple_stained_glass"},{Slot:3b, tag:{OreDict:["ingotReinforcedStructural"]}},{Slot:4b, id:"minecraft:purple_stained_glass"},{Slot:11b, tag:{OreDict:["ingotReinforcedStructural"]}},{Slot:12b, tag:{OreDict:["ingotTitaniumSteel"]}},{Slot:13b, tag:{OreDict:["ingotReinforcedStructural"]}},{Slot:20b, id:"minecraft:purple_stained_glass"},{Slot:21b, tag:{OreDict:["ingotReinforcedStructural"]}},{Slot:22b, id:"minecraft:purple_stained_glass"}]} run function mechanization:machines/recipes/machine_frame_t3

#Ores
execute if block ~ ~ ~ trapped_chest{Items:[{id:"minecraft:flint_and_steel"},{tag:{OreDict:["oreCopper"]}}]} run function mechanization:machines/recipes/copper_ore
execute if block ~ ~ ~ trapped_chest{Items:[{id:"minecraft:flint_and_steel"},{tag:{OreDict:["oreTin"]}}]} run function mechanization:machines/recipes/tin_ore
execute if block ~ ~ ~ trapped_chest{Items:[{id:"minecraft:flint_and_steel"},{tag:{OreDict:["oreTitanium"]}}]} run function mechanization:machines/recipes/titanium_ore

#Super Piston
execute if score in_3 du_data matches 2.. if score in_4 du_data matches 8.. if score in_5 du_data matches 2.. if score in_6 du_data matches 2.. if score in_7 du_data matches 8.. if score in_8 du_data matches 2.. if block ~ ~ ~ trapped_chest{Items:[{Slot:2b, id:"minecraft:piston"},{Slot:3b, id:"minecraft:piston"},{Slot:4b, id:"minecraft:piston"},{Slot:11b, tag:{OreDict:["ingotSteel"]}},{Slot:12b, id:"minecraft:redstone"},{Slot:13b, tag:{OreDict:["ingotSteel"]}},{Slot:20b, tag:{OreDict:["ingotSteel"]}},{Slot:21b, id:"minecraft:redstone"},{Slot:22b, tag:{OreDict:["ingotSteel"]}}]} run function mechanization:machines/recipes/super_piston

#Super Sticky Piston
execute if block ~ ~ ~ trapped_chest{Items:[{id:"minecraft:slime_block"},{id:"minecraft:diamond_shovel", tag: {du_click_detect:1b, Unbreakable:1, Damage:70}}]} run replaceitem block ~ ~ ~ container.16 diamond_shovel{du_nerf:1b, mech_itemid: 2021, du_click_detect:1b, Unbreakable:1, Damage:71, HideFlags:6, display: {Name: "{\"translate\":\"mech.block.super_sticky_piston\",\"color\":\"dark_gray\",\"italic\":false}", Lore: ["§fPushes/Pulls tile entities.","§fDoesn't work up/down."]}}

#Turn Table
execute if block ~ ~ ~ trapped_chest{Items:[{id:"minecraft:hopper"},{id:"minecraft:diamond_shovel", tag: {du_click_detect:1b, Unbreakable:1, Damage:70}}]} run replaceitem block ~ ~ ~ container.16 diamond_shovel{du_nerf:1b, mech_itemid: 2022, du_click_detect:1b, Unbreakable:1, Damage:69, HideFlags:6, display: {Name: "{\"translate\":\"mech.block.turn_table\",\"color\":\"dark_gray\",\"italic\":false}", Lore: ["§fRotates machines placed on top."]}}

#global
execute if block ~ ~ ~ trapped_chest{Items:[{tag:{OreDict:["blockMachineFrame1"]}}]} run function mechanization:machines/recipes/recipes_t1
execute if block ~ ~ ~ trapped_chest{Items:[{tag:{OreDict:["blockMachineFrame2"]}}]} run function mechanization:machines/recipes/recipes_t2
execute if block ~ ~ ~ trapped_chest{Items:[{tag:{OreDict:["blockMachineFrame3"]}}]} run function mechanization:machines/recipes/recipes_t3

#Spawner Mover
execute if score in_0 du_data matches 4.. if score in_2 du_data matches 4.. if score in_6 du_data matches 4.. if score in_8 du_data matches 4.. if block ~ ~ ~ trapped_chest{Items:[{Slot:2b, id:"minecraft:iron_bars"},{Slot:3b, id:"minecraft:shulker_shell"},{Slot:4b, id:"minecraft:iron_bars"},{Slot:11b, tag:{OreDict:["ingotEnder"]}},{Slot:12b, tag:{OreDict:["ingotNether"]}},{Slot:13b, tag:{OreDict:["ingotEnder"]}},{Slot:20b, id:"minecraft:iron_bars"},{Slot:21b, id:"minecraft:shulker_shell"},{Slot:22b, id:"minecraft:iron_bars"}]} run function mechanization:machines/recipes/spawner_mover





