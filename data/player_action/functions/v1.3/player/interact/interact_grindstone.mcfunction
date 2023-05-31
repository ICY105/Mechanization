
advancement revoke @s only player_action:v1/interact_grindstone
execute if score @s player_action.grindstone matches 1.. run function #player_action:v1/interact_grindstone
execute if score @s player_action.grindstone matches 1.. run scoreboard players set @s player_action.grindstone 0
