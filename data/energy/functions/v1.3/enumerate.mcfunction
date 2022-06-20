
scoreboard players add #energy.major load.status 0
scoreboard players add #energy.minor load.status 0

execute if score #energy.major load.status matches ..0 run scoreboard players set #energy.minor load.status 3
execute if score #energy.major load.status matches ..0 run scoreboard players set #energy.major load.status 1
execute if score #energy.major load.status matches 1 if score #energy.minor load.status matches ..3 run scoreboard players set #energy.minor load.status 3
