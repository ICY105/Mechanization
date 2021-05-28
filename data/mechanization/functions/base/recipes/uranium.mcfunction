
execute unless data block ~ ~ ~ Items[1] if predicate mechanization:recipes/base/uranium_ingot_from_block run loot replace block ~ ~ ~ container.16 loot mechanization:base/resources_x9/uranium_ingot
execute if predicate mechanization:recipes/base/uranium_block run loot replace block ~ ~ ~ container.16 loot mechanization:base/uranium_block

execute unless data block ~ ~ ~ Items[1] if predicate mechanization:recipes/base/uranium_nugget run loot replace block ~ ~ ~ container.16 loot mechanization:base/resources_x9/uranium_nugget
execute if predicate mechanization:recipes/base/uranium_ingot_from_nugget run loot replace block ~ ~ ~ container.16 loot mechanization:base/uranium_ingot

execute unless data block ~ ~ ~ Items[1] if predicate mechanization:recipes/base/uranium_raw_from_block run loot replace block ~ ~ ~ container.16 loot mechanization:base/resources_x9/uranium_raw
execute if predicate mechanization:recipes/base/uranium_raw_block run loot replace block ~ ~ ~ container.16 loot mechanization:base/uranium_raw_block

execute if predicate mechanization:recipes/base/uranium_rod run loot replace block ~ ~ ~ container.16 loot mechanization:base/uranium_rod
execute if predicate mechanization:recipes/base/uranium_plate run loot replace block ~ ~ ~ container.16 loot mechanization:base/uranium_plate
execute if predicate mechanization:recipes/base/uranium_gear run loot replace block ~ ~ ~ container.16 loot mechanization:base/uranium_gear
