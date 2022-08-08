
advancement revoke @s only player_action:v1/interact_loom
execute if score @s player_action.loom matches 1.. run function #player_action:v1/interact_loom
execute if score @s player_action.loom matches 1.. run scoreboard players set @s player_action.loom 0
