
scoreboard players set #failed mechanization.data -1
execute if data entity @s Item.tag.item.id run data modify storage mechanization:temp obj set from block ~ ~ ~ Items[{Slot:0b}]
execute if data entity @s Item.tag.item.id run data remove storage mechanization:temp obj.Count
execute if data entity @s Item.tag.item.id store success score #failed mechanization.data run data modify storage mechanization:temp obj set from entity @s Item.tag.item

execute if score #failed mechanization.data matches -1 run data modify entity @s Item.tag.item set from block ~ ~ ~ Items[{Slot:0b}]
execute if score #failed mechanization.data matches -1 run data remove entity @s Item.tag.item.Count
execute if score #failed mechanization.data matches -1..0 store result score #count mechanization.data run data get block ~ ~ ~ Items[{Slot:0b}].Count
execute if score #failed mechanization.data matches -1..0 run scoreboard players operation @s mechanization.data += #count mechanization.data
execute if score #failed mechanization.data matches -1..0 run item replace block ~ ~ ~ container.0 with minecraft:air
