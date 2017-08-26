testforblock ~ ~ ~ minecraft:air
scoreboard players remove @s[score_checks=0] powerBuffer 40
setblock ~ ~ ~ minecraft:air 0 destroy


particle flame ~ ~0.95 ~0.45 0.2 0 0 0 6
particle flame ~ ~0.95 ~-0.45 0.2 0 0 0 6
particle flame ~0.45 ~0.95 ~ 0 0 0.2 0 6
particle flame ~-0.45 ~0.95 ~ 0 0 0.2 0 6

particle flame ~ ~0.05 ~0.45 0.2 0 0 0 6
particle flame ~ ~0.05 ~-0.45 0.2 0 0 0 6
particle flame ~0.45 ~0.05 ~ 0 0 0.2 0 6
particle flame ~-0.45 ~0.05 ~ 0 0 0.2 0 6

particle flame ~0.45 ~0.5 ~0.45 0 0.2 0 0 6
particle flame ~-0.45 ~0.5 ~0.45 0 0.2 0 0 6
particle flame ~0.45 ~0.5 ~-0.45 0 0.2 0 0 6
particle flame ~-0.45 ~0.5 ~-0.45 0 0.2 0 0 6