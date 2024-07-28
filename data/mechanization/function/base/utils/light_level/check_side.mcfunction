
execute if score #utils.light mechanization.data matches ..4 if predicate mechanization:light_level/light_1_5 run function mechanization:base/utils/light_level/check_side_low
execute if score #utils.light mechanization.data matches ..9 if predicate mechanization:light_level/light_6_10 run function mechanization:base/utils/light_level/check_side_medium
execute if predicate mechanization:light_level/light_11_15 run function mechanization:base/utils/light_level/check_side_high
