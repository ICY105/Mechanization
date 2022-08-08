
advancement revoke @s only player_action:v1/interact_shulker_box
execute if score @s player_action.shulker_box matches 1.. run function #player_action:v1/interact_shulker_box
execute if score @s player_action.shulker_box matches 1.. run scoreboard players set @s player_action.shulker_box 0
