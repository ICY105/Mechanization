scoreboard players tag @s add tracing

scoreboard players operation @e[type=armor_stand,r=1,tag=s2] timer -= @s timer
execute @e[type=armor_stand,tag=s2,c=1,r=1,score_timer_min=0,score_timer=0] ~ ~ ~ teleport @e[type=boat,tag=tracing] ~ ~ ~
scoreboard players operation @e[type=armor_stand,r=1,tag=s2] timer += @s timer

scoreboard players tag @s remove tracing

execute @s[score_rotX_min=-89,score_rotX=-1] ~ ~ ~ function mechanization_base:raytrace/angle_manager/neg
execute @s[score_rotX_min=1,score_rotX=89] ~ ~ ~ function mechanization_base:raytrace/angle_manager/pos