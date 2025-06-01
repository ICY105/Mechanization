
execute if entity @s[tag=mechanization.filtered] run setblock -30000000 0 3201 minecraft:yellow_shulker_box replace
execute if entity @s[tag=mechanization.filtered] run data modify block -30000000 0 3201 Items append from entity @s Item.components."minecraft:custom_data".filter
execute if entity @s[tag=mechanization.filtered] align xyz run loot spawn ~0.5 ~0.5 ~0.5 mine -30000000 0 3201 minecraft:debug_stick[minecraft:custom_data={drop_contents:1b}]

execute if entity @s[tag=mechanization.item_extractor.has_box] at @s positioned ~ ~-0.375 ~ run kill @n[tag=mechanization.item_extractor.hit_box,distance=..0.1]

execute align xyz run loot spawn ~0.5 ~0.5 ~0.5 loot mechanization:assembly/item_extractor
kill @s
