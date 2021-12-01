
advancement revoke @s only mechanization:triggers/interact_with_inserter
tag @s add mech_interact

scoreboard players set $temp_0 mechanization.data 0
data modify storage du:temp obj set value {}
execute if data entity @s SelectedItem.tag{mech_itemid:5100} run data modify storage du:temp obj set from entity @s SelectedItem
execute as @e[tag=mech_item_inserter,sort=nearest,limit=1,distance=..12,nbt={ItemRotation:1b}] at @s run function mechanization:assembly/tools/item_filter/interact_2
execute if score $temp_0 mechanization.data matches 1 run item replace entity @s weapon.mainhand with minecraft:air

tag @s remove mech_interact
