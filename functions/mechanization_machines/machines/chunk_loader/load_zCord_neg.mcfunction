scoreboard players test @s zPos -1000000 -10000
execute @s[score_checks_min=1] ~ ~ ~ scoreboard players add @s zPos 10000
execute @s[score_checks_min=1] ~ ~ ~ tp @s ~ ~ ~-10000
scoreboard players test @s zPos -9999 -1000
execute @s[score_checks_min=1] ~ ~ ~ scoreboard players add @s zPos 1000
execute @s[score_checks_min=1] ~ ~ ~ tp @s ~ ~ ~-1000
scoreboard players test @s zPos -999 -100
execute @s[score_checks_min=1] ~ ~ ~ scoreboard players add @s zPos 100
execute @s[score_checks_min=1] ~ ~ ~ tp @s ~ ~ ~-100
scoreboard players test @s zPos -99 -10
execute @s[score_checks_min=1] ~ ~ ~ scoreboard players add @s zPos 10
execute @s[score_checks_min=1] ~ ~ ~ tp @s ~ ~ ~-10
scoreboard players test @s zPos -9 -1
execute @s[score_checks_min=1] ~ ~ ~ scoreboard players add @s zPos 1
execute @s[score_checks_min=1] ~ ~ ~ tp @s ~ ~ ~-1

execute @s[score_zPos=-1] ~ ~ ~ function mechanization_machines:machines/chunk_loader/load_zCord_neg
