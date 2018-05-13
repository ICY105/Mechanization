
execute store result score temp_0 du_data run data get entity @s Inventory[10].Slot
execute if score temp_0 du_data matches 0 run scoreboard players set temp_0 du_data 200
execute if score temp_0 du_data >= in_0 du_data run function du:inventory/damage_entity/_0-10
execute if score temp_0 du_data < in_0 du_data run function du:inventory/damage_entity/_11-20
