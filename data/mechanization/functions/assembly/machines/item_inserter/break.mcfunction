
execute if entity @s[tag=mechanization.filtered] run data remove block -30000000 0 3201 Items
execute if entity @s[tag=mechanization.filtered] run data modify block -30000000 0 3201 Items append from entity @s Item.tag.filter_item
execute if entity @s[tag=mechanization.filtered] at @p[tag=mechanization.interact] run loot spawn ~ ~ ~ mine -30000000 0 3201 minecraft:air{drop_contents:true}
execute if entity @s[tag=mechanization.filtered] run data remove entity @s Item.tag.filter_item

execute if block ~ ~ ~ minecraft:moving_piston run setblock ~ ~ ~ minecraft:air
loot spawn ~ ~ ~ loot mechanization:assembly/item_inserter
kill @s
