
# Scoreboard Timers
scoreboard players add #timer.2 mechanization.data 1
execute if score #timer.2 mechanization.data matches 2 run scoreboard players set #timer.2 mechanization.data 0

scoreboard players add #timer.20 mechanization.data 1
execute if score #timer.20 mechanization.data matches 20 run scoreboard players set #timer.20 mechanization.data 0

scoreboard players add #timer.100 mechanization.data 1
execute if score #timer.100 mechanization.data matches 100 run scoreboard players set #timer.100 mechanization.data 0

# Player Tick
execute as @a at @s run function mechanization:base/player/tick

# Machine Crafter
#execute as @e[type=glow_item_frame,tag=mechanization.machine_crafting_table] at @s unless block ~ ~ ~ minecraft:barrel run function mechanization:base/machines/machine_crafting_table/break

# Cleanup Abandoned Resource Blocks
execute if score #timer.100 mechanization.data matches 1 as @e[type=item_frame,tag=mechanization.resource_block] at @s unless block ~ ~ ~ minecraft:barrier run kill @s
