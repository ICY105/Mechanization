
scoreboard players set temp_0 du_data 0
execute if block ~ ~ ~ #mechanization:block_breaker_normal run scoreboard players set temp_0 du_data 1
execute if block ~ ~ ~ #mechanization:block_breaker_upgrade run scoreboard players set temp_0 du_data 2

execute if score temp_0 du_data matches 0 if score @s mechanization.stored_energy >= $machines.cf.block_breaker.power mechanization.data if entity @s[tag=!mech_upgraded] run loot spawn ~ ~ ~ mine ~ ~ ~ 
execute if score temp_0 du_data matches 0 if score @s mechanization.stored_energy >= $machines.cf.block_breaker.power mechanization.data if entity @s[tag=!mech_upgraded] run setblock ~ ~ ~ minecraft:air replace
execute if score temp_0 du_data matches 0 if score @s mechanization.stored_energy >= $machines.cf.block_breaker.power mechanization.data if entity @s[tag=!mech_upgraded] run scoreboard players operation @s mechanization.stored_energy -= $machines.cf.block_breaker.power mech_data

execute if score temp_0 du_data matches 0..1 if score @s mechanization.stored_energy >= $machines.cf.block_breaker.power mechanization.data if entity @s[tag=mech_upgraded,tag=!mech_upgrade_ender] run loot spawn ~ ~ ~ mine ~ ~ ~ 
execute if score temp_0 du_data matches 0..1 if score @s mechanization.stored_energy >= $machines.cf.block_breaker.power mechanization.data if entity @s[tag=mech_upgraded,tag=mech_upgrade_ender] run loot spawn ~ ~ ~ mine ~ ~ ~ minecraft:netherite_pickaxe{Enchantments:[{lvl:1,id:"minecraft:silk_touch"}]}
execute if score temp_0 du_data matches 0..1 if score @s mechanization.stored_energy >= $machines.cf.block_breaker.power mechanization.data if entity @s[tag=mech_upgraded] run setblock ~ ~ ~ minecraft:air replace
execute if score temp_0 du_data matches 0..1 if score @s mechanization.stored_energy >= $machines.cf.block_breaker.power mechanization.data if entity @s[tag=mech_upgraded] run scoreboard players operation @s mechanization.stored_energy -= $machines.cf.block_breaker.power mech_data


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
