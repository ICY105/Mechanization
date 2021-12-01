
scoreboard players set $temp_0 mechanization.data 0
execute if data entity @s Item.tag.block store result score $temp_0 mechanization.data run data get entity @s Item.tag.mech_itemid

execute if score $temp_0 mechanization.data matches 5008 run loot spawn ~ ~ ~ loot mechanization:assembly/item_extractor
execute if score $temp_0 mechanization.data matches 5009 run loot spawn ~ ~ ~ loot mechanization:assembly/item_inserter
execute if score $temp_0 mechanization.data matches 5008..5009 run kill @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item:{id:"minecraft:item_frame"}}]
execute if score $temp_0 mechanization.data matches 5008..5009 run kill @s
