
#get pos
summon minecraft:marker ~ ~ ~ {Tags:["mech_temp"]}
execute store result score $temp_0 mech_data run data get entity @e[tag=mech_temp,distance=..1,limit=1] Pos[0]
execute store result score $temp_1 mech_data run data get entity @e[tag=mech_temp,distance=..1,limit=1] Pos[1]
execute store result score $temp_2 mech_data run data get entity @e[tag=mech_temp,distance=..1,limit=1] Pos[2]
kill @e[tag=mech_temp]

#store to storage
data modify storage du:temp obj set value {x:0,y:0,z:0,dimension:""}
execute store result storage du:temp obj.x int 1 run scoreboard players get $temp_0 mech_data
execute store result storage du:temp obj.y int 1 run scoreboard players get $temp_1 mech_data
execute store result storage du:temp obj.z int 1 run scoreboard players get $temp_2 mech_data
data modify storage du:temp obj.dimension set from entity @s Dimension

#set multimeter data
data modify block -29999999 0 1602 Text1 set value '{"translate":"mech.text.multimeter.set_pos","color":"gray","italic":false,"with":[{"score":{"name":"$temp_0","objective":"mech_data"}},{"score":{"name":"$temp_1","objective":"mech_data"}},{"score":{"name":"$temp_2","objective":"mech_data"}},{"nbt":"obj.dimension","storage":"du:temp"}]}'
data modify storage du:temp var set from block -29999999 0 1602 Text1
item modify entity @s weapon.mainhand mechanization:set_multimeter_pos

#print to chat
title @s actionbar [{"translate":"mech.text.multimeter.set_pos","color":"dark_green","with":[{"score":{"name":"$temp_0","objective":"mech_data"},"color":"dark_aqua"},{"score":{"name":"$temp_1","objective":"mech_data"},"color":"dark_aqua"},{"score":{"name":"$temp_2","objective":"mech_data"},"color":"dark_aqua"},{"nbt":"obj.dimension","storage":"du:temp","color":"dark_aqua"}]}]
