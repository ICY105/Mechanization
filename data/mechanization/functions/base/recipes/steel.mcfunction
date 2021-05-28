
execute unless data block ~ ~ ~ Items[1] if predicate mechanization:recipes/base/steel_nugget run loot replace block ~ ~ ~ container.16 loot mechanization:base/resources_x9/steel_nugget
execute if predicate mechanization:recipes/base/steel_block run loot replace block ~ ~ ~ container.16 loot mechanization:base/steel_block
execute unless data block ~ ~ ~ Items[1] if predicate mechanization:recipes/base/steel_ingot_from_block run loot replace block ~ ~ ~ container.16 loot mechanization:base/resources_x9/steel_ingot
execute if predicate mechanization:recipes/base/steel_ingot_from_nugget run loot replace block ~ ~ ~ container.16 loot mechanization:base/steel_ingot

execute unless data block ~ ~ ~ Items[1] if predicate mechanization:recipes/base/steel_raw_from_block run loot replace block ~ ~ ~ container.16 loot mechanization:base/resources_x9/steel_raw
execute if predicate mechanization:recipes/base/steel_raw_block run loot replace block ~ ~ ~ container.16 loot mechanization:base/steel_raw_block

execute if predicate mechanization:recipes/base/steel_rod run loot replace block ~ ~ ~ container.16 loot mechanization:base/steel_rod
execute if predicate mechanization:recipes/base/steel_plate run loot replace block ~ ~ ~ container.16 loot mechanization:base/steel_plate
execute if predicate mechanization:recipes/base/steel_gear run loot replace block ~ ~ ~ container.16 loot mechanization:base/steel_gear
