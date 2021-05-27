
execute unless data block ~ ~ ~ Items[1] if predicate mechanization:recipes/base/plutonium_nugget run loot replace block ~ ~ ~ container.16 loot mechanization:base/resources_x9/plutonium_nugget
execute if predicate mechanization:recipes/base/plutonium_block run loot replace block ~ ~ ~ container.16 loot mechanization:base/plutonium_block
execute unless data block ~ ~ ~ Items[1] if predicate mechanization:recipes/base/plutonium_ingot_from_block run loot replace block ~ ~ ~ container.16 loot mechanization:base/resources_x9/plutonium_ingot
execute if predicate mechanization:recipes/base/plutonium_ingot_from_nugget run loot replace block ~ ~ ~ container.16 loot mechanization:base/plutonium_ingot

execute if predicate mechanization:recipes/base/plutonium_rod run loot replace block ~ ~ ~ container.16 loot mechanization:base/plutonium_rod
execute if predicate mechanization:recipes/base/plutonium_plate run loot replace block ~ ~ ~ container.16 loot mechanization:base/plutonium_plate
execute if predicate mechanization:recipes/base/plutonium_gear run loot replace block ~ ~ ~ container.16 loot mechanization:base/plutonium_gear
