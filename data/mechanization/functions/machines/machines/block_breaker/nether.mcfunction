
scoreboard players operation #energy mechanization.data = #machines.cf.block_breaker.power mechanization.data
scoreboard players operation #energy mechanization.data *= #cons.36 mechanization.data

execute if score @s energy.storage >= #energy mechanization.data positioned ~ ~ ~ run function mechanization:machines/machines/block_breaker/nether_2
execute if score @s energy.storage >= #energy mechanization.data positioned ~ ~1 ~ run function mechanization:machines/machines/block_breaker/nether_2
execute if score @s energy.storage >= #energy mechanization.data positioned ~ ~2 ~ run function mechanization:machines/machines/block_breaker/nether_2
execute if score @s energy.storage >= #energy mechanization.data run scoreboard players operation @s energy.storage -= #energy mechanization.data

particle minecraft:scrape ~ ~2.45 ~1.45 0.6 0 0 0 18
particle minecraft:scrape ~ ~2.45 ~-1.45 0.6 0 0 0 18
particle minecraft:scrape ~1.45 ~2.45 ~ 0 0 0.6 0 18
particle minecraft:scrape ~-1.45 ~2.45 ~ 0 0 0.6 0 18

particle minecraft:scrape ~ ~-0.45 ~1.45 0.6 0 0 0 18
particle minecraft:scrape ~ ~-0.45 ~-1.45 0.6 0 0 0 18
particle minecraft:scrape ~1.45 ~-0.45 ~ 0 0 0.6 0 18
particle minecraft:scrape ~-1.45 ~-0.45 ~ 0 0 0.6 0 18

particle minecraft:scrape ~1.45 ~1.0 ~1.45 0 0.6 0 0 18
particle minecraft:scrape ~-1.45 ~1.0 ~1.45 0 0.6 0 0 18
particle minecraft:scrape ~1.45 ~1.0 ~-1.45 0 0.6 0 0 18
particle minecraft:scrape ~-1.45 ~1.0 ~-1.45 0 0.6 0 0 18
