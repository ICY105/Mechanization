
advancement revoke @s only player_action:v1/interact_cake
execute if score @s player_action.cake matches 1.. run function #player_action:v1/interact_cake
execute if score @s player_action.cake matches 1.. run scoreboard players set @s player_action.cake 0
