
execute if data entity @s Item.tag.mechanization.gui_item run kill @s

execute if data entity @s Item.tag.smithed.dict.ingot if block ~ ~ ~ minecraft:water run setblock ~ ~ ~ minecraft:air
execute if data entity @s Item.tag.smithed.dict.raw if block ~ ~ ~ minecraft:water run setblock ~ ~ ~ minecraft:air
execute if data entity @s Item.tag.smithed.dict.ore if block ~ ~ ~ minecraft:water run setblock ~ ~ ~ minecraft:air

tag @s add mechanization.processed
