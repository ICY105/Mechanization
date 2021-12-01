

execute if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:stick"}] run scoreboard players add @s mechanization.data 5
execute if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:oak_planks"}] run scoreboard players add @s mechanization.data 15
execute if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:birch_planks"}] run scoreboard players add @s mechanization.data 15
execute if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:spruce_planks"}] run scoreboard players add @s mechanization.data 15
execute if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:jungle_planks"}] run scoreboard players add @s mechanization.data 15
execute if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:acacia_planks"}] run scoreboard players add @s mechanization.data 15
execute if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:dark_oak_planks"}] run scoreboard players add @s mechanization.data 15

execute if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:coal"}] run scoreboard players add @s mechanization.data 80
execute if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:charcoal"}] run scoreboard players add @s mechanization.data 80
execute if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:coal_block"}] run scoreboard players add @s mechanization.data 800
execute if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:blaze_rod"}] run scoreboard players add @s mechanization.data 120

execute if score @s mechanization.data matches 1.. run item modify block ~ ~ ~ container.10 mechanization:decrement_count

