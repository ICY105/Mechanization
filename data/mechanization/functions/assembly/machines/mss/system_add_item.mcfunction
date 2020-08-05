
execute store result score temp_3 mech_data run data get block ~ ~ ~ Items
scoreboard players set temp_4 mech_data 1
execute if score out_0 mech_data matches 0 if score temp_3 mech_data matches 1.. run function mechanization:assembly/machines/mss/system_add_item_2
