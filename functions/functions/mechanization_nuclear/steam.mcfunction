execute @s ~ ~ ~ detect ~ ~ ~ minecraft:barrier 0 scoreboard players tag @s add turn
execute @s[tag=turn] ~ ~ ~ scoreboard players set @e[tag=Turbine,c=1,r=2] reactorHeat 3
execute @s[tag=turn] ~ ~ ~ playsound mech.steam_turbine_active block @a[r=12] ~ ~ ~ 0.8 1
kill @s[tag=turn]

scoreboard players add @s reactorHeat 1
kill @s[score_reactorHeat_min=4]