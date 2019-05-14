
scoreboard players set temp_0 mech_data 0
execute store success score temp_0 mech_data if block ~ ~ ~ air as @e[type=item,sort=nearest,limit=1,distance=..12,nbt={Item:{id:"minecraft:oak_sapling"}}] run function mechanization:machines/machines/tree_feller/reduce_item_count
execute if score temp_0 mech_data matches 1 run setblock ~ ~ ~ oak_sapling

scoreboard players set temp_0 mech_data 0
execute store success score temp_0 mech_data if block ~ ~ ~ air as @e[type=item,sort=nearest,limit=1,distance=..12,nbt={Item:{id:"minecraft:spruce_sapling"}}] run function mechanization:machines/machines/tree_feller/reduce_item_count
execute if score temp_0 mech_data matches 1 run setblock ~ ~ ~ spruce_sapling

scoreboard players set temp_0 mech_data 0
execute store success score temp_0 mech_data if block ~ ~ ~ air as @e[type=item,sort=nearest,limit=1,distance=..12,nbt={Item:{id:"minecraft:birch_sapling"}}] run function mechanization:machines/machines/tree_feller/reduce_item_count
execute if score temp_0 mech_data matches 1 run setblock ~ ~ ~ birch_sapling

scoreboard players set temp_0 mech_data 0
execute store success score temp_0 mech_data if block ~ ~ ~ air as @e[type=item,sort=nearest,limit=1,distance=..12,nbt={Item:{id:"minecraft:jungle_sapling"}}] run function mechanization:machines/machines/tree_feller/reduce_item_count
execute if score temp_0 mech_data matches 1 run setblock ~ ~ ~ jungle_sapling
