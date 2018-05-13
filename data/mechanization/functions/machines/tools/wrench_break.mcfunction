#Furnace Generator
execute as @e[tag=mech_furnace_gen,distance=..0.5] run function give:mech_machines/furnace_generator
execute as @e[tag=mech_furnace_gen,distance=..0.5] at @s run setblock ~ ~ ~ minecraft:air replace
kill @e[tag=mech_furnace_gen,distance=..0.5]

#Electric Furnace
execute as @e[tag=mech_ele_furnace,distance=..0.5] run function give:mech_machines/electric_furnace
execute as @e[tag=mech_ele_furnace,distance=..0.5] at @s run setblock ~ ~ ~ minecraft:air replace
kill @e[tag=mech_ele_furnace,distance=..0.5]

#Solar Panel
execute as @e[tag=mech_solar_panel,distance=..0.5] run function give:mech_machines/solar_panel
execute as @e[tag=mech_solar_panel,distance=..0.5] at @s run setblock ~ ~ ~ minecraft:air replace
kill @e[tag=mech_solar_panel,distance=..0.5]
kill @e[tag=mech_solar_panel_model,distance=..0.5]

#Grinder
execute as @e[tag=mech_grinder,distance=..0.5] run function give:mech_machines/grinder
execute as @e[tag=mech_grinder,distance=..0.5] at @s run setblock ~ ~ ~ minecraft:air replace
kill @e[tag=mech_grinder,distance=..0.5]

#Alloy Furnace
execute as @e[tag=mech_alloy_furnace,distance=..0.5] run function give:mech_machines/alloy_furnace
execute as @e[tag=mech_alloy_furnace,distance=..0.5] at @s run setblock ~ ~ ~ minecraft:air replace
kill @e[tag=mech_alloy_furnace,distance=..0.5]

#Tree Feller
execute as @e[tag=mech_tree_feller,distance=..0.5] run function give:mech_machines/tree_feller
execute as @e[tag=mech_tree_feller,distance=..0.5] at @s run setblock ~ ~ ~ minecraft:air replace
kill @e[tag=mech_tree_feller,distance=..0.5]
kill @e[tag=mech_tree_feller_model,distance=..0.6]

#Block Breaker
execute positioned ~ ~1 ~ as @e[tag=mech_block_breaker,distance=..0.5] run function give:mech_machines/block_breaker
execute positioned ~ ~1 ~ run kill @e[tag=mech_block_breaker,distance=..0.5]

#Auto Farm
execute as @e[tag=mech_auto_farm,distance=..0.5] run function give:mech_machines/auto_farm
execute as @e[tag=mech_auto_farm,distance=..0.5] at @s run setblock ~ ~ ~ minecraft:air replace
kill @e[tag=mech_auto_farm,distance=..0.5]

#Mob Grinder
execute as @e[tag=mech_mob_grinder,distance=..0.5] run function give:mech_machines/mob_grinder
execute as @e[tag=mech_mob_grinder,distance=..0.5] at @s run setblock ~ ~ ~ minecraft:air replace
kill @e[tag=mech_mob_grinder,distance=..0.5]

#Quarry
execute as @e[tag=mech_quarry,distance=..0.5] run function give:mech_machines/quarry
execute as @e[tag=mech_quarry,distance=..0.5] at @s run setblock ~ ~ ~ minecraft:air replace
kill @e[tag=mech_quarry,distance=..0.5]

#Chunk Loader
execute as @e[tag=mech_chunk_loader,distance=..0.5] run function give:mech_machines/chunk_loader
execute as @e[tag=mech_chunk_loader,distance=..0.5] at @s run setblock ~ ~ ~ minecraft:air replace
kill @e[tag=mech_chunk_loader,distance=..0.5]

#Teleporer
execute as @e[tag=mech_teleporter,distance=..0.5] run function give:mech_machines/teleporter
execute as @e[tag=mech_teleporter,distance=..0.5] at @s run setblock ~ ~ ~ minecraft:air replace
kill @e[tag=mech_teleporter,distance=..0.5]

#Lava Fabricator
execute as @e[tag=mech_lava_fabricator,distance=..0.5] run function give:mech_machines/lava_fabricator
execute as @e[tag=mech_lava_fabricator,distance=..0.5] at @s run setblock ~ ~ ~ minecraft:air replace
kill @e[tag=mech_lava_fabricator,distance=..0.5]

#Growth Accelerator
execute as @e[tag=mech_growth_accelerator,distance=..0.5] run function give:mech_machines/growth_accelerator
execute as @e[tag=mech_growth_accelerator,distance=..0.5] at @s run setblock ~ ~ ~ minecraft:air replace
kill @e[tag=mech_growth_accelerator,distance=..0.5]

#Fisher
execute as @e[tag=mech_fisher,distance=..0.5] run function give:mech_machines/auto_fisher
execute as @e[tag=mech_fisher,distance=..0.5] at @s run setblock ~ ~ ~ minecraft:air replace
kill @e[tag=mech_fisher,distance=..0.5]

#Spawner Controller
execute as @e[tag=mech_spawner_controller,distance=..0.5] run function give:mech_machines/spawner_controller
execute as @e[tag=mech_spawner_controller,distance=..0.5] at @s run data merge block ~ ~ ~ {RequiredPlayerRange: 16s, MaxSpawnDelay: 800s, MinSpawnDelay: 200s, Delay: 600s}
kill @e[tag=mech_spawner_controller,distance=..0.5]

#Super Piston
execute as @e[tag=mech_super_piston,distance=..0.5] run function give:mech_machines/super_piston
execute as @e[tag=mech_super_piston,distance=..0.5] at @s run setblock ~ ~ ~ minecraft:air replace
kill @e[tag=mech_super_piston,distance=..0.5]

#Super Sticky Piston
execute as @e[tag=mech_super_sticky_piston,distance=..0.5] run function give:mech_machines/super_sticky_piston
execute as @e[tag=mech_super_sticky_piston,distance=..0.5] at @s run setblock ~ ~ ~ minecraft:air replace
kill @e[tag=mech_super_sticky_piston,distance=..0.5]

#Turn Table
execute as @e[tag=mech_turn_table,distance=..0.5] run function give:mech_machines/turn_table
execute as @e[tag=mech_turn_table,distance=..0.5] at @s run setblock ~ ~ ~ minecraft:air replace
kill @e[tag=mech_turn_table,distance=..0.5]

#Bio Generator
execute as @e[tag=mech_bio_gen,distance=..0.5] run function give:mech_machines/bio_generator
execute as @e[tag=mech_bio_gen,distance=..0.5] at @s run setblock ~ ~ ~ minecraft:air replace
kill @e[tag=mech_bio_gen,distance=..0.5]

#Item Reformer
execute as @e[tag=mech_reformer,distance=..0.5] run function give:mech_machines/item_reformer
execute as @e[tag=mech_reformer,distance=..0.5] at @s run setblock ~ ~ ~ minecraft:air replace
kill @e[tag=mech_reformer,distance=..0.5]

#Disenchanter
execute as @e[tag=mech_disenchanter,distance=..0.5] run function give:mech_machines/disenchanter
execute as @e[tag=mech_disenchanter,distance=..0.5] at @s run setblock ~ ~ ~ minecraft:air replace
kill @e[tag=mech_disenchanter,distance=..0.5]

#Ender Generator
execute as @e[tag=mech_end_generator,distance=..0.5] run function give:mech_machines/ender_generator
execute as @e[tag=mech_end_generator,distance=..0.5] at @s run setblock ~ ~ ~ minecraft:air replace
kill @e[tag=mech_end_generator,distance=..0.5]


