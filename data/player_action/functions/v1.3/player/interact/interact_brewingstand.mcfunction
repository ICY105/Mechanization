
advancement revoke @s only player_action:v1/interact_brewingstand
execute if score @s player_action.brewingstand matches 1.. run function #player_action:v1/interact_brewingstand
execute if score @s player_action.brewingstand matches 1.. run scoreboard players set @s player_action.brewingstand 0
