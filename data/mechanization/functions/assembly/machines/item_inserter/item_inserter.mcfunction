
execute unless score @s du_uuid matches -2147483648.. align xyz positioned ~0.5 ~0.1 ~0.5 run scoreboard players operation @s du_uuid = @e[tag=mech_item_pipe,sort=nearest,limit=1] du_uuid

execute unless block ~ ~ ~ minecraft:moving_piston run function mechanization:assembly/machines/item_inserter/break
