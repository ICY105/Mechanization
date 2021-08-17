
data modify entity @s ItemRotation set value 0b

execute if entity @s[tag=mech_filtered] run data remove block -29999999 0 1601 Items
execute if entity @s[tag=mech_filtered] run data modify block -29999999 0 1601 Items append from entity @s Item.tag.filter_item
execute if entity @s[tag=mech_filtered] at @p[tag=mech_interact] run loot spawn ~ ~ ~ mine -29999999 0 1601 minecraft:air{drop_contents:true}
execute if entity @s[tag=mech_filtered] run data remove entity @s Item.tag.filter_item

execute if entity @s[tag=!mech_filtered] if data storage du:temp obj.tag{mech_itemid:5100} run data modify entity @s Item.tag.filter_item set from storage du:temp obj
execute if entity @s[tag=!mech_filtered] run scoreboard players set $temp_0 mech_data 1

tag @s remove mech_filtered
execute if data entity @s Item.tag.filter_item run tag @s add mech_filtered

execute if entity @s[tag=!mech_filtered] run data modify entity @s Item.tag.Enchantments set value []
execute if entity @s[tag=mech_filtered] run data modify entity @s Item.tag.Enchantments set value [{id:"minecraft:binding_curse",lvl:1}]
