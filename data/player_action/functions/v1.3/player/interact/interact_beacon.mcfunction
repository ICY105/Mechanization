
advancement revoke @s only player_action:v1/interact_beacon
execute if score @s player_action.beacon matches 1.. run function #player_action:v1/interact_beacon
execute if score @s player_action.beacon matches 1.. run scoreboard players set @s player_action.beacon 0
