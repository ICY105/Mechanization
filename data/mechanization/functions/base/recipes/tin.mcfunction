
execute unless data block ~ ~ ~ Items[1] if predicate mechanization:recipes/base/tin_nugget run loot replace block ~ ~ ~ container.16 loot mechanization:base/resources_x9/tin_nugget
execute if predicate mechanization:recipes/base/tin_block run loot replace block ~ ~ ~ container.16 loot mechanization:base/tin_block
execute unless data block ~ ~ ~ Items[1] if predicate mechanization:recipes/base/tin_ingot_from_block run loot replace block ~ ~ ~ container.16 loot mechanization:base/resources_x9/tin_ingot
execute if predicate mechanization:recipes/base/tin_ingot_from_nugget run loot replace block ~ ~ ~ container.16 loot mechanization:base/tin_ingot

execute if predicate mechanization:recipes/base/tin_rod run loot replace block ~ ~ ~ container.16 loot mechanization:base/tin_rod
execute if predicate mechanization:recipes/base/tin_plate run loot replace block ~ ~ ~ container.16 loot mechanization:base/tin_plate
execute if predicate mechanization:recipes/base/tin_gear run loot replace block ~ ~ ~ container.16 loot mechanization:base/tin_gear
