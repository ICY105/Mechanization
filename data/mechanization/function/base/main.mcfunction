
# Scoreboard Timers
scoreboard players add #timer.2 mechanization.data 1
execute if score #timer.2 mechanization.data matches 2.. run scoreboard players set #timer.2 mechanization.data 0

scoreboard players add #timer.10 mechanization.data 1
execute if score #timer.10 mechanization.data matches 10.. run scoreboard players set #timer.10 mechanization.data 0

scoreboard players add #timer.20 mechanization.data 1
execute if score #timer.20 mechanization.data matches 20.. run scoreboard players set #timer.20 mechanization.data 0

scoreboard players add #timer.100 mechanization.data 1
execute if score #timer.100 mechanization.data matches 100.. run scoreboard players set #timer.100 mechanization.data 0

# Process Tick Queue
execute store result score #loop mechanization.data run data get storage mechanization:registry tick_queue
execute if score #loop mechanization.data matches 1.. run function mechanization:base/process_tick_queue

# Resource Blocks
execute if score #timer.100 mechanization.data matches 1 as @e[type=minecraft:item_display,tag=mechanization.resource_block] at @s run function mechanization:base/blocks/resource_blocks/slow_tick

# Item Processing
execute as @e[type=minecraft:item,tag=!mechanization.processed] at @s run function mechanization:base/utils/process_item
