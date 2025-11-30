
scoreboard players operation #heat.0 mechanization.data = @s mechanization.data
scoreboard players remove #heat.0 mechanization.data 600
scoreboard players operation #heat.0 mechanization.data *= #cons.12 mechanization.data
scoreboard players operation #heat.0 mechanization.data /= #cons.110 mechanization.data

scoreboard players operation #heat.1 mechanization.data = #heat.0 mechanization.data
scoreboard players operation #heat.1 mechanization.data %= #cons.12 mechanization.data
scoreboard players operation #heat.0 mechanization.data /= #cons.12 mechanization.data

execute positioned ~3 ~ ~ run function mechanization:nuclear/blocks/reactor_core/heat/heat_block
execute positioned ~2 ~ ~1 run function mechanization:nuclear/blocks/reactor_core/heat/heat_block
execute positioned ~1 ~ ~2 run function mechanization:nuclear/blocks/reactor_core/heat/heat_block

execute positioned ~ ~ ~3 run function mechanization:nuclear/blocks/reactor_core/heat/heat_block
execute positioned ~-1 ~ ~2 run function mechanization:nuclear/blocks/reactor_core/heat/heat_block
execute positioned ~-2 ~ ~1 run function mechanization:nuclear/blocks/reactor_core/heat/heat_block

execute positioned ~-3 ~ ~ run function mechanization:nuclear/blocks/reactor_core/heat/heat_block
execute positioned ~-2 ~ ~-1 run function mechanization:nuclear/blocks/reactor_core/heat/heat_block
execute positioned ~-1 ~ ~-2 run function mechanization:nuclear/blocks/reactor_core/heat/heat_block

execute positioned ~ ~ ~-3 run function mechanization:nuclear/blocks/reactor_core/heat/heat_block
execute positioned ~1 ~ ~-2 run function mechanization:nuclear/blocks/reactor_core/heat/heat_block
execute positioned ~2 ~ ~-1 run function mechanization:nuclear/blocks/reactor_core/heat/heat_block
