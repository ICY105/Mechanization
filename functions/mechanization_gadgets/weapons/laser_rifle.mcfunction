scoreboard players set @s[score_powerBuffer=39,m=!1] stick 0
scoreboard players remove @s[score_stick_min=1,m=!1] powerBuffer 40

execute @s[score_stick_min=1] ~ ~ ~ function mechanization_base:raytrace/create_ray
execute @s[score_stick_min=1] ~ ~ ~ playsound mech.laser_shot player @a ~ ~ ~ 1.0 1

scoreboard players set @s[score_stick_min=1] reloadTime 3
execute @s[score_stick_min=1] ~ ~500 ~ scoreboard players tag @e[tag=b1,c=1,score_timer=0] add rifleLShot
execute @s[score_stick_min=1] ~ ~500 ~ scoreboard players set @e[tag=b1,c=1,score_timer=0] playerID 0
execute @s[score_stick_min=1] ~ ~500 ~ scoreboard players operation @e[tag=b1,c=1,score_timer=0] playerID = @s playerID
execute @s[score_stick_min=1] ~ ~500 ~ scoreboard players set @e[tag=b1,c=1,score_timer=0] bulletType 0
execute @s[score_stick_min=1] ~ ~500 ~ scoreboard players operation @e[tag=b1,c=1,score_timer=0] bulletType = @s bulletType

scoreboard players add @s[score_stick_min=1] stick 1