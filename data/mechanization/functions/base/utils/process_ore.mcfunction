
execute store result score #id mechanization.data run data get entity @s Item.tag.mechanization.id

execute if score #id mechanization.data matches 7 if data entity @s Item.tag.mechanization{id:"raw_tin"} if block ~ ~ ~ minecraft:water run setblock ~ ~ ~ minecraft:air
execute if score #id mechanization.data matches 7 if data entity @s Item.tag.mechanization{id:"tin_ore"} if block ~ ~ ~ minecraft:water run setblock ~ ~ ~ minecraft:air

execute if score #id mechanization.data matches 11 if data entity @s Item.tag.mechanization{id:"raw_uranium"} if block ~ ~ ~ minecraft:water run setblock ~ ~ ~ minecraft:air
execute if score #id mechanization.data matches 11 if data entity @s Item.tag.mechanization{id:"uranium_ore"} if block ~ ~ ~ minecraft:water run setblock ~ ~ ~ minecraft:air

execute if score #id mechanization.data matches 12 if data entity @s Item.tag.mechanization{id:"raw_titanium"} if block ~ ~ ~ minecraft:water run setblock ~ ~ ~ minecraft:air
execute if score #id mechanization.data matches 12 if data entity @s Item.tag.mechanization{id:"titanium_ore"} if block ~ ~ ~ minecraft:water run setblock ~ ~ ~ minecraft:air
