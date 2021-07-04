
#### Machine Ticks

# 2 tick clock
execute if score $base.timer_2 du_data matches 0 as @e[tag=mech_super_piston] at @s run function mechanization:machines/machines/super_piston/super_piston
execute if score $base.timer_2 du_data matches 0 as @e[tag=mech_super_sticky_piston] at @s run function mechanization:machines/machines/super_piston/super_piston
execute if score $base.timer_2 du_data matches 0 as @e[tag=mech_turn_table] at @s run function mechanization:machines/machines/turn_table

# 20 tick clock
execute if score $base.timer_20 du_data matches 5 as @e[tag=mech_pipe] at @s run function mechanization:machines/machines/liquid_pipe/liquid_pipe
execute if score $base.timer_20 du_data matches 6 as @e[tag=mech_steam_generator] at @s run function mechanization:machines/machines/steam_generator/steam_generator
execute if score $base.timer_20 du_data matches 7 as @e[tag=mech_ele_furnace] at @s run function mechanization:machines/machines/electric_furnace
execute if score $base.timer_20 du_data matches 8 as @e[tag=mech_solar_panel] at @s run function mechanization:machines/machines/solar_panel/solar_panel
execute if score $base.timer_20 du_data matches 9 as @e[tag=mech_grinder] at @s run function mechanization:machines/machines/grinder/grinder
execute if score $base.timer_20 du_data matches 10 as @e[tag=mech_alloy_furnace] at @s run function mechanization:machines/machines/alloy_furnace/alloy_furnace
execute if score $base.timer_20 du_data matches 11 as @e[tag=mech_arc_furnace] at @s run function mechanization:machines/machines/arc_furnace/arc_furnace

execute if score $base.timer_20 du_data matches 12 as @e[tag=mech_block_breaker] at @s run function mechanization:machines/machines/block_breaker/block_breaker
execute if score $base.timer_20 du_data matches 13 as @e[tag=mech_teleporter] at @s run function mechanization:machines/machines/teleporter/teleporter
execute if score $base.timer_20 du_data matches 14 as @e[tag=mech_reformer] at @s run function mechanization:machines/machines/reformer/reformer
execute if score $base.timer_20 du_data matches 15 as @e[tag=mech_disenchanter] at @s run function mechanization:machines/machines/disenchanter/disenchanter
execute if score $base.timer_20 du_data matches 16 as @e[tag=mech_dim_generator] at @s run function mechanization:machines/machines/dim_gen/dim_gen
execute if score $base.timer_20 du_data matches 17 as @e[tag=mech_bio_gen] at @s run function mechanization:machines/machines/bio_generator/bio_generator
execute if score $base.timer_20 du_data matches 18 as @e[tag=mech_quarry] at @s run function mechanization:machines/machines/quarry/quarry
execute if score $base.timer_20 du_data matches 19 as @e[tag=mech_liquid_tank] at @s run function mechanization:machines/machines/liquid_tank/liquid_tank

# 100 tick clock
execute if score $base.timer_100 du_data matches 10 as @e[tag=mech_tree_feller] at @s run function mechanization:machines/machines/tree_feller/tree_feller
execute as @e[type=armor_stand,tag=mech_tree_feller_model,tag=mech_active] run function mechanization:machines/machines/tree_feller/tree_feller_model
execute if score $base.timer_100 du_data matches 20 as @e[tag=mech_auto_farm] at @s run function mechanization:machines/machines/auto_farm/auto_farm
execute if score $base.timer_100 du_data matches 30 as @e[tag=mech_mob_grinder] at @s run function mechanization:machines/machines/mob_grinder/mob_grinder

execute if score $base.timer_100 du_data matches 60 as @e[tag=mech_growth_accelerator] at @s run function mechanization:machines/machines/growth_accelerator/growth_accelerator
execute if score $base.timer_100 du_data matches 70 as @e[tag=mech_fisher] at @s run function mechanization:machines/machines/fisher/fisher
execute if score $base.timer_100 du_data matches 80 as @e[tag=mech_spawner_controller] at @s run function mechanization:machines/machines/spawner_controller

#player tele trigger
execute as @a at @s unless score @s mech_tele matches 0 positioned ~ ~-0.5 ~ run scoreboard players operation @e[tag=mech_teleporter,distance=..1,limit=1] mech_data = @s mech_tele
scoreboard players set @a mech_tele 0

#Spawner Pickup
execute as @a[gamemode=!adventure,tag=mech_right_click,scores={mech_usedid=2200}] at @s run function mechanization:machines/tools/spawner_mover/spawner_box
execute as @a[gamemode=!adventure,tag=mech_right_click,scores={mech_usedid=2201}] at @s run function mechanization:machines/tools/spawner_mover/spawner_place
execute as @a[gamemode=!adventure,tag=mech_right_click,scores={mech_usedid=2019}] at @s run function mechanization:machines/tools/spawner_mover/place_spawner_controller
