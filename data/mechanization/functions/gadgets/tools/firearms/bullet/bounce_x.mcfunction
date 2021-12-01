execute store result score temp_0 mechanization.data run data get entity @s Rotation[0] 1000

execute if score temp_0 mechanization.data matches ..-1 run scoreboard players add temp_0 mechanization.data 360000

execute if score temp_0 mechanization.data matches 0..90000 if score in_0 mechanization.data matches 2 run scoreboard players set temp_1 mechanization.data 180000
execute if score temp_0 mechanization.data matches 0..90000 if score in_0 mechanization.data matches 3 run scoreboard players set temp_1 mechanization.data 360000
execute if score temp_0 mechanization.data matches 0..90000 run scoreboard players operation temp_1 mechanization.data -= temp_0 mech_data

execute if score temp_0 mechanization.data matches 90001..180000 if score in_0 mechanization.data matches 4 run scoreboard players set temp_1 mechanization.data 180000
execute if score temp_0 mechanization.data matches 90001..180000 if score in_0 mechanization.data matches 3 run scoreboard players set temp_1 mechanization.data 360000
execute if score temp_0 mechanization.data matches 90001..180000 run scoreboard players operation temp_1 mechanization.data -= temp_0 mech_data

execute if score temp_0 mechanization.data matches 180001..270000 if score in_0 mechanization.data matches 4 run scoreboard players set temp_1 mechanization.data 180000
execute if score temp_0 mechanization.data matches 180001..270000 if score in_0 mechanization.data matches 1 run scoreboard players set temp_1 mechanization.data 360000
execute if score temp_0 mechanization.data matches 180001..270000 run scoreboard players operation temp_1 mechanization.data -= temp_0 mech_data

execute if score temp_0 mechanization.data matches 270001..360000 if score in_0 mechanization.data matches 2 run scoreboard players set temp_1 mechanization.data 180000
execute if score temp_0 mechanization.data matches 270001..360000 if score in_0 mechanization.data matches 1 run scoreboard players set temp_1 mechanization.data 360000
execute if score temp_0 mechanization.data matches 270001..360000 run scoreboard players operation temp_1 mechanization.data -= temp_0 mech_data

execute store result entity @s Rotation[0] float 0.001 run scoreboard players get temp_1 mech_data

execute at @s run tp @s ^ ^ ^0.1 ~ ~
