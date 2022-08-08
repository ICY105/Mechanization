
advancement revoke @s only player_action:v1/interact_crafting_table
execute if score @s player_action.crafting_table matches 1.. run function #player_action:v1/interact_crafting_table
execute if score @s player_action.crafting_table matches 1.. run scoreboard players set @s player_action.crafting_table 0
