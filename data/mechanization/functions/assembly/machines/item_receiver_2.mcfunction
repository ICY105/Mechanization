
execute store result score temp_0 mech_data run data get block ~ ~ ~ Items
execute if block ~ ~ ~ #mechanization:inv_3 unless block ~ ~ ~ #mechanization:inv_3{Items:[{Slot:0b}]} run tag @s add mech_active
execute if block ~ ~ ~ #mechanization:inv_5 if score temp_0 mech_data matches ..4 run tag @s add mech_active
execute if block ~ ~ ~ #mechanization:inv_9 if score temp_0 mech_data matches ..8 run tag @s add mech_active
execute if block ~ ~ ~ #mechanization:inv_27 if score temp_0 mech_data matches ..26 run tag @s add mech_active

