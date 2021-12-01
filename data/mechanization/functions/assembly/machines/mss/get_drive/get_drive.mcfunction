
execute store result score temp_0 mechanization.data run data get block ~ ~ ~ Items
execute if score in_0 mechanization.data <= temp_0 mechanization.data run function mechanization:assembly/machines/mss/get_drive/get_drive_2 
scoreboard players operation in_0 mechanization.data -= temp_0 mech_data
