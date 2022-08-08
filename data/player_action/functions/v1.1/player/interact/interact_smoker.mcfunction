
advancement revoke @s only player_action:v1/interact_smoker
execute if score @s player_action.smoker matches 1.. run function #player_action:v1/interact_smoker
execute if score @s player_action.smoker matches 1.. run scoreboard players set @s player_action.smoker 0
