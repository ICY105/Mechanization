scoreboard players set @s[score_stick_min=1,score_stick=1,m=!1] stick 0
scoreboard players set @s[score_stick_min=0,score_stick=0,m=!1] stick 1 {Inventory:[{id:"minecraft:iron_nugget"}]}
execute @s ~ ~ ~ clear @s minecraft:iron_nugget 0 1

execute @s[score_stick_min=1] ~ ~ ~ function mechanization_base:raytrace/create_ray
execute @s[score_stick_min=1] ~ ~ ~ playsound minecraft:entity.firework.large_blast player @a ~ ~ ~

execute @s[score_stick_min=1] ~ ~500 ~ scoreboard players tag @e[tag=b1,c=1,score_timer=0] add smgShot
execute @s[score_stick_min=1] ~ ~500 ~ scoreboard players set @e[tag=b1,c=1,score_timer=0] playerID 0
execute @s[score_stick_min=1] ~ ~500 ~ scoreboard players operation @e[tag=b1,c=1,score_timer=0] playerID = @s playerID
execute @s[score_stick_min=1] ~ ~500 ~ scoreboard players set @e[tag=b1,c=1,score_timer=0] bulletType 0
execute @s[score_stick_min=1] ~ ~500 ~ scoreboard players operation @e[tag=b1,c=1,score_timer=0] bulletType = @s bulletType
tp @s[score_stick_min=1] ~ ~ ~ ~ ~-3

scoreboard players add @s[score_stick_min=1] stick 1


