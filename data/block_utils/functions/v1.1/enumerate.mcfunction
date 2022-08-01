
scoreboard players add #block_utils.major load.status 0
scoreboard players add #block_utils.minor load.status 0

execute if score #block_utils.major load.status matches ..0 run scoreboard players set #block_utils.minor load.status 1
execute if score #block_utils.major load.status matches ..0 run scoreboard players set #block_utils.major load.status 1
execute if score #block_utils.major load.status matches 1 if score #block_utils.minor load.status matches ..1 run scoreboard players set #block_utils.minor load.status 1
