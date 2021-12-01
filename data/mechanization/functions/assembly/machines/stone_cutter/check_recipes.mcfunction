
#get count
scoreboard players set $temp_1 mech_data 0
data modify storage du:temp obj set from storage du:temp list[0]
execute store result score $temp_0 mech_data run data get storage du:temp list[0].Count

### 2x2
execute if score $temp_0 mech_data matches 1.. if score $temp_1 mech_data matches 0 run function mechanization:assembly/machines/stone_cutter/check_recipes_1
execute if score $temp_0 mech_data matches 1.. if score $temp_1 mech_data matches 1 run scoreboard players remove $temp_0 mech_data 1
execute if score $temp_0 mech_data matches 1.. if score $temp_1 mech_data matches 1 run scoreboard players remove @s mech_power 16

### 3x3
execute if score $temp_0 mech_data matches 4.. if score $temp_1 mech_data matches 0 run function mechanization:assembly/machines/stone_cutter/check_recipes_4
execute if score $temp_0 mech_data matches 4.. if score $temp_1 mech_data matches 1 run scoreboard players remove $temp_0 mech_data 4
execute if score $temp_0 mech_data matches 4.. if score $temp_1 mech_data matches 1 run scoreboard players remove @s mech_power 16

#store count
execute store result storage du:temp list[0].Count byte 1 run scoreboard players get $temp_0 mech_data

#loop
data modify block ~ ~ ~ Items append from storage du:temp list[0]
data remove storage du:temp list[0]
execute if data storage du:temp list[0] run function mechanization:assembly/machines/stone_cutter/check_recipes
