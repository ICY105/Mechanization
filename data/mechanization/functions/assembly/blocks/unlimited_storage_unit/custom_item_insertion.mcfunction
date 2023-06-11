
scoreboard players set #allowed mechanization.data 1
scoreboard players set #slot mechanization.data -1

execute unless data block ~ ~ ~ Items[{Slot:0b}] run scoreboard players set #slot mechanization.data 0

execute if score #slot mechanization.data matches 0 if data entity @s item.tag.item.id run data modify storage mechanization:temp obj2 set from storage mechanization:temp obj
execute if score #slot mechanization.data matches 0 if data entity @s item.tag.item.id run data remove storage mechanization:temp obj2.Count
execute if score #slot mechanization.data matches 0 if data entity @s item.tag.item.id store success score #failed mechanization.data run data modify storage mechanization:temp obj2 set from entity @s item.tag.item
execute if score #slot mechanization.data matches 0 if data entity @s item.tag.item.id if score #failed mechanization.data matches 1 run scoreboard players set #allowed mechanization.data 0
