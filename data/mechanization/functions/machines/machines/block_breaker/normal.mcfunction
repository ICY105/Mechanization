
scoreboard players set temp_0 du_data 0
execute if block ~ ~ ~ #mechanization:block_breaker_normal run scoreboard players set temp_0 du_data 1
execute if block ~ ~ ~ #mechanization:block_breaker_upgrade run scoreboard players set temp_0 du_data 2

execute if score temp_0 du_data matches 0 if entity @s[tag=!mech_upgraded,scores={mech_power=24..}] run loot spawn ~ ~ ~ mine ~ ~ ~ 
execute if score temp_0 du_data matches 0 if entity @s[tag=!mech_upgraded,scores={mech_power=24..}] run setblock ~ ~ ~ minecraft:air replace
execute if score temp_0 du_data matches 0 if entity @s[tag=!mech_upgraded,scores={mech_power=24..}] run scoreboard players remove @s mech_power 24

execute if score temp_0 du_data matches 0..1 if entity @s[tag=mech_upgraded,tag=!mech_upgrade_ender,scores={mech_power=24..}] run loot spawn ~ ~ ~ mine ~ ~ ~ 
execute if score temp_0 du_data matches 0..1 if entity @s[tag=mech_upgraded,tag=mech_upgrade_ender,scores={mech_power=24..}] run loot spawn ~ ~ ~ mine ~ ~ ~ minecraft:netherite_pickaxe{Enchantments:[{lvl:1,id:"minecraft:silk_touch"}]}
execute if score temp_0 du_data matches 0..1 if entity @s[tag=mech_upgraded,scores={mech_power=24..}] run setblock ~ ~ ~ minecraft:air replace
execute if score temp_0 du_data matches 0..1 if entity @s[tag=mech_upgraded,scores={mech_power=24..}] run scoreboard players remove @s mech_power 24


particle scrape ~ ~0.45 ~0.45 0.2 0 0 0 6
particle scrape ~ ~0.45 ~-0.45 0.2 0 0 0 6
particle scrape ~0.45 ~0.45 ~ 0 0 0.2 0 6
particle scrape ~-0.45 ~0.45 ~ 0 0 0.2 0 6

particle scrape ~ ~-0.45 ~0.45 0.2 0 0 0 6
particle scrape ~ ~-0.45 ~-0.45 0.2 0 0 0 6
particle scrape ~0.45 ~-0.45 ~ 0 0 0.2 0 6
particle scrape ~-0.45 ~-0.45 ~ 0 0 0.2 0 6

particle scrape ~0.45 ~ ~0.45 0 0.2 0 0 6
particle scrape ~-0.45 ~ ~0.45 0 0.2 0 0 6
particle scrape ~0.45 ~ ~-0.45 0 0.2 0 0 6
particle scrape ~-0.45 ~ ~-0.45 0 0.2 0 0 6
