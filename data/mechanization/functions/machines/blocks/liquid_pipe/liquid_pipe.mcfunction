
execute unless block ~ ~ ~ minecraft:barrier run function mechanization:machines/machines/liquid_pipe/break
execute if entity @s[tag=mechanization.pipe.input] run function mechanization:machines/machines/liquid_pipe/input

execute unless score @s mechanization.time matches 2.. run function mechanization:machines/machines/liquid_pipe/oxidize
execute if score @s mechanization.time matches 1.. run scoreboard players remove @s mechanization.time 1
