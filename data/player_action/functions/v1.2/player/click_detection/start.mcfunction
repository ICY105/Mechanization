
tag @s add player_action.click_detection
summon minecraft:interaction ~ ~ ~ {Tags:["player_action.click_entity","player_action.new","smithed.entity","smithed.strict"]}
execute as @e[type=minecraft:interaction,tag=player_action.new] at @s run function player_action:v1.2/player/click_detection/start_2
