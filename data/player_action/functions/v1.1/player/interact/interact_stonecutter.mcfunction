
advancement revoke @s only player_action:v1/interact_stonecutter
execute if score @s player_action.stonecutter matches 1.. run function #player_action:v1/interact_stonecutter
execute if score @s player_action.stonecutter matches 1.. run scoreboard players set @s player_action.stonecutter 0
