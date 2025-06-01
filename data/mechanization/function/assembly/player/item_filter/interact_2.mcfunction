
execute if entity @s[tag=!mechanization.filtered] if items block -30000000 0 3201 container.0 *[minecraft:custom_data~{mechanization:{id:"item_filter"}}] run data modify entity @s Item.components."minecraft:custom_data".filter set from block -30000000 0 3201 Items[0]
execute if entity @s[tag=!mechanization.filtered] if items block -30000000 0 3201 container.0 *[minecraft:custom_data~{mechanization:{id:"item_filter"}}] run scoreboard players set #success mechanization.data 1

execute if entity @s[tag=mechanization.filtered] run setblock -30000000 0 3201 minecraft:yellow_shulker_box replace
execute if entity @s[tag=mechanization.filtered] run data modify block -30000000 0 3201 Items append from entity @s Item.components."minecraft:custom_data".filter
execute if entity @s[tag=mechanization.filtered] at @p[tag=mechanization.interact] run loot spawn ~ ~ ~ mine -30000000 0 3201 minecraft:debug_stick[minecraft:custom_data={drop_contents:1b}]
execute if entity @s[tag=mechanization.filtered] run data remove entity @s Item.components."minecraft:custom_data".filter

tag @s remove mechanization.filtered
execute if data entity @s Item.components."minecraft:custom_data".filter run tag @s add mechanization.filtered

execute if entity @s[tag=!mechanization.filtered] run item modify entity @s contents {function:"minecraft:set_components",components:{"minecraft:enchantment_glint_override": 0b}}
execute if entity @s[tag=mechanization.filtered] run item modify entity @s contents {function:"minecraft:set_components",components:{"minecraft:enchantment_glint_override": 1b}}
