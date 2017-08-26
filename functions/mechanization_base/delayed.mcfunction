#custom crafting table
execute @a ~ ~ ~ scoreboard players tag @e[type=item,type=item,r=4] add craftTable {Item:{id:"minecraft:crafting_table"}}
execute @e[type=item,tag=craftTable] ~ ~ ~ detect ~ ~-1 ~ minecraft:anvil -1 function mechanization_base:customTable

#kill broken stuff
execute @e[type=armor_stand,score_powerStorage_min=0] ~ ~ ~ detect ~ ~ ~ minecraft:air 0 kill @s
execute @e[type=armor_stand,tag=crafttable] ~ ~ ~ detect ~ ~-1 ~ minecraft:air 0 kill @s
execute @e[type=armor_stand,score_powerBuffer_min=-10000,tag=!floating] ~ ~ ~ detect ~ ~ ~ minecraft:air 0 kill @s
execute @e[type=armor_stand,score_powerSource_min=-10000,tag=!floating] ~ ~ ~ detect ~ ~ ~ minecraft:air 0 kill @s

#crafting recipes
execute @e[type=armor_stand,tag=crafttable] ~ ~ ~ testforblock ~ ~-1 ~ minecraft:dispenser 1 {Items:[{}]}
execute @e[type=armor_stand,tag=crafttable,score_checks_min=1] ~ ~ ~ function mechanization_base:recipes
