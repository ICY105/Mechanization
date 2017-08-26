execute @s ~-4 ~ ~-4 scoreboard players tag @e[dx=9,dz=9,dy=1] add living {DeathTime:0s}
scoreboard players tag @a[tag=living] remove living
scoreboard players tag @e[tag=living,type=wither] remove living
scoreboard players tag @e[tag=living,type=ender_dragon] remove living
scoreboard players tag @e[tag=living,type=armor_stand] remove living
execute @s ~-4 ~ ~-4 kill @e[dx=9,dz=9,dy=1,tag=living]
execute @s[score_checks_min=1] ~ ~ ~ playsound mech.mob_grinder_active block @a[r=12]
execute @s[score_checks_min=1] ~ ~ ~ particle reddust ~-4 ~1 ~-4 9 0 9 0 1000
scoreboard players remove @s powerBuffer 1200