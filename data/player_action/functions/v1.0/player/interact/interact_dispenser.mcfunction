
advancement revoke @s only player_action:v1/interact_dispenser
execute if score @s player_action.dispenser matches 1.. run function #player_action:v1/interact_dispenser
execute if score @s player_action.dispenser matches 1.. run scoreboard players set @s player_action.dispenser 0
