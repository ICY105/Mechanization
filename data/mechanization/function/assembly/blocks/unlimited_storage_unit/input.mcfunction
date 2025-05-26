
scoreboard players set #failed mechanization.data -2
execute if data entity @s item.components."minecraft:custom_data".item.id run scoreboard players set #failed mechanization.data -1
execute if score #failed mechanization.data matches -1 run data modify storage mechanization:temp obj set from block ~ ~ ~ Items[{Slot:0b}]
execute if score #failed mechanization.data matches -1 run data remove storage mechanization:temp obj.count
execute if score #failed mechanization.data matches -1 store success score #failed mechanization.data run data modify storage mechanization:temp obj set from entity @s item.components."minecraft:custom_data".item

execute if score #failed mechanization.data matches -2 run data modify entity @s item.components."minecraft:custom_data".item set from block ~ ~ ~ Items[{Slot:0b}]
execute if score #failed mechanization.data matches -2 run data remove entity @s item.components."minecraft:custom_data".item.count
execute if score #failed mechanization.data matches -2..0 store result score #count mechanization.data run data get block ~ ~ ~ Items[{Slot:0b}].count
execute if score #failed mechanization.data matches -2..0 run scoreboard players operation @s mechanization.data += #count mechanization.data
execute if score #failed mechanization.data matches -2..0 run item replace block ~ ~ ~ container.0 with minecraft:air
