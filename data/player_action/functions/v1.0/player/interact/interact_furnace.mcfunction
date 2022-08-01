
advancement revoke @s only player_action:v1/interact_furnace
execute if score @s player_action.furnace matches 1.. run function #player_action:v1/interact_furnace
execute if score @s player_action.furnace matches 1.. run scoreboard players set @s player_action.furnace 0
