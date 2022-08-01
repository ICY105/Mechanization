
advancement revoke @s only player_action:v1/interact_lectern
execute if score @s player_action.lectern matches 1.. run function #player_action:v1/interact_lectern
execute if score @s player_action.lectern matches 1.. run scoreboard players set @s player_action.lectern 0
