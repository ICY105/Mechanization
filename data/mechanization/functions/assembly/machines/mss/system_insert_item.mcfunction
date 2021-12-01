
execute store result score temp_3 mechanization.data run data get block ~ ~ ~ Items
scoreboard players set temp_4 mechanization.data 1
execute if score out_0 mechanization.data matches 0 if score temp_3 mechanization.data matches 1.. run function mechanization:assembly/machines/mss/system_insert_item_2
