
data modify block -29999999 1 1601 Items set from entity @s Item.tag.filter_item.tag.mech_filter
execute store result score $out_0 mechanization.data run loot insert -29999999 1 1601 mine -29999999 0 1601 minecraft:air{drop_contents:true}
execute if score $out_0 mechanization.data matches 1.. run scoreboard players set $out_0 mechanization.data 1
