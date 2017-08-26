scoreboard players set @s[score_powerBuffer=15,m=!1] stick 0
scoreboard players remove @s[score_stick_min=1,m=!1] powerBuffer 16

execute @s[score_stick_min=1] ~ ~ ~ function mechanization_base:raytrace/create_ray
execute @s[score_stick_min=1] ~ ~ ~ playsound mech.laser_shot player @a ~ ~ ~ 1.0 1

scoreboard players set @s[score_stick_min=1] reloadTime 1
execute @s[score_stick_min=1] ~ ~500 ~ scoreboard players tag @e[tag=b1,c=1,score_timer=0] add laserShot

scoreboard players add @s[score_stick_min=1] stick 1


