scoreboard players test @s xPos 10000 1000000
execute @s[score_checks_min=1] ~ ~ ~ scoreboard players remove @s xPos 10000
execute @s[score_checks_min=1] ~ ~ ~ tp @s ~10000 ~ ~
scoreboard players test @s xPos 1000 9999
execute @s[score_checks_min=1] ~ ~ ~ scoreboard players remove @s xPos 1000
execute @s[score_checks_min=1] ~ ~ ~ tp @s ~1000 ~ ~
scoreboard players test @s xPos 100 999
execute @s[score_checks_min=1] ~ ~ ~ scoreboard players remove @s xPos 100
execute @s[score_checks_min=1] ~ ~ ~ tp @s ~100 ~ ~
scoreboard players test @s xPos 10 99
execute @s[score_checks_min=1] ~ ~ ~ scoreboard players remove @s xPos 10
execute @s[score_checks_min=1] ~ ~ ~ tp @s ~10 ~ ~
scoreboard players test @s xPos 1 9
execute @s[score_checks_min=1] ~ ~ ~ scoreboard players remove @s xPos 1
execute @s[score_checks_min=1] ~ ~ ~ tp @s ~1 ~ ~

execute @s[score_xPos_min=1] ~ ~ ~ function mechanization_machines:machines/chunk_loader/load_xCord_pos
