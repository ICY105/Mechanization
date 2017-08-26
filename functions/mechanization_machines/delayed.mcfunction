#recipes
execute @e[tag=crafttable] ~ ~ ~ testforblock ~ ~-1 ~ minecraft:dispenser 1 {Items:[{}]}
execute @e[tag=crafttable,score_checks_min=1] ~ ~ ~ function mechanization_machines:recipes