execute store result score temp_0 mech_data run data get entity @s Pose.Head[1]
scoreboard players add temp_0 mech_data 15
execute store result entity @s Pose.Head[1] float 1 run scoreboard players get temp_0 mech_data