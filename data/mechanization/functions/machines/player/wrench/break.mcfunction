


# Batteries
execute if entity @s[tag=mechanization.battery] at @s run function mechanization:machines/machines/battery/break

# Energy Relay
execute if entity @s[tag=mechanization.energy_relay] run loot spawn ~ ~ ~ loot mechanization:machines/energy_relay
execute if entity @s[tag=mechanization.energy_relay] at @s run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mechanization.energy_relay]



# Cable
execute if entity @s[tag=mechanization.cable] at @s run function mechanization:machines/machines/cable/break

#Steam Generator
execute if entity @s[tag=mechanization.steam_generator] run loot spawn ~ ~ ~ loot mechanization:machines/steam_generator
execute if entity @s[tag=mechanization.steam_generator] run setblock ~ ~ ~ minecraft:air replace
execute if entity @s[tag=mechanization.steam_generator] run function mechanization:machines/machines/liquid_pipe/remove_adjacent_pipes
kill @s[tag=mechanization.steam_generator]

#Electric Furnace
execute if entity @s[tag=mechanization.electric_furnace] run loot spawn ~ ~ ~ loot mechanization:machines/electric_furnace
execute if entity @s[tag=mechanization.electric_furnace] run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mechanization.electric_furnace]

#Solar Panel
execute if entity @s[tag=mechanization.solar_panel] run loot spawn ~ ~ ~ loot mechanization:machines/solar_panel
execute if entity @s[tag=mechanization.solar_panel] run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mechanization.solar_panel]
kill @s[tag=mechanization.solar_panel.model]

#Grinder
execute if entity @s[tag=mechanization.grinder] run loot spawn ~ ~ ~ loot mechanization:machines/grinder
execute if entity @s[tag=mechanization.grinder] run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mechanization.grinder]

#Alloy Furnace
execute if entity @s[tag=mechanization.alloy_furnace] run loot spawn ~ ~ ~ loot mechanization:machines/alloy_furnace
execute if entity @s[tag=mechanization.alloy_furnace] run setblock ~ ~ ~ minecraft:air replace
execute if entity @s[tag=mechanization.alloy_furnace] run function mechanization:machines/machines/liquid_pipe/remove_adjacent_pipes
kill @s[tag=mechanization.alloy_furnace]

#Tree Feller
execute if entity @s[tag=mechanization.tree_feller] run loot spawn ~ ~ ~ loot mechanization:machines/tree_feller
execute if entity @s[tag=mechanization.tree_feller] run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mechanization.tree_feller]
execute positioned ~ ~-0.5 ~ run kill @e[tag=mechanization.tree_feller.model,distance=..0.75]

#Block Breaker
execute if entity @s[tag=mechanization.block_breaker] unless block ~ ~ ~ #du:air run function mechanization:base/machines/cable/remove_adjacent_cable
execute if entity @s[tag=mechanization.block_breaker] run loot spawn ~ ~ ~ loot mechanization:machines/block_breaker
kill @s[tag=mechanization.block_breaker]

#Auto Farm
execute if entity @s[tag=mechanization.auto_farm] run loot spawn ~ ~ ~ loot mechanization:machines/auto_farm
execute if entity @s[tag=mechanization.auto_farm] run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mechanization.auto_farm]

#Mob Grinder
execute if entity @s[tag=mechanization.mob_grinder] run loot spawn ~ ~ ~ loot mechanization:machines/mob_grinder
execute if entity @s[tag=mechanization.mob_grinder] run setblock ~ ~ ~ minecraft:air replace
execute if entity @s[tag=mechanization.mob_grinder] run function mechanization:machines/machines/liquid_pipe/remove_adjacent_pipes
kill @s[tag=mechanization.mob_grinder]

#Quarry
execute if entity @s[tag=mechanization.quarry] run loot spawn ~ ~ ~ loot mechanization:machines/quarry
execute if entity @s[tag=mechanization.quarry] run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mechanization.quarry]

#Teleporter
execute if entity @s[tag=mechanization.teleporter] run loot spawn ~ ~ ~ loot mechanization:machines/teleporter
execute if entity @s[tag=mechanization.teleporter] run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mechanization.teleporter]

#Growth Accelerator
execute if entity @s[tag=mechanization.growth_accelerator] run loot spawn ~ ~ ~ loot mechanization:machines/growth_accelerator
execute if entity @s[tag=mechanization.growth_accelerator] run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mechanization.growth_accelerator]

#Fisher
execute if entity @s[tag=mechanization.fisher] run loot spawn ~ ~ ~ loot mechanization:machines/auto_fisher
execute if entity @s[tag=mechanization.fisher] run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mechanization.fisher]

#Spawner Controller
execute if entity @s[tag=mechanization.spawner_controller] run function mechanization:base/machines/cable/remove_adjacent_cable
execute if entity @s[tag=mechanization.spawner_controller] run loot spawn ~ ~ ~ loot mechanization:machines/spawner_controller
execute if entity @s[tag=mechanization.spawner_controller] run data merge block ~ ~ ~ {RequiredPlayerRange: 16s, MaxSpawnDelay: 800s, MinSpawnDelay: 200s, Delay: 600s}
kill @s[tag=mechanization.spawner_controller]

#Bio Generator
execute if entity @s[tag=mechanization.bio_generator] run loot spawn ~ ~ ~ loot mechanization:machines/bio_generator
execute if entity @s[tag=mechanization.bio_generator] run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mechanization.bio_generator]

#Item Reformer
execute if entity @s[tag=mechanization.reformer] run loot spawn ~ ~ ~ loot mechanization:machines/item_reformer
execute if entity @s[tag=mechanization.reformer] run setblock ~ ~ ~ minecraft:air replace
execute if entity @s[tag=mechanization.reformer] run function mechanization:machines/machines/liquid_pipe/remove_adjacent_pipes
kill @s[tag=mechanization.reformer]

#Enchanting Station
execute if entity @s[tag=mechanization.enchanting_station] run loot spawn ~ ~ ~ loot mechanization:machines/enchanting_station
execute if entity @s[tag=mechanization.enchanting_station] run setblock ~ ~ ~ minecraft:air replace
execute if entity @s[tag=mechanization.enchanting_station] run function mechanization:machines/machines/liquid_pipe/remove_adjacent_pipes
kill @s[tag=mechanization.enchanting_station]

#Ender Generator
execute if entity @s[tag=mechanization.dimensional_generator] run loot spawn ~ ~ ~ loot mechanization:machines/dimensional_generator
execute if entity @s[tag=mechanization.dimensional_generator] run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mechanization.dimensional_generator]

#liquid tanks
execute if entity @s[tag=mechanization.liquid_tank] run function mechanization:machines/machines/liquid_tank/break

#pipes
execute if entity @s[tag=mechanization.pipe] run function mechanization:machines/machines/liquid_pipe/break

#Arc Furnace
execute if entity @s[tag=mechanization.arc_furnace] run loot spawn ~ ~ ~ loot mechanization:machines/arc_furnace
execute if entity @s[tag=mechanization.arc_furnace] run setblock ~ ~ ~ minecraft:air replace
execute if entity @s[tag=mechanization.arc_furnace] run function mechanization:machines/machines/liquid_pipe/remove_adjacent_pipes
kill @s[tag=mechanization.arc_furnace]

#Casting Basin
execute if entity @s[tag=mechanization.casting_basin] run loot spawn ~ ~ ~ loot mechanization:machines/casting_basin
execute if entity @s[tag=mechanization.casting_basin] run setblock ~ ~ ~ minecraft:air replace
execute if entity @s[tag=mechanization.casting_basin] run function mechanization:machines/machines/liquid_pipe/remove_adjacent_pipes
kill @s[tag=mechanization.casting_basin]

#Liquid Accumulator
execute if entity @s[tag=mechanization.liquid_accumulator] run loot spawn ~ ~ ~ loot mechanization:machines/liquid_accumulator
execute if entity @s[tag=mechanization.liquid_accumulator] run setblock ~ ~ ~ minecraft:air replace
execute if entity @s[tag=mechanization.liquid_accumulator] run function mechanization:machines/machines/liquid_pipe/remove_adjacent_pipes
kill @s[tag=mechanization.liquid_accumulator]

#Thermoelectric Generator
execute if entity @s[tag=mechanization.thermoelectric_generator] run loot spawn ~ ~ ~ loot mechanization:machines/thermoelectric_generator
execute if entity @s[tag=mechanization.thermoelectric_generator] run setblock ~ ~ ~ minecraft:air replace
execute if entity @s[tag=mechanization.thermoelectric_generator] run function mechanization:machines/machines/liquid_pipe/remove_adjacent_pipes
kill @s[tag=mechanization.thermoelectric_generator]

#electric lamp
execute if entity @s[tag=mechanization.electric_lamp] run loot spawn ~ ~ ~ loot mechanization:machines/electric_lamp
execute if entity @s[tag=mechanization.electric_lamp] run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mechanization.electric_lamp]


