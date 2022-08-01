
execute if score @s player_action.fly matches 1.. run tag @s add player_action.flying
execute if score @s player_action.walk matches 1.. run tag @s add player_action.walking
execute if score @s player_action.fall matches 1.. run tag @s add player_action.falling
execute if score @s player_action.climb matches 1.. run tag @s add player_action.climbing
execute if score @s player_action.aviate matches 1.. run tag @s add player_action.elyra_flying

execute if predicate player_action:v1.0/swimming run tag @s add player_action.swimming
execute if predicate player_action:v1.0/sneaking run tag @s add player_action.sneaking
execute if predicate player_action:v1.0/sprinting run tag @s add player_action.sprinting
execute if predicate player_action:v1.0/riding_pig run tag @s add player_action.riding_pig
execute if predicate player_action:v1.0/riding_boat run tag @s add player_action.riding_boat
execute if predicate player_action:v1.0/riding_mule run tag @s add player_action.riding_mule
execute if predicate player_action:v1.0/riding_llama run tag @s add player_action.riding_llama
execute if predicate player_action:v1.0/riding_horse run tag @s add player_action.riding_horse
execute if predicate player_action:v1.0/riding_donkey run tag @s add player_action.riding_donkey
execute if predicate player_action:v1.0/riding_strider run tag @s add player_action.riding_strider
execute if predicate player_action:v1.0/riding_minecart run tag @s add player_action.riding_minecart

execute if score @s player_action.death matches 1.. run function #player_action:v1/died
execute if score @s player_action.enchant matches 1.. run function #player_action:v1/enchanted
execute if score @s player_action.jump matches 1.. run function #player_action:v1/jumped
execute if score @s player_action.use_coas matches 1.. run function #player_action:v1/right_click
execute if score @s player_action.use_wfoas matches 1.. run function #player_action:v1/right_click

execute if score @s player_action.join matches 1.. run function #player_action:v1/joined
execute unless score @s player_action.join matches 0.. run function #player_action:v1/joined
execute unless score @s player_action.join matches 0.. run scoreboard players add @s player_action.join 0
