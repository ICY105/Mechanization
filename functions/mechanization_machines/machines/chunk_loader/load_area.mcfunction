scoreboard players operation temp xPos = @s xPos
scoreboard players operation temp zPos = @s zPos

scoreboard players test @s xPos 0 1000000
execute @s[score_checks_min=1] ~ ~ ~ function mechanization_machines:machines/chunk_loader/load_xCord_pos
scoreboard players test @s xPos -1000000 0
execute @s[score_checks_min=1] ~ ~ ~ function mechanization_machines:machines/chunk_loader/load_xCord_neg

scoreboard players test @s zPos 0 1000000
execute @s[score_checks_min=1] ~ ~ ~ function mechanization_machines:machines/chunk_loader/load_zCord_pos
scoreboard players test @s zPos -1000000 0
execute @s[score_checks_min=1] ~ ~ ~ function mechanization_machines:machines/chunk_loader/load_zCord_neg

scoreboard players operation @s xPos = temp xPos
scoreboard players operation @s zPos = temp zPos

execute @s ~ ~ ~ spreadplayers ~ ~ 0 1 false @s
execute @s ~15 ~ ~ spreadplayers ~ ~ 0 1 false @s
execute @s ~ ~ ~15 spreadplayers ~ ~ 0 1 false @s
execute @s ~-15 ~ ~ spreadplayers ~ ~ 0 1 false @s
execute @s ~-15 ~ ~ spreadplayers ~ ~ 0 1 false @s
execute @s ~ ~ ~-15 spreadplayers ~ ~ 0 1 false @s
execute @s ~ ~ ~-15 spreadplayers ~ ~ 0 1 false @s
execute @s ~15 ~ ~ spreadplayers ~ ~ 0 1 false @s
execute @s ~15 ~ ~ spreadplayers ~ ~ 0 1 false @s


tp @s 0 0 0
