#### Data Init
scoreboard players set heat_0 mech_data 0
scoreboard players set heat_1 mech_data 0
scoreboard players set heat_2 mech_data 0
scoreboard players set heat_3 mech_data 0
scoreboard players set heat_4 mech_data 0
scoreboard players set heat_5 mech_data 0
scoreboard players set heat_6 mech_data 0
scoreboard players set heat_7 mech_data 0
scoreboard players set heat_8 mech_data 0
scoreboard players set heat_9 mech_data 0
scoreboard players set heat_10 mech_data 0
scoreboard players set heat_11 mech_data 0
scoreboard players set heat_12 mech_data 0
scoreboard players set heat_13 mech_data 0
scoreboard players set heat_14 mech_data 0
scoreboard players set heat_15 mech_data 0
scoreboard players set heat_16 mech_data 0
scoreboard players set heat_17 mech_data 0
scoreboard players set heat_18 mech_data 0
scoreboard players set heat_19 mech_data 0
scoreboard players set heat_20 mech_data 0
scoreboard players set heat_21 mech_data 0
scoreboard players set heat_22 mech_data 0
scoreboard players set heat_23 mech_data 0
scoreboard players set heat_24 mech_data 0

scoreboard players set temp_0 mech_data 5
scoreboard players operation heat_1 mech_data = @s du_move_x
scoreboard players operation heat_1 mech_data /= temp_0 mech_data
scoreboard players operation heat_2 mech_data = heat_1 mech_data
scoreboard players operation heat_3 mech_data = heat_1 mech_data
scoreboard players operation heat_4 mech_data = heat_1 mech_data

#Block Processing
scoreboard players set temp_0 mech_data 4
execute positioned ~1 ~ ~ run function mechanization:nuclear/machines/fission_reactor/cooling/block_1
execute positioned ~ ~ ~1 run function mechanization:nuclear/machines/fission_reactor/cooling/block_2
execute positioned ~-1 ~ ~ run function mechanization:nuclear/machines/fission_reactor/cooling/block_3
execute positioned ~ ~ ~-1 run function mechanization:nuclear/machines/fission_reactor/cooling/block_4
execute positioned ~2 ~ ~ run function mechanization:nuclear/machines/fission_reactor/cooling/block_5
execute positioned ~ ~ ~2 run function mechanization:nuclear/machines/fission_reactor/cooling/block_6
execute positioned ~-2 ~ ~ run function mechanization:nuclear/machines/fission_reactor/cooling/block_7
execute positioned ~ ~ ~-2 run function mechanization:nuclear/machines/fission_reactor/cooling/block_8
execute positioned ~1 ~ ~1 run function mechanization:nuclear/machines/fission_reactor/cooling/block_9
execute positioned ~-1 ~ ~1 run function mechanization:nuclear/machines/fission_reactor/cooling/block_10
execute positioned ~-1 ~ ~-1 run function mechanization:nuclear/machines/fission_reactor/cooling/block_11
execute positioned ~1 ~ ~-1 run function mechanization:nuclear/machines/fission_reactor/cooling/block_12
execute positioned ~2 ~ ~1 run function mechanization:nuclear/machines/fission_reactor/cooling/block_13
execute positioned ~-1 ~ ~2 run function mechanization:nuclear/machines/fission_reactor/cooling/block_14
execute positioned ~-2 ~ ~-1 run function mechanization:nuclear/machines/fission_reactor/cooling/block_15
execute positioned ~1 ~ ~-2 run function mechanization:nuclear/machines/fission_reactor/cooling/block_16
execute positioned ~1 ~ ~2 run function mechanization:nuclear/machines/fission_reactor/cooling/block_17
execute positioned ~-2 ~ ~1 run function mechanization:nuclear/machines/fission_reactor/cooling/block_18
execute positioned ~-1 ~ ~-2 run function mechanization:nuclear/machines/fission_reactor/cooling/block_19
execute positioned ~2 ~ ~-1 run function mechanization:nuclear/machines/fission_reactor/cooling/block_20
execute positioned ~2 ~ ~2 run function mechanization:nuclear/machines/fission_reactor/cooling/block_21
execute positioned ~2 ~ ~-2 run function mechanization:nuclear/machines/fission_reactor/cooling/block_22
execute positioned ~-2 ~ ~-2 run function mechanization:nuclear/machines/fission_reactor/cooling/block_23
execute positioned ~-2 ~ ~2 run function mechanization:nuclear/machines/fission_reactor/cooling/block_24

#tellraw @p ["",{"text":"output: ","color":"dark_green"},{"score":{"name":"heat_0","objective":"mech_data"},"color":"dark_aqua"}]