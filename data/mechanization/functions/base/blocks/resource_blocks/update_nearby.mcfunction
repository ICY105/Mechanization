
kill @s
execute store result score #base.count mechanization.data run data get entity @s Item.Count
execute if score #base.count mechanization.data matches 1 align xyz as @e[type=minecraft:item_display,tag=mechanization.resource_block,dx=0,dy=0,dz=0] at @s unless block ~ ~ ~ minecraft:spawner run function mechanization:base/blocks/resource_blocks/break
execute if score #base.count mechanization.data matches 2.. align xyz as @e[type=minecraft:item_display,tag=mechanization.resource_block,distance=..16] at @s unless block ~ ~ ~ minecraft:spawner run function mechanization:base/blocks/resource_blocks/break
