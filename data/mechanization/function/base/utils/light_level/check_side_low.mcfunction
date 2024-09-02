
scoreboard players set #utils.success mechanization.data 0
execute if score #utils.light mechanization.data matches ..0 if predicate mechanization:light_level/light_1 store success score #utils.success mechanization.data run scoreboard players set #utils.light mechanization.data 1
execute if score #utils.light mechanization.data matches ..1 if predicate mechanization:light_level/light_2 store success score #utils.success mechanization.data run scoreboard players set #utils.light mechanization.data 2
execute if score #utils.light mechanization.data matches ..2 if predicate mechanization:light_level/light_3 store success score #utils.success mechanization.data run scoreboard players set #utils.light mechanization.data 3
execute if score #utils.light mechanization.data matches ..3 if predicate mechanization:light_level/light_4 store success score #utils.success mechanization.data run scoreboard players set #utils.light mechanization.data 4
execute if score #utils.light mechanization.data matches ..4 if predicate mechanization:light_level/light_5 store success score #utils.success mechanization.data run scoreboard players set #utils.light mechanization.data 5
execute if score #utils.success mechanization.data matches 1 run scoreboard players operation #utils.out mechanization.data = #utils.side mechanization.data
