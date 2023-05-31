
advancement revoke @s only player_action:v1/interact_hopper
execute if score @s player_action.hopper matches 1.. run function #player_action:v1/interact_hopper
execute if score @s player_action.hopper matches 1.. run scoreboard players set @s player_action.hopper 0
