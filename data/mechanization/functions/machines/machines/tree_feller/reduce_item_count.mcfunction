
execute store result score temp_1 mech_data run data get entity @s Item.Count
scoreboard players remove temp_1 mech_data 1
execute store result entity @s Item.Count byte 1 run scoreboard players get temp_1 mech_data
execute if score temp_1 mech_data matches ..0 run kill @s
