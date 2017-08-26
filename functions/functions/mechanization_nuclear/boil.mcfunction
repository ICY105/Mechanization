execute @s ~ ~ ~ detect ~ ~ ~ minecraft:water 0 scoreboard players tag @e[r=0,c=1] add water
execute @s[tag=water] ~ ~ ~ scoreboard players remove @e[tag=fissionReactor,c=1,r=3] reactorHeat 5
execute @s[tag=water] ~ ~ ~ playsound mech.steam_boil ambient @a[r=12] ~ ~ ~ 0.4 1
entitydata @s[tag=water] {Tags:["steam"]}
execute @s[tag=!steam] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=fissionReactor,r=3,c=1] reactorHeat 10
kill @s[tag=!steam]