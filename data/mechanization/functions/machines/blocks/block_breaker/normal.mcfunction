
scoreboard players set #block_type mechanization.data 0
execute if block ~ ~ ~ #mechanization:block_breaker_normal run scoreboard players set #block_type mechanization.data 1
execute if block ~ ~ ~ #mechanization:block_breaker_upgrade run scoreboard players set #block_type mechanization.data 2

execute if score #block_type mechanization.data matches 0 if score @s energy.storage >= #machines.cf.block_breaker.power mechanization.data if entity @s[tag=!mechanization.upgraded] run loot spawn ~ ~ ~ mine ~ ~ ~ 
execute if score #block_type mechanization.data matches 0 if score @s energy.storage >= #machines.cf.block_breaker.power mechanization.data if entity @s[tag=!mechanization.upgraded] run setblock ~ ~ ~ minecraft:air replace
execute if score #block_type mechanization.data matches 0 if score @s energy.storage >= #machines.cf.block_breaker.power mechanization.data if entity @s[tag=!mechanization.upgraded] run scoreboard players operation @s energy.storage -= #machines.cf.block_breaker.power mechanization.data

execute if score #block_type mechanization.data matches 0..1 if score @s energy.storage >= #machines.cf.block_breaker.power mechanization.data if entity @s[tag=mechanization.upgraded,tag=!mechanization.upgraded.ender] run loot spawn ~ ~ ~ mine ~ ~ ~ 
execute if score #block_type mechanization.data matches 0..1 if score @s energy.storage >= #machines.cf.block_breaker.power mechanization.data if entity @s[tag=mechanization.upgraded,tag=mechanization.upgraded.ender] run loot spawn ~ ~ ~ mine ~ ~ ~ minecraft:netherite_pickaxe{Enchantments:[{lvl:1,id:"minecraft:silk_touch"}]}
execute if score #block_type mechanization.data matches 0..1 if score @s energy.storage >= #machines.cf.block_breaker.power mechanization.data if entity @s[tag=mechanization.upgraded] run setblock ~ ~ ~ minecraft:air replace
execute if score #block_type mechanization.data matches 0..1 if score @s energy.storage >= #machines.cf.block_breaker.power mechanization.data if entity @s[tag=mechanization.upgraded] run scoreboard players operation @s energy.storage -= #machines.cf.block_breaker.power mechanization.data


particle minecraft:scrape ~ ~0.45 ~0.45 0.2 0 0 0 6
particle minecraft:scrape ~ ~0.45 ~-0.45 0.2 0 0 0 6
particle minecraft:scrape ~0.45 ~0.45 ~ 0 0 0.2 0 6
particle minecraft:scrape ~-0.45 ~0.45 ~ 0 0 0.2 0 6

particle minecraft:scrape ~ ~-0.45 ~0.45 0.2 0 0 0 6
particle minecraft:scrape ~ ~-0.45 ~-0.45 0.2 0 0 0 6
particle minecraft:scrape ~0.45 ~-0.45 ~ 0 0 0.2 0 6
particle minecraft:scrape ~-0.45 ~-0.45 ~ 0 0 0.2 0 6

particle minecraft:scrape ~0.45 ~ ~0.45 0 0.2 0 0 6
particle minecraft:scrape ~-0.45 ~ ~0.45 0 0.2 0 0 6
particle minecraft:scrape ~0.45 ~ ~-0.45 0 0.2 0 0 6
particle minecraft:scrape ~-0.45 ~ ~-0.45 0 0.2 0 0 6
