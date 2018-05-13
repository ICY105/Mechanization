
execute store result score temp_0 du_data run data get entity @s Items[6].Slot
execute if score temp_0 du_data matches 0 run scoreboard players set temp_0 du_data 200
execute if score temp_0 du_data >= in_0 du_data run function du:inventory/damage_block/_0-6
execute if score temp_0 du_data < in_0 du_data run function du:inventory/damage_block/_7-13
