
scoreboard players operation #heat.0 mechanization.data = @s mechanization.data
scoreboard players remove #heat.0 mechanization.data 300
scoreboard players operation #heat.0 mechanization.data *= #cons.8 mechanization.data
scoreboard players operation #heat.0 mechanization.data /= #cons.120 mechanization.data

scoreboard players operation #heat.1 mechanization.data = #heat.0 mechanization.data
scoreboard players operation #heat.1 mechanization.data %= #cons.8 mechanization.data
scoreboard players operation #heat.0 mechanization.data /= #cons.8 mechanization.data

execute positioned ~2 ~ ~ run function mechanization:nuclear/blocks/reactor_core/heat/heat_block
execute positioned ~1 ~ ~1 run function mechanization:nuclear/blocks/reactor_core/heat/heat_block
execute positioned ~ ~ ~2 run function mechanization:nuclear/blocks/reactor_core/heat/heat_block
execute positioned ~-1 ~ ~1 run function mechanization:nuclear/blocks/reactor_core/heat/heat_block
execute positioned ~-2 ~ ~ run function mechanization:nuclear/blocks/reactor_core/heat/heat_block
execute positioned ~-1 ~ ~-1 run function mechanization:nuclear/blocks/reactor_core/heat/heat_block
execute positioned ~ ~ ~-2 run function mechanization:nuclear/blocks/reactor_core/heat/heat_block
execute positioned ~1 ~ ~-1 run function mechanization:nuclear/blocks/reactor_core/heat/heat_block
