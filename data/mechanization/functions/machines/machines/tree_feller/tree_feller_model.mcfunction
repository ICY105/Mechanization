
execute store result score #rot mechanization.data run data get entity @s Pose.Head[1]
scoreboard players add #rot mechanization.data 15
execute store result entity @s Pose.Head[1] float 1 run scoreboard players get #rot mechanization.data
