
execute unless block ~ ~ ~ minecraft:barrier run function mechanization:machines/blocks/fluid_pipe/break

#execute unless score @s mechanization.time matches 2.. run function mechanization:machines/blocks/fluid_pipe/oxidize
#execute if score @s mechanization.time matches 1.. run scoreboard players remove @s mechanization.time 1
