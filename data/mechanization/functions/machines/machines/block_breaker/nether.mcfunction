
scoreboard players operation $temp_0 mechanization.data = $machines.cf.block_breaker.power mech_data
scoreboard players operation $temp_0 mechanization.data *= $cons.9 du_data

execute if score @s mechanization.stored_energy >= $temp_0 mechanization.data positioned ~ ~ ~ run function mechanization:machines/machines/block_breaker/nether_2
execute if score @s mechanization.stored_energy >= $temp_0 mechanization.data positioned ~ ~1 ~ run function mechanization:machines/machines/block_breaker/nether_2
execute if score @s mechanization.stored_energy >= $temp_0 mechanization.data positioned ~ ~2 ~ run function mechanization:machines/machines/block_breaker/nether_2
execute if score @s mechanization.stored_energy >= $temp_0 mechanization.data run scoreboard players operation @s mechanization.stored_energy -= $temp_0 mech_data

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
