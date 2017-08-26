#recipes
execute @e[type=armor_stand,tag=crafttable] ~ ~ ~ testforblock ~ ~-1 ~ minecraft:dispenser 1 {Items:[{}]}
execute @e[type=armor_stand,tag=crafttable,c=1,score_checks_min=1] ~ ~ ~ function mechanization_nuclear:recipes

#kill broken stuff
execute @e[type=armor_stand,tag=fissionReactor] ~ ~ ~ detect ~ ~ ~ minecraft:air 0 kill @s
execute @e[type=armor_stand,tag=fissionReactor] ~ ~ ~ detect ~ ~ ~ minecraft:water -1 kill @s