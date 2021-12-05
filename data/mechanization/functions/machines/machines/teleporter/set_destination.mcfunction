
data modify entity @s Item.tag.dest set value {x:0,y:0,z:0,dimension:""}

execute store result score $temp_0 mech_data run data get entity @p[scores={mech_usedid=1101},distance=..16] SelectedItem.tag.pos.x
execute store result score $temp_1 mech_data run data get entity @p[scores={mech_usedid=1101},distance=..16] SelectedItem.tag.pos.y
execute store result score $temp_2 mech_data run data get entity @p[scores={mech_usedid=1101},distance=..16] SelectedItem.tag.pos.z
data modify storage du:temp obj.dimension set from entity @p[scores={mech_usedid=1101},distance=..16] SelectedItem.tag.pos.dimension

execute store result entity @s Item.tag.dest.x int 1 run scoreboard players get $temp_0 mech_data
execute store result entity @s Item.tag.dest.y int 1 run scoreboard players get $temp_1 mech_data
execute store result entity @s Item.tag.dest.z int 1 run scoreboard players get $temp_2 mech_data
data modify entity @s Item.tag.dest.dimension set from storage du:temp obj.dimension

tellraw @p [{"translate":"mech.text.multimeter.set_pos","color":"dark_green","with":[{"score":{"name":"$temp_0","objective":"mech_data"},"color":"dark_aqua"},{"score":{"name":"$temp_1","objective":"mech_data"},"color":"dark_aqua"},{"score":{"name":"$temp_2","objective":"mech_data"},"color":"dark_aqua"},{"nbt":"obj.dimension","storage":"du:temp","color":"dark_aqua"}]}]
