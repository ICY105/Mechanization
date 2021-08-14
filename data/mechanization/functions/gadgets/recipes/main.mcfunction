
execute if predicate mechanization:recipes/gadgets/charging_station run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/charging_station
execute if predicate mechanization:recipes/gadgets/tinker_table run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/tinker_table
execute if predicate mechanization:recipes/gadgets/portable_battery run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/portable_battery

execute if predicate mechanization:recipes/gadgets/energy_saber run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/energy_saber_red
execute if data block ~ ~ ~ Items[].tag{mech_itemid:4100} unless data block ~ ~ ~ Items[2] run function mechanization:gadgets/recipes/dye_energy_saber
execute if predicate mechanization:recipes/gadgets/drill run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/drill

execute if predicate mechanization:recipes/gadgets/modular_helmet run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/modular_helmet
execute if predicate mechanization:recipes/gadgets/modular_chestplate run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/modular_chestplate
execute if predicate mechanization:recipes/gadgets/modular_leggings run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/modular_leggings
execute if predicate mechanization:recipes/gadgets/modular_boots run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/modular_boots

execute if predicate mechanization:recipes/gadgets/rebreather run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/rebreather
execute if predicate mechanization:recipes/gadgets/night_vision_goggles run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/night_vision_goggles
execute if predicate mechanization:recipes/gadgets/jetpack run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/jetpack
execute if predicate mechanization:recipes/gadgets/hover_boots run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/hover_boots
execute if predicate mechanization:recipes/gadgets/phase_boots run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/phase_boots

execute if predicate mechanization:recipes/gadgets/plasma_weapon run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/plasma_weapon
execute if predicate mechanization:recipes/gadgets/supercharged_chamber run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/supercharged_chamber
execute if predicate mechanization:recipes/gadgets/overclocked_chamber run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/overclocked_chamber
execute if predicate mechanization:recipes/gadgets/high_pressure_pump run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/high_pressure_pump
execute if predicate mechanization:recipes/gadgets/accelerated_pump run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/accelerated_pump
execute if predicate mechanization:recipes/gadgets/long_barrel run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/long_barrel
execute if predicate mechanization:recipes/gadgets/split_barrel run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/split_barrel
execute if predicate mechanization:recipes/gadgets/energized_heat_sink run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/energized_heat_sink
execute if predicate mechanization:recipes/gadgets/passive_heat_sink run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/passive_heat_sink
