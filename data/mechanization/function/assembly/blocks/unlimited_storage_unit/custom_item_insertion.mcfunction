
scoreboard players set #allowed mechanization.data 1
scoreboard players set #slot mechanization.data -1

execute unless items block ~ ~ ~ container.0 * run scoreboard players set #slot mechanization.data 0

execute unless data entity @s item.components."minecraft:custom_data".item.id run return -1

execute if score #slot mechanization.data matches 0 run data modify storage mechanization:temp obj2 set from storage mechanization:temp obj
execute if score #slot mechanization.data matches 0 run data remove storage mechanization:temp obj2.count
execute if score #slot mechanization.data matches 0 store success score #failed mechanization.data run data modify storage mechanization:temp obj2 set from entity @s item.components."minecraft:custom_data".item
execute if score #slot mechanization.data matches 0 if score #failed mechanization.data matches 1 run scoreboard players set #allowed mechanization.data 0
