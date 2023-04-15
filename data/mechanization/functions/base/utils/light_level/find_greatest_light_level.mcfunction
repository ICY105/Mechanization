
scoreboard players set #utils.light mechanization.data 0
scoreboard players set #utils.out mechanization.data -1

execute unless predicate mechanization:light_level/light_0 run scoreboard players set #utils.light mechanization.data 15

scoreboard players set #utils.side mechanization.data 0
execute unless score #utils.light mechanization.data matches 15 positioned ~ ~1 ~ run function mechanization:base/utils/light_level/check_side

scoreboard players set #utils.side mechanization.data 1
execute unless score #utils.light mechanization.data matches 15 positioned ~ ~-1 ~ run function mechanization:base/utils/light_level/check_side

scoreboard players set #utils.side mechanization.data 2
execute unless score #utils.light mechanization.data matches 15 positioned ~1 ~ ~ run function mechanization:base/utils/light_level/check_side

scoreboard players set #utils.side mechanization.data 3
execute unless score #utils.light mechanization.data matches 15 positioned ~-1 ~ ~ run function mechanization:base/utils/light_level/check_side

scoreboard players set #utils.side mechanization.data 4
execute unless score #utils.light mechanization.data matches 15 positioned ~ ~ ~1 run function mechanization:base/utils/light_level/check_side

scoreboard players set #utils.side mechanization.data 5
execute unless score #utils.light mechanization.data matches 15 positioned ~ ~ ~-1 run function mechanization:base/utils/light_level/check_side
