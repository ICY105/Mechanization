
execute if score $temp_0 mechanization.data matches 100.. run experience add @s 100 points
execute if score $temp_0 mechanization.data matches 100.. run scoreboard players remove $temp_0 mechanization.data 100
execute if score $temp_0 mechanization.data matches 10.. run experience add @s 10 points
execute if score $temp_0 mechanization.data matches 10.. run scoreboard players remove $temp_0 mechanization.data 100
execute if score $temp_0 mechanization.data matches 1.. run experience add @s 1 points
execute if score $temp_0 mechanization.data matches 1.. run scoreboard players remove $temp_0 mechanization.data 1

execute if score $temp_0 mechanization.data matches 1.. run function mechanization:base/triggers/drink_liquid_experience
