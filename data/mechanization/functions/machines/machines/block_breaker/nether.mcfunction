scoreboard players set temp_0 mech_data 0
execute if score @s mech_power matches 216.. run scoreboard players set temp_0 mech_data 1
execute if score @s mech_power matches 216.. run scoreboard players remove @s mech_power 216

execute if score temp_0 mech_data matches 1 positioned ~ ~ ~ run function mechanization:machines/machines/block_breaker/nether_2
execute if score temp_0 mech_data matches 1 positioned ~ ~1 ~ run function mechanization:machines/machines/block_breaker/nether_2
execute if score temp_0 mech_data matches 1 positioned ~ ~2 ~ run function mechanization:machines/machines/block_breaker/nether_2

particle scrape ~ ~2.45 ~1.45 0.6 0 0 0 18
particle scrape ~ ~2.45 ~-1.45 0.6 0 0 0 18
particle scrape ~1.45 ~2.45 ~ 0 0 0.6 0 18
particle scrape ~-1.45 ~2.45 ~ 0 0 0.6 0 18

particle scrape ~ ~-0.45 ~1.45 0.6 0 0 0 18
particle scrape ~ ~-0.45 ~-1.45 0.6 0 0 0 18
particle scrape ~1.45 ~-0.45 ~ 0 0 0.6 0 18
particle scrape ~-1.45 ~-0.45 ~ 0 0 0.6 0 18

particle scrape ~1.45 ~1.0 ~1.45 0 0.6 0 0 18
particle scrape ~-1.45 ~1.0 ~1.45 0 0.6 0 0 18
particle scrape ~1.45 ~1.0 ~-1.45 0 0.6 0 0 18
particle scrape ~-1.45 ~1.0 ~-1.45 0 0.6 0 0 18