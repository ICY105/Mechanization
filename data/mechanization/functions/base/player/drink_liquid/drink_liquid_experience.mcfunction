
execute if score #amount mechanization.data matches 100.. run experience add @s 100 points
execute if score #amount mechanization.data matches 100.. run scoreboard players remove #amount mechanization.data 100
execute if score #amount mechanization.data matches 10.. run experience add @s 10 points
execute if score #amount mechanization.data matches 10.. run scoreboard players remove #amount mechanization.data 10
execute if score #amount mechanization.data matches 1.. run experience add @s 1 points
execute if score #amount mechanization.data matches 1.. run scoreboard players remove #amount mechanization.data 1

execute if score #amount mechanization.data matches 1.. run function mechanization:base/players/drink_liquid/drink_liquid_experience
