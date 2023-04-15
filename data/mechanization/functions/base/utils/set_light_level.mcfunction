
function mechanization:base/utils/light_level/find_greatest_light_level
execute store result entity @s brightness.sky int 1 run scoreboard players get #utils.light mechanization.data
execute store result entity @s brightness.block int 1 run scoreboard players get #utils.light mechanization.data
