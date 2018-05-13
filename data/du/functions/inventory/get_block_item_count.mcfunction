
#in_0: slot
#out_0: item count

scoreboard players set temp_0 du_data 0
scoreboard players set out_0 du_data 0

execute store result score temp_0 du_data run data get entity @s Items[13].Slot
execute if score temp_0 du_data matches 0 run scoreboard players set temp_0 du_data 200
execute if score temp_0 du_data >= in_0 du_data run function du:inventory/count_block/0-13
execute if score temp_0 du_data < in_0 du_data run function du:inventory/count_block/14-26



