#Machine Ticks
execute if score timer_20 du_data matches 6 as @e[tag=mech_furnace_gen] at @s run function mechanization:machines/machines/furnace_generator
execute if score timer_20 du_data matches 7 as @e[tag=mech_ele_furnace] at @s run function mechanization:machines/machines/electric_furnace
execute if score timer_20 du_data matches 8 run function mechanization:machines/machines/solar_panel/solar_panel
execute if score timer_20 du_data matches 9 as @e[tag=mech_grinder] at @s run function mechanization:machines/machines/grinder/grinder
execute if score timer_20 du_data matches 10 as @e[tag=mech_alloy_furnace] at @s run function mechanization:machines/machines/alloy_furnace/alloy_furnace
execute if score timer_20 du_data matches 11 as @e[tag=mech_block_breaker] at @s run function mechanization:machines/machines/block_breaker
execute if score timer_20 du_data matches 12 as @e[tag=mech_teleporter] at @s run function mechanization:machines/machines/teleporter
execute if score timer_20 du_data matches 13 as @e[tag=mech_reformer] at @s run function mechanization:machines/machines/reformer
execute if score timer_20 du_data matches 14 as @e[tag=mech_disenchanter] at @s run function mechanization:machines/machines/disenchanter/disenchanter
execute if score timer_20 du_data matches 15 as @e[tag=mech_end_generator] at @s run function mechanization:machines/machines/ender_gen/ender_gen
execute if score timer_20 du_data matches 16 as @e[tag=mech_bio_gen] at @s run function mechanization:machines/machines/bio_generator/bio_generator

execute if score timer_2 du_data matches 0 as @e[tag=mech_super_piston] at @s run function mechanization:machines/machines/super_piston/super_piston
execute if score timer_2 du_data matches 0 as @e[tag=mech_super_sticky_piston] at @s run function mechanization:machines/machines/super_piston/super_sticky_piston
execute if score timer_2 du_data matches 0 as @e[tag=mech_turn_table] at @s run function mechanization:machines/machines/turn_table

execute if score timer_100 du_data matches 10 as @e[tag=mech_tree_feller] at @s run function mechanization:machines/machines/tree_feller/tree_feller
execute as @e[type=armor_stand,tag=mech_tree_feller_model,tag=mech_active] run function mechanization:machines/machines/tree_feller/tree_feller_model
execute if score timer_100 du_data matches 20 as @e[tag=mech_auto_farm] at @s run function mechanization:machines/machines/auto_farm/auto_farm
execute if score timer_100 du_data matches 30 as @e[tag=mech_mob_grinder] at @s run function mechanization:machines/machines/mob_grinder
execute if score timer_100 du_data matches 40 as @e[tag=mech_quarry] at @s run function mechanization:machines/machines/quarry

#Chunk Loader
execute if score timer_100 du_data matches 45 as @e[tag=mech_chunk_loader] at @s run function mechanization:machines/machines/chunk_loader/chunk_loader
execute if score timer_100 du_data matches 50 as @e[tag=mech_loader_marker,tag=mech_active,tag=!mech_dimensional] at @s run function mechanization:machines/machines/chunk_loader/chunk_loader_marker
execute if score timer_100 du_data matches 55 if entity @e[tag=mech_loader_marker,tag=mech_active,tag=mech_dimensional] run function mechanization:machines/machines/chunk_loader/load_dimensions
execute as @e[tag=mech_loader_marker,tag=mech_active,tag=mech_dimensional] at @s run function mechanization:machines/machines/chunk_loader/chunk_loader_marker_dimensional

execute if score timer_100 du_data matches 60 as @e[tag=mech_lava_fabricator] at @s run function mechanization:machines/machines/lava_fabricator
execute if score timer_100 du_data matches 70 as @e[tag=mech_growth_accelerator,scores={mech_power=80..}] at @s run function mechanization:machines/machines/growth_accelerator/growth_accelerator
execute if score timer_100 du_data matches 80 as @e[tag=mech_fisher] at @s run function mechanization:machines/machines/fisher
execute if score timer_100 du_data matches 90 as @e[tag=mech_spawner_controller] at @s run function mechanization:machines/machines/spawner_controller

#Spawner Pickup
execute as @a[tag=du_right_click,scores={mech_usedid=2203}] at @s run function mechanization:machines/tools/spawner_mover/spawner_box
execute as @a[tag=du_right_click,scores={mech_usedid=2204}] at @s run function mechanization:machines/tools/spawner_mover/spawner_place
execute as @a[tag=du_right_click,scores={mech_usedid=2205}] at @s run function mechanization:machines/tools/spawner_mover/place_spawner_controller

#ores
execute as @a[scores={mech_mineore=1..}] at @s as @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:petrified_oak_slab",Count:1b},Age:0s}] at @s run function mechanization:machines/worldgen/mine_ore
scoreboard players set @a[scores={mech_mineore=1..}] mech_mineore 0\
clear @a[gamemode=!creative] minecraft:petrified_oak_slab