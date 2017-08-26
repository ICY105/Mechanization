scoreboard players set @s[m=!1] stick 0
scoreboard players set @s[m=!1] stick 1 {Inventory:[{id:"minecraft:fire_charge"}]}

execute @s[score_stick_min=1,m=!1] ~ ~ ~ clear @s minecraft:fire_charge 0 1
execute @s[score_stick_min=1] ~ ~ ~ function mechanization_base:raytrace/create_ray
execute @s[score_stick_min=1] ~ ~ ~ playsound minecraft:block.fire.extinguish player @a ~ ~ ~

scoreboard players set @s[score_stick_min=1] reloadTime 10
execute @s[score_stick_min=1] ~ ~500 ~ scoreboard players tag @e[tag=b1,c=1,score_timer=0] add flameShot
execute @s[score_stick_min=1] ~ ~500 ~ scoreboard players set @e[tag=b1,c=1,score_timer=0] playerID 0
execute @s[score_stick_min=1] ~ ~500 ~ scoreboard players operation @e[tag=b1,c=1,score_timer=0] playerID = @s playerID
execute @s[score_stick_min=1] ~ ~500 ~ scoreboard players set @e[tag=b1,c=1,score_timer=0] bulletType 0
execute @s[score_stick_min=1] ~ ~500 ~ scoreboard players operation @e[tag=b1,c=1,score_timer=0] bulletType = @s bulletType
tp @s[score_stick_min=1] ~ ~ ~ ~ ~-0.5

scoreboard players add @s[score_stick_min=1] stick 1


