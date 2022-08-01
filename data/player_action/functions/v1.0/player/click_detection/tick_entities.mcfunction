
schedule function player_action:v1.0/tick 100t
execute as @e[tag=player_action.click_entity] at @s run function player_action:v1.0/player/click_detection/tick_entities_2
