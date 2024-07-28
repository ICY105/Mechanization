
scoreboard players set #utils.success mechanization.data 0
execute if score #utils.light mechanization.data matches ..10 if predicate mechanization:light_level/light_11 store success score #utils.success mechanization.data run scoreboard players set #utils.light mechanization.data 11
execute if score #utils.light mechanization.data matches ..11 if predicate mechanization:light_level/light_12 store success score #utils.success mechanization.data run scoreboard players set #utils.light mechanization.data 12
execute if score #utils.light mechanization.data matches ..12 if predicate mechanization:light_level/light_13 store success score #utils.success mechanization.data run scoreboard players set #utils.light mechanization.data 13
execute if score #utils.light mechanization.data matches ..13 if predicate mechanization:light_level/light_14 store success score #utils.success mechanization.data run scoreboard players set #utils.light mechanization.data 14
execute if score #utils.light mechanization.data matches ..14 if predicate mechanization:light_level/light_15 store success score #utils.success mechanization.data run scoreboard players set #utils.light mechanization.data 15
execute if score #utils.success mechanization.data matches 1 run scoreboard players operation #utils.out mechanization.data = #utils.side mechanization.data
