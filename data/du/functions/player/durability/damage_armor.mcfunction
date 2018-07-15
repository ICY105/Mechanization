
#in_0: slot

scoreboard players set temp_0 du_data 0
scoreboard players set out_0 du_data 0

execute store result score temp_0 du_data run data get entity @s Inventory[20].Slot
execute if score temp_0 du_data matches 0 run scoreboard players set temp_0 du_data 200
execute if score temp_0 du_data >= in_0 du_data run function du:player/durability/damage_armor/0-20
execute if score temp_0 du_data < in_0 du_data run function du:player/durability/damage_armor/21-42



