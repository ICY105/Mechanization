scoreboard players test @s zPos 10001 1000000
execute @s[score_checks_min=1] ~ ~ ~ scoreboard players remove @s zPos 10000
execute @s[score_checks_min=1] ~ ~ ~ tp @s ~ ~ ~10000
scoreboard players test @s zPos 1001 10000
execute @s[score_checks_min=1] ~ ~ ~ scoreboard players remove @s zPos 1000
execute @s[score_checks_min=1] ~ ~ ~ tp @s ~ ~ ~1000
scoreboard players test @s zPos 101 1000
execute @s[score_checks_min=1] ~ ~ ~ scoreboard players remove @s zPos 100
execute @s[score_checks_min=1] ~ ~ ~ tp @s ~ ~ ~100
scoreboard players test @s zPos 11 100
execute @s[score_checks_min=1] ~ ~ ~ scoreboard players remove @s zPos 10
execute @s[score_checks_min=1] ~ ~ ~ tp @s ~ ~ ~10
scoreboard players test @s zPos 1 9
execute @s[score_checks_min=1] ~ ~ ~ scoreboard players remove @s zPos 1
execute @s[score_checks_min=1] ~ ~ ~ tp @s ~ ~ ~1

execute @s[score_zPos_min=1] ~ ~ ~ function mechanization_machines:machines/chunk_loader/load_zCord_pos