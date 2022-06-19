
#### Machine Ticks



# Batteries
execute if score #timer.20 mechanization.data matches 0 as @e[type=item_frame,tag=mechanization.battery.t1] at @s run function mechanization:base/machines/tier_1_battery
execute if score #timer.20 mechanization.data matches 1 as @e[type=item_frame,tag=mechanization.battery.t2] at @s run function mechanization:base/machines/tier_2_battery
execute if score #timer.20 mechanization.data matches 2 as @e[type=item_frame,tag=mechanization.battery.t3] at @s run function mechanization:base/machines/tier_3_battery
#execute if score #timer.20 mechanization.data matches 4 as @e[type=item_frame,tag=mechanization.battery.quantum] at @s run function mechanization:base/machines/quantum_battery

# Energy Relay
execute if score #timer.20 mechanization.data matches 5 as @e[type=item_frame,tag=mechanization.energy_relay] at @s run function mechanization:base/machines/relay/energy_relay

# Energy Cable
execute if score #timer.100 mechanization.data matches 0 as @e[type=item_frame,tag=mechanization.cable] at @s unless block ~ ~ ~ minecraft:moving_piston run function mechanization:base/machines/cable/break



# 2 tick clock
execute if score $base.timer_2 du_data matches 0 as @e[type=minecraft:item_frame,tag=mech_super_piston] at @s run function mechanization:machines/machines/super_piston/super_piston
execute if score $base.timer_2 du_data matches 0 as @e[type=minecraft:item_frame,tag=mech_super_sticky_piston] at @s run function mechanization:machines/machines/super_piston/super_piston
execute if score $base.timer_2 du_data matches 0 as @e[type=minecraft:item_frame,tag=mech_turn_table] at @s run function mechanization:machines/machines/turn_table
execute if score $base.timer_2 du_data matches 0 as @e[type=minecraft:item_frame,tag=mech_lightning_generator] at @s run function mechanization:machines/machines/lightning_generator

# 20 tick clock
execute if score $base.timer_20 du_data matches 5 as @e[type=minecraft:item_frame,tag=mech_pipe] at @s run function mechanization:machines/machines/liquid_pipe/liquid_pipe
execute if score $base.timer_20 du_data matches 6 as @e[type=minecraft:glow_item_frame,tag=mech_steam_generator] at @s run function mechanization:machines/machines/steam_generator/steam_generator
execute if score $base.timer_20 du_data matches 7 as @e[type=minecraft:glow_item_frame,tag=mech_alloy_furnace] at @s run function mechanization:machines/machines/alloy_furnace/alloy_furnace
execute if score $base.timer_20 du_data matches 8 as @e[type=minecraft:glow_item_frame,tag=mech_arc_furnace] at @s run function mechanization:machines/machines/arc_furnace/arc_furnace
execute if score $base.timer_20 du_data matches 9 as @e[type=minecraft:glow_item_frame,tag=mech_casting_basin] at @s run function mechanization:machines/machines/casting_basin/casting_basin
execute if score $base.timer_20 du_data matches 10 as @e[type=minecraft:glow_item_frame,tag=mech_liquid_tank] at @s run function mechanization:machines/machines/liquid_tank/liquid_tank
execute if score $base.timer_20 du_data matches 11 as @e[type=minecraft:glow_item_frame,tag=mech_liquid_accumulator] at @s run function mechanization:machines/machines/liquid_accumulator/liquid_accumulator
execute if score $base.timer_20 du_data matches 12 as @e[type=minecraft:glow_item_frame,tag=mech_thermoelectric_generator] at @s run function mechanization:machines/machines/thermoelectric_generator/thermoelectric_generator

execute if score $base.timer_20 du_data matches 5 as @e[type=minecraft:armor_stand,tag=mech_solar_panel] at @s run function mechanization:machines/machines/solar_panel/solar_panel
execute if score $base.timer_20 du_data matches 6 as @e[type=minecraft:marker,tag=mech_block_breaker] at @s run function mechanization:machines/machines/block_breaker/block_breaker
execute if score $base.timer_20 du_data matches 7 as @e[type=minecraft:item_frame,tag=mech_teleporter] at @s run function mechanization:machines/machines/teleporter/teleporter
execute if score $base.timer_20 du_data matches 8 as @e[type=minecraft:glow_item_frame,tag=mech_reformer] at @s run function mechanization:machines/machines/reformer/reformer
execute if score $base.timer_20 du_data matches 9 as @e[type=minecraft:glow_item_frame,tag=mech_ench_station] at @s run function mechanization:machines/machines/ench_station/ench_station
execute if score $base.timer_20 du_data matches 10 as @e[type=minecraft:glow_item_frame,tag=mech_dim_generator] at @s run function mechanization:machines/machines/dim_gen/dim_gen
execute if score $base.timer_20 du_data matches 11 as @e[type=minecraft:glow_item_frame,tag=mech_bio_gen] at @s run function mechanization:machines/machines/bio_generator/bio_generator
execute if score $base.timer_20 du_data matches 12 as @e[type=minecraft:glow_item_frame,tag=mech_quarry] at @s run function mechanization:machines/machines/quarry/quarry
execute if score $base.timer_20 du_data matches 13 as @e[type=minecraft:glow_item_frame,tag=mech_ele_furnace] at @s run function mechanization:machines/machines/electric_furnace
execute if score $base.timer_20 du_data matches 14 as @e[type=minecraft:glow_item_frame,tag=mech_grinder] at @s run function mechanization:machines/machines/grinder/grinder

# 100 tick clock
execute if score $base.timer_100 du_data matches 10 as @e[type=minecraft:item_frame,tag=mech_tree_feller] at @s run function mechanization:machines/machines/tree_feller/tree_feller
execute as @e[type=armor_stand,tag=mech_tree_feller_model,tag=mech_active] run function mechanization:machines/machines/tree_feller/tree_feller_model
execute if score $base.timer_100 du_data matches 20 as @e[type=minecraft:item_frame,tag=mech_auto_farm] at @s run function mechanization:machines/machines/auto_farm/auto_farm
execute if score $base.timer_100 du_data matches 30 as @e[type=minecraft:item_frame,tag=mech_mob_grinder] at @s run function mechanization:machines/machines/mob_grinder/mob_grinder
execute if score $base.timer_100 du_data matches 30 as @e[type=minecraft:item_frame,tag=mech_electric_lamp] at @s run function mechanization:machines/machines/electric_lamp/electric_lamp
execute if score $base.timer_100 du_data matches 40 as @e[type=minecraft:item_frame,tag=mech_growth_accelerator] at @s run function mechanization:machines/machines/growth_accelerator/growth_accelerator
execute if score $base.timer_100 du_data matches 50 as @e[type=minecraft:item_frame,tag=mech_fisher] at @s run function mechanization:machines/machines/fisher/fisher
execute if score $base.timer_100 du_data matches 60 as @e[type=minecraft:armor_stand,tag=mech_spawner_controller] at @s run function mechanization:machines/machines/spawner_controller

#player tele trigger
execute as @a at @s unless score @s mech_tele matches 0 positioned ~ ~-0.5 ~ run scoreboard players operation @e[type=item_frame,tag=mech_teleporter,distance=..1,limit=1] mech_data = @s mech_tele
scoreboard players set @a mech_tele 0

#Spawner Pickup
execute as @a[gamemode=!adventure,tag=mech_right_click,scores={mech_usedid=2200}] at @s run function mechanization:machines/tools/spawner_mover/spawner_box
execute as @a[gamemode=!adventure,tag=mech_right_click,scores={mech_usedid=2201}] at @s run function mechanization:machines/tools/spawner_mover/spawner_place
execute as @a[gamemode=!adventure,tag=mech_right_click,scores={mech_usedid=2019}] at @s run function mechanization:machines/tools/spawner_mover/place_spawner_controller
