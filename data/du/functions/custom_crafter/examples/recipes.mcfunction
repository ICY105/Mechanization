
execute if score in_1 du_data matches 0 if score in_2 du_data matches 0 if score in_3 du_data matches 0 if score in_4 du_data matches 0 if score in_5 du_data matches 0 if score in_6 du_data matches 0 if score in_7 du_data matches 0 if score in_8 du_data matches 0 if block ~ ~ ~ trapped_chest{Items:[{Slot:2b,id:"minecraft:stone"}]} run replaceitem block ~ ~ ~ container.16 minecraft:cobblestone 2 

execute if block ~ ~ ~ trapped_chest{Items:[{Slot:2b,id:"minecraft:diamond"},{Slot:3b,id:"minecraft:diamond"},{Slot:4b,id:"minecraft:diamond"},{Slot:11b,id:"minecraft:diamond"},{Slot:12b,id:"minecraft:diamond"},{Slot:13b,id:"minecraft:diamond"},{Slot:20b,id:"minecraft:diamond"},{Slot:21b,id:"minecraft:diamond"},{Slot:22b,id:"minecraft:diamond"}]} run replaceitem block ~ ~ ~ container.16 minecraft:diamond_block 1 

execute if score in_4 du_data matches 0 if block ~ ~ ~ trapped_chest{Items:[{Slot:2b,id:"minecraft:cobblestone"},{Slot:3b,id:"minecraft:cobblestone"},{Slot:4b,id:"minecraft:cobblestone"},{Slot:11b,id:"minecraft:cobblestone"},{Slot:13b,id:"minecraft:cobblestone"},{Slot:20b,id:"minecraft:cobblestone"},{Slot:21b,id:"minecraft:cobblestone"},{Slot:22b,id:"minecraft:cobblestone"}]} run replaceitem block ~ ~ ~ container.16 minecraft:diamond_sword 1 

execute if score in_0 du_data matches 0 if score in_2 du_data matches 0 if score in_3 du_data matches 2.. if score in_5 du_data matches 2.. if score in_6 du_data matches 0 if score in_8 du_data matches 0 if block ~ ~ ~ trapped_chest{Items:[{Slot:3b,id:"minecraft:stick"},{Slot:11b,id:"minecraft:stick"},{Slot:12b,id:"minecraft:stick"},{Slot:13b,id:"minecraft:stick"},{Slot:21b,id:"minecraft:stone_slab"}]} run function du:custom_crafter/examples/armor_stand 


#