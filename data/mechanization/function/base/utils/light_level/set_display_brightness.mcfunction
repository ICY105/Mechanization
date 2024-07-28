
function mechanization:base/utils/light_level/find_greatest_light_level
data modify entity @s brightness set value {block:0,sky:0}
execute store result entity @s brightness.sky int 1 run scoreboard players get #utils.light mechanization.data
execute store result entity @s brightness.block int 1 run scoreboard players get #utils.light mechanization.data
