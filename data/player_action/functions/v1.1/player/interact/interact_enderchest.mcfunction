
advancement revoke @s only player_action:v1/interact_enderchest
execute if score @s player_action.enderchest matches 1.. run function #player_action:v1/interact_enderchest
execute if score @s player_action.enderchest matches 1.. run scoreboard players set @s player_action.enderchest 0
