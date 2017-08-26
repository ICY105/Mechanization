scoreboard players test @s xPos -1000000 -10000
execute @s[score_checks_min=1] ~ ~ ~ scoreboard players add @s xPos 10000
execute @s[score_checks_min=1] ~ ~ ~ tp @s ~-10000 ~ ~
scoreboard players test @s xPos -9999 -1000
execute @s[score_checks_min=1] ~ ~ ~ scoreboard players add @s xPos 1000
execute @s[score_checks_min=1] ~ ~ ~ tp @s ~-1000 ~ ~
scoreboard players test @s xPos -999 -100
execute @s[score_checks_min=1] ~ ~ ~ scoreboard players add @s xPos 100
execute @s[score_checks_min=1] ~ ~ ~ tp @s ~-100 ~ ~
scoreboard players test @s xPos -99 -10
execute @s[score_checks_min=1] ~ ~ ~ scoreboard players add @s xPos 10
execute @s[score_checks_min=1] ~ ~ ~ tp @s ~-10 ~ ~
scoreboard players test @s xPos -9 -1
execute @s[score_checks_min=1] ~ ~ ~ scoreboard players add @s xPos 1
execute @s[score_checks_min=1] ~ ~ ~ tp @s ~-1 ~ ~

execute @s[score_xPos=-1] ~ ~ ~ function mechanization_machines:machines/chunk_loader/load_xCord_neg
