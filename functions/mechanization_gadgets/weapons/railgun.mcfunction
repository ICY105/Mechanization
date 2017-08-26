scoreboard players set @s[score_powerBuffer=49,m=!1] stick 0
scoreboard players remove @s[score_stick_min=1,m=!1] powerBuffer 50

scoreboard players remove @s[m=!1] stick 1
scoreboard players add @s[m=!1] stick 1 {Inventory:[{id:"minecraft:gold_ingot"}]}
execute @s[m=!1] ~ ~ ~ clear @s[score_stick_min=1] minecraft:gold_ingot 0 1

execute @s[score_stick_min=1] ~ ~ ~ function mechanization_base:raytrace/create_ray
execute @s[score_stick_min=1] ~ ~ ~ playsound mech.sniper_shot player @a ~ ~ ~

scoreboard players set @s[score_stick_min=1] reloadTime 60
execute @s[score_stick_min=1] ~ ~500 ~ scoreboard players tag @e[tag=b1,c=1,score_timer=0] add railgunShot
execute @s[score_stick_min=1] ~ ~500 ~ scoreboard players set @e[tag=b1,c=1,score_timer=0] playerID 0
execute @s[score_stick_min=1] ~ ~500 ~ scoreboard players operation @e[tag=b1,c=1,score_timer=0] playerID = @s playerID
execute @s[score_stick_min=1] ~ ~500 ~ scoreboard players set @e[tag=b1,c=1,score_timer=0] bulletType 0
execute @s[score_stick_min=1] ~ ~500 ~ scoreboard players operation @e[tag=b1,c=1,score_timer=0] bulletType = @s bulletType
tp @s[score_stick_min=1] ~ ~ ~ ~ ~-8

scoreboard players add @s[score_stick_min=1] stick 1


