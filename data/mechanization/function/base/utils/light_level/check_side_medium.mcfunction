
scoreboard players set #utils.success mechanization.data 0
execute if score #utils.light mechanization.data matches ..5 if predicate mechanization:light_level/light_6 store success score #utils.success mechanization.data run scoreboard players set #utils.light mechanization.data 6
execute if score #utils.light mechanization.data matches ..6 if predicate mechanization:light_level/light_7 store success score #utils.success mechanization.data run scoreboard players set #utils.light mechanization.data 7
execute if score #utils.light mechanization.data matches ..7 if predicate mechanization:light_level/light_8 store success score #utils.success mechanization.data run scoreboard players set #utils.light mechanization.data 8
execute if score #utils.light mechanization.data matches ..8 if predicate mechanization:light_level/light_9 store success score #utils.success mechanization.data run scoreboard players set #utils.light mechanization.data 9
execute if score #utils.light mechanization.data matches ..9 if predicate mechanization:light_level/light_10 store success score #utils.success mechanization.data run scoreboard players set #utils.light mechanization.data 10
execute if score #utils.success mechanization.data matches 1 run scoreboard players operation #utils.out mechanization.data = #utils.side mechanization.data
