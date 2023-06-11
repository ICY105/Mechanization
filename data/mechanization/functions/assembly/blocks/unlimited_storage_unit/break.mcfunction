
loot spawn ~ ~ ~ loot mechanization:assembly/unlimited_storage_unit

execute store result score #count mechanization.data run data get block ~ ~ ~ Items[{Slot:2b}].Count
scoreboard players operation #count mechanization.data += @s mechanization.data

execute if score #count mechanization.data matches 1.. store result entity @e[type=minecraft:item,sort=nearest,limit=1,distance=..1] Item.tag.mechanization.stored_count int 1 run scoreboard players get #count mechanization.data
execute if score #count mechanization.data matches 1.. run data modify entity @e[type=minecraft:item,sort=nearest,limit=1,distance=..1] Item.tag.mechanization.stored_item set from entity @s item.tag.item

setblock ~ ~ ~ minecraft:air replace
kill @s
