
execute store result score #rot mechanization.data run data get entity @s Rotation[1] 1000
scoreboard players operation #rot mechanization.data *= #cons.-1 mechanization.data
execute store result entity @s Rotation[1] float 0.001 run scoreboard players get #rot mechanization.data

execute at @s run tp @s ^ ^ ^0.75 ~ ~
