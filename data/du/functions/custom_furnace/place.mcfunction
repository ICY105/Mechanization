
execute if block ~ ~ ~ furnace align xyz run summon area_effect_cloud ~0.5 ~0.5 ~0.5 {Tags:["du_furnace","du_fur_basic"],Duration:2000000000}
scoreboard players remove in_0 du_data 1
execute if score in_0 du_data matches 1.. unless block ~ ~ ~ furnace positioned ^ ^ ^0.05 run function du:custom_furnace/place