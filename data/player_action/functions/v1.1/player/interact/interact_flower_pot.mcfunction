
advancement revoke @s only player_action:v1/interact_flower_pot
execute if score @s player_action.flower_pot matches 1.. run function #player_action:v1/interact_flower_pot
execute if score @s player_action.flower_pot matches 1.. run scoreboard players set @s player_action.flower_pot 0
