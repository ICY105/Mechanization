#Furnace Generator
execute if entity @s[tag=mech_furnace_gen] run loot spawn ~ ~ ~ loot mechanization:machines/furnace_generator
execute if entity @s[tag=mech_furnace_gen] run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_furnace_gen]

#Electric Furnace
execute if entity @s[tag=mech_ele_furnace] run loot spawn ~ ~ ~ loot mechanization:machines/electric_furnace
execute if entity @s[tag=mech_ele_furnace] run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_ele_furnace]

#Solar Panel
execute if entity @s[tag=mech_solar_panel] run loot spawn ~ ~ ~ loot mechanization:machines/solar_panel
execute if entity @s[tag=mech_solar_panel] run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_solar_panel]
kill @s[tag=mech_solar_panel_model]

#Grinder
execute if entity @s[tag=mech_grinder] run loot spawn ~ ~ ~ loot mechanization:machines/grinder
execute if entity @s[tag=mech_grinder] run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_grinder]

#Alloy Furnace
execute if entity @s[tag=mech_alloy_furnace] run loot spawn ~ ~ ~ loot mechanization:machines/alloy_furnace
execute if entity @s[tag=mech_alloy_furnace] run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_alloy_furnace]

#Tree Feller
execute if entity @s[tag=mech_tree_feller] run loot spawn ~ ~ ~ loot mechanization:machines/tree_feller
execute if entity @s[tag=mech_tree_feller] run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_tree_feller]
kill @s[tag=mech_tree_feller_model,distance=..0.6]

#Block Breaker
execute if entity @s[tag=mech_block_breaker] run loot spawn ~ ~ ~ loot mechanization:machines/block_breaker
kill @s[tag=mech_block_breaker]

#Auto Farm
execute if entity @s[tag=mech_auto_farm] run function give:mech_machines/auto_farm
execute if entity @s[tag=mech_auto_farm] run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_auto_farm]

#Mob Grinder
execute if entity @s[tag=mech_mob_grinder] run loot spawn ~ ~ ~ loot mechanization:machines/mob_grinder
execute if entity @s[tag=mech_mob_grinder] run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_mob_grinder]

#Quarry
execute if entity @s[tag=mech_quarry] run loot spawn ~ ~ ~ loot mechanization:machines/quarry
execute if entity @s[tag=mech_quarry] run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_quarry]

#Chunk Loader
execute if entity @s[tag=mech_chunk_loader] run loot spawn ~ ~ ~ loot mechanization:machines/chunk_loader
execute if entity @s[tag=mech_chunk_loader] run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_chunk_loader]

#Teleporter
execute if entity @s[tag=mech_teleporter] run loot spawn ~ ~ ~ loot mechanization:machines/teleporter
execute if entity @s[tag=mech_teleporter] run setblock ~ ~ ~ minecraft:air replace
execute if entity @s[tag=mech_teleporter] run function mechanization:machines/machines/teleporter/remove

#Lava Fabricator
execute if entity @s[tag=mech_lava_fabricator] run loot spawn ~ ~ ~ loot mechanization:machines/lava_fabricator
execute if entity @s[tag=mech_lava_fabricator] run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_lava_fabricator]

#Growth Accelerator
execute if entity @s[tag=mech_growth_accelerator] run loot spawn ~ ~ ~ loot mechanization:machines/growth_accelerator
execute if entity @s[tag=mech_growth_accelerator] run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_growth_accelerator]

#Fisher
execute if entity @s[tag=mech_fisher] run loot spawn ~ ~ ~ loot mechanization:machines/auto_fisher
execute if entity @s[tag=mech_fisher] run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_fisher]

#Spawner Controller
execute if entity @s[tag=mech_spawner_controller] run loot spawn ~ ~ ~ loot mechanization:machines/spawner_controller
execute if entity @s[tag=mech_spawner_controller] run data merge block ~ ~ ~ {RequiredPlayerRange: 16s, MaxSpawnDelay: 800s, MinSpawnDelay: 200s, Delay: 600s}
kill @s[tag=mech_spawner_controller]

#Super Piston
execute if entity @s[tag=mech_super_piston] run loot spawn ~ ~ ~ loot mechanization:machines/super_piston
execute if entity @s[tag=mech_super_piston] run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_super_piston]

#Super Sticky Piston
execute if entity @s[tag=mech_super_sticky_piston] run loot spawn ~ ~ ~ loot mechanization:machines/super_sticky_piston
execute if entity @s[tag=mech_super_sticky_piston] run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_super_sticky_piston]

#Turn Table
execute if entity @s[tag=mech_turn_table] run loot spawn ~ ~ ~ loot mechanization:machines/turn_table
execute if entity @s[tag=mech_turn_table] run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_turn_table]

#Bio Generator
execute if entity @s[tag=mech_bio_gen] run loot spawn ~ ~ ~ loot mechanization:machines/bio_generator
execute if entity @s[tag=mech_bio_gen] run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_bio_gen]

#Item Reformer
execute if entity @s[tag=mech_reformer] run loot spawn ~ ~ ~ loot mechanization:machines/item_reformer
execute if entity @s[tag=mech_reformer] run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_reformer]

#Disenchanter
execute if entity @s[tag=mech_disenchanter] run loot spawn ~ ~ ~ loot mechanization:machines/disenchanter
execute if entity @s[tag=mech_disenchanter] run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_disenchanter]

#Ender Generator
execute if entity @s[tag=mech_dim_generator] run loot spawn ~ ~ ~ loot mechanization:machines/dimensional_generator
execute if entity @s[tag=mech_dim_generator] run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_dim_generator]

