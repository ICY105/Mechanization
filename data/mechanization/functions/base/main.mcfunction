
# Scoreboard Timers
scoreboard players add #timer.2 mechanization.data 1
execute if score #timer.2 mechanization.data matches 2.. run scoreboard players set #timer.2 mechanization.data 0

scoreboard players add #timer.10 mechanization.data 1
execute if score #timer.10 mechanization.data matches 10.. run scoreboard players set #timer.10 mechanization.data 0

scoreboard players add #timer.20 mechanization.data 1
execute if score #timer.20 mechanization.data matches 20.. run scoreboard players set #timer.20 mechanization.data 0

scoreboard players add #timer.100 mechanization.data 1
execute if score #timer.100 mechanization.data matches 100.. run scoreboard players set #timer.100 mechanization.data 0

# Cleanup Abandoned Resource Blocks
execute if score #timer.100 mechanization.data matches 1 as @e[type=item_frame,tag=mechanization.resource_block] at @s unless block ~ ~ ~ minecraft:barrier run kill @s

# Cleanup water
execute as @e[type=minecraft:item,tag=!mechanization.processed] at @s run function mechanization:base/utils/process_item
