execute @e[type=armor_stand,tag=furnaceGen] ~ ~ ~ testforblock ~ ~ ~ minecraft:lit_furnace -1
scoreboard players add @e[type=armor_stand,tag=furnaceGen,score_powerSource=2968,score_checks_min=1] powerSource 24
execute @e[type=armor_stand,tag=furnaceGen,score_checks_min=1] ~ ~ ~ playsound minecraft:block.fire.ambient block @a[r=6] ~ ~ ~ 2 1
execute @e[type=armor_stand,tag=furnaceGen] ~ ~ ~ blockdata ~ ~ ~ {CookTime:-1000}

execute @s ~ ~ ~ time query daytime
execute @s[score_dayTime_min=0,score_dayTime=12000] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=solar,score_powerSource=492] powerSource 6
execute @s[score_dayTime_min=0,score_dayTime=12000] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=solar2,score_powerSource=1976] powerSource 18
