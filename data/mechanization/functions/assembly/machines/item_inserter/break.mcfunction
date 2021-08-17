
execute if entity @s[tag=mech_filtered] run data remove block -29999999 0 1601 Items
execute if entity @s[tag=mech_filtered] run data modify block -29999999 0 1601 Items append from entity @s Item.tag.filter_item
execute if entity @s[tag=mech_filtered] at @p[tag=mech_interact] run loot spawn ~ ~ ~ mine -29999999 0 1601 minecraft:air{drop_contents:true}
execute if entity @s[tag=mech_filtered] run data remove entity @s Item.tag.filter_item

execute if block ~ ~ ~ #minecraft:moving_piston run setblock ~ ~ ~ minecraft:air
loot spawn ~ ~ ~ loot mechanization:assembly/item_inserter
kill @s
