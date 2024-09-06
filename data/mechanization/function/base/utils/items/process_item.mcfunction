
execute if items entity @s contents *[minecraft:custom_data~{mechanization:{gui_item:1b}}] run kill @s
execute if items entity @s contents minecraft:barrier[minecraft:custom_data~{mechanization:{}}] run function mechanization:base/blocks/resource_blocks/update_nearby
execute if items entity @s contents *[minecraft:custom_data~{smithed:{dict:{}}}] if block ~ ~ ~ minecraft:water run setblock ~ ~ ~ minecraft:air

tag @s add mechanization.processed
