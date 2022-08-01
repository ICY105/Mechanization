
scoreboard players set #active mechanization.data 1

execute if score @s mechanization.redstone matches 1..2 run function block_utils:v1/api/is_active
execute if score @s mechanization.redstone matches 1 if score #out block_utils.data matches 0 run scoreboard players set #active mechanization.data 0
execute if score @s mechanization.redstone matches 2 if score #out block_utils.data matches 1 run scoreboard players set #active mechanization.data 0
