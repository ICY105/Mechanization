
execute store result score temp_0 du_data run data get entity @s Items[17].Slot
execute if score temp_0 du_data matches 0 run scoreboard players set temp_0 du_data 200
execute if score temp_0 du_data >= in_0 du_data run function du:inventory/damage_block/__14-17
execute if score temp_0 du_data < in_0 du_data run function du:inventory/damage_block/__17-20
