
data modify entity @s ItemRotation set value 0b

execute if entity @s[tag=mechanization.filtered] run data remove block -30000000 0 3201 Items
execute if entity @s[tag=mechanization.filtered] run data modify block -30000000 0 3201 Items append from entity @s Item.tag.filter
execute if entity @s[tag=mechanization.filtered] at @p[tag=mechanization.interact] run loot spawn ~ ~ ~ mine -30000000 0 3201 minecraft:air{drop_contents:true}
execute if entity @s[tag=mechanization.filtered] run data remove entity @s Item.tag.filter

execute if entity @s[tag=!mechanization.filtered] if data storage mechanization:temp obj.tag.mechanization{id:"item_filter"} run data modify entity @s Item.tag.filter set from storage mechanization:temp obj
execute if entity @s[tag=!mechanization.filtered] if data storage mechanization:temp obj.tag.mechanization{id:"item_filter"} run scoreboard players set #success mechanization.data 1

tag @s remove mechanization.filtered
execute if data entity @s Item.tag.filter run tag @s add mechanization.filtered

execute if entity @s[tag=!mechanization.filtered] run data modify entity @s Item.tag.Enchantments set value []
execute if entity @s[tag=mechanization.filtered] run data modify entity @s Item.tag.Enchantments set value [{id:"minecraft:binding_curse",lvl:1}]
