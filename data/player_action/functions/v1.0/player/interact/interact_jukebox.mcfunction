
advancement revoke @s only player_action:v1/interact_jukebox
execute if score @s player_action.jukebox matches 1.. run function #player_action:v1/interact_jukebox
execute if score @s player_action.jukebox matches 1.. run scoreboard players set @s player_action.jukebox 0
