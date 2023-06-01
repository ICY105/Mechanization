
scoreboard players set #count mechanization.data 0
execute as @e[type=minecraft:item_display,tag=mechanization.fluid_display] at @s run function mechanization:base/player/pipe_wrench/update_display_entity_2
execute if score #count mechanization.data matches 1.. run schedule function mechanization:base/player/pipe_wrench/update_display_entity 1t replace
