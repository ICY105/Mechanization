
#get count
execute store result score temp_0 mechanization.data run data get block ~ ~ ~ Items[{Slot:0b}].Count
scoreboard players set temp_1 mechanization.data 0

#cleanup
execute if score temp_1 mechanization.data matches 1 run scoreboard players remove temp_0 mechanization.data 1
execute if score temp_1 mechanization.data matches 1 store result block ~ ~ ~ Items[{Slot:0b}].Count byte 1 run scoreboard players get temp_0 mech_data
execute if score temp_1 mechanization.data matches 1 run scoreboard players remove @s mechanization.stored_energy 16


#get count
scoreboard players set $temp_1 mechanization.data 0
data modify storage du:temp obj set from storage du:temp list[0]
execute store result score $temp_0 mechanization.data run data get storage du:temp list[0].Count

### 2x2
execute if score $temp_1 mechanization.data matches 0 run function mechanization:assembly/machines/decompresser/check_recipes_4
execute if score $temp_1 mechanization.data matches 0 run function mechanization:assembly/machines/decompresser/check_recipes_9
execute if score $temp_1 mechanization.data matches 1 run scoreboard players remove $temp_0 mechanization.data 1
execute if score $temp_1 mechanization.data matches 1 run scoreboard players remove @s mechanization.stored_energy 16

#store count
execute store result storage du:temp list[0].Count byte 1 run scoreboard players get $temp_0 mech_data

#loop
data modify block ~ ~ ~ Items append from storage du:temp list[0]
data remove storage du:temp list[0]
execute if data storage du:temp list[0] run function mechanization:assembly/machines/decompresser/check_recipes
