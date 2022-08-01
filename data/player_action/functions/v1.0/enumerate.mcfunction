
scoreboard players add #player_action.major load.status 0
scoreboard players add #player_action.minor load.status 0

execute if score #player_action.major load.status matches ..0 run scoreboard players set #player_action.minor load.status 0
execute if score #player_action.major load.status matches ..0 run scoreboard players set #player_action.major load.status 1
execute if score #player_action.major load.status matches 1 if score #player_action.minor load.status matches ..0 run scoreboard players set #player_action.minor load.status 0
