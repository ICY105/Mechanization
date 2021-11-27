
execute unless block ~ ~ ~ minecraft:barrier run function mechanization:machines/machines/liquid_pipe/break
execute if entity @s[tag=mech_pipe_input] run function mechanization:machines/machines/liquid_pipe/input

#execute unless score @s mech_data matches 2.. run function mechanization:machines/machines/liquid_pipe/oxidize
#execute if score @s mech_data matches 1.. run scoreboard players remove @s mech_data 1
