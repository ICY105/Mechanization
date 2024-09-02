
scoreboard players set #success mechanization.data 0
execute if entity @s[nbt={Item:{id:"minecraft:oak_sapling"}}] run function mechanization:machines/blocks/tree_feller/reduce_item_count
execute if score #success mechanization.data matches 1 run setblock ~ ~ ~ minecraft:oak_sapling

scoreboard players set #success mechanization.data 0
execute if entity @s[nbt={Item:{id:"minecraft:spruce_sapling"}}] run function mechanization:machines/blocks/tree_feller/reduce_item_count
execute if score #success mechanization.data matches 1 run setblock ~ ~ ~ minecraft:spruce_sapling

scoreboard players set #success mechanization.data 0
execute if entity @s[nbt={Item:{id:"minecraft:birch_sapling"}}] run function mechanization:machines/blocks/tree_feller/reduce_item_count
execute if score #success mechanization.data matches 1 run setblock ~ ~ ~ minecraft:birch_sapling

scoreboard players set #success mechanization.data 0
execute if entity @s[nbt={Item:{id:"minecraft:jungle_sapling"}}] run function mechanization:machines/blocks/tree_feller/reduce_item_count
execute if score #success mechanization.data matches 1 run setblock ~ ~ ~ minecraft:jungle_sapling

scoreboard players set #success mechanization.data 0
execute if entity @s[nbt={Item:{id:"minecraft:acacia_sapling"}}] run function mechanization:machines/blocks/tree_feller/reduce_item_count
execute if score #success mechanization.data matches 1 run setblock ~ ~ ~ minecraft:acacia_sapling

scoreboard players set #success mechanization.data 0
execute if entity @s[nbt={Item:{id:"minecraft:mangrove_propagule"}}] run function mechanization:machines/blocks/tree_feller/reduce_item_count
execute if score #success mechanization.data matches 1 run setblock ~ ~ ~ minecraft:mangrove_propagule

scoreboard players set #success mechanization.data 0
execute if entity @s[nbt={Item:{id:"minecraft:crimson_fungus"}}] run function mechanization:machines/blocks/tree_feller/reduce_item_count
execute if score #success mechanization.data matches 1 run setblock ~ ~ ~ minecraft:crimson_fungus

scoreboard players set #success mechanization.data 0
execute if entity @s[nbt={Item:{id:"minecraft:warped_fungus"}}] run function mechanization:machines/blocks/tree_feller/reduce_item_count
execute if score #success mechanization.data matches 1 run setblock ~ ~ ~ minecraft:warped_fungus
