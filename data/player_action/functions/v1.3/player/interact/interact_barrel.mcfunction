
advancement revoke @s only player_action:v1/interact_barrel
execute if score @s player_action.barrel matches 1.. run function #player_action:v1/interact_barrel
execute if score @s player_action.barrel matches 1.. run scoreboard players set @s player_action.barrel 0
