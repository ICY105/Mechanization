
scoreboard players set $temp_0 mechanization.data -1
execute if data entity @s Item.tag.item.id run data modify storage du:temp obj set from entity @s Item.tag.item
execute if data entity @s Item.tag.item.id store success score $temp_0 mechanization.data run data modify storage du:temp obj set from block ~ ~ ~ Items[{Slot:0b}]

execute if score $temp_0 mechanization.data matches -1 run data modify entity @s Item.tag.item set from block ~ ~ ~ Items[{Slot:0b}]
execute if score $temp_0 mechanization.data matches -1..0 store result score $temp_1 mechanization.data run data get block ~ ~ ~ Items[{Slot:0b}].Count
execute if score $temp_0 mechanization.data matches -1..0 run scoreboard players operation @s mechanization.data += $temp_1 mech_data
execute if score $temp_0 mechanization.data matches -1..0 run item replace block ~ ~ ~ container.0 with minecraft:air
