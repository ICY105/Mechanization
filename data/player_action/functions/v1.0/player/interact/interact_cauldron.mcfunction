
advancement revoke @s only player_action:v1/interact_cauldron
execute if score @s player_action.fill_cauldron matches 1.. run function #player_action:v1/interact_cauldron
execute if score @s player_action.fill_cauldron matches 1.. run scoreboard players set @s player_action.fill_cauldron 0
execute if score @s player_action.use_cauldron matches 1.. run function #player_action:v1/interact_cauldron
execute if score @s player_action.use_cauldron matches 1.. run scoreboard players set @s player_action.use_cauldron 0
execute if score @s player_action.clean_armor matches 1.. run function #player_action:v1/interact_cauldron
execute if score @s player_action.clean_armor matches 1.. run scoreboard players set @s player_action.clean_armor 0
execute if score @s player_action.clean_banner matches 1.. run function #player_action:v1/interact_cauldron
execute if score @s player_action.clean_banner matches 1.. run scoreboard players set @s player_action.clean_banner 0
execute if score @s player_action.clean_shulker_box matches 1.. run function #player_action:v1/interact_cauldron
execute if score @s player_action.clean_shulker_box matches 1.. run scoreboard players set @s player_action.clean_shulker_box 0
