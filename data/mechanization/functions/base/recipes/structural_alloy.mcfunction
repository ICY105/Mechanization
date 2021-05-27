
execute unless data block ~ ~ ~ Items[1] if predicate mechanization:recipes/base/structural_alloy_nugget run loot replace block ~ ~ ~ container.16 loot mechanization:base/resources_x9/structural_nugget
execute if predicate mechanization:recipes/base/structural_alloy_block run loot replace block ~ ~ ~ container.16 loot mechanization:base/structural_block
execute unless data block ~ ~ ~ Items[1] if predicate mechanization:recipes/base/structural_alloy_ingot_from_block run loot replace block ~ ~ ~ container.16 loot mechanization:base/resources_x9/structural_ingot
execute if predicate mechanization:recipes/base/structural_alloy_ingot_from_nugget run loot replace block ~ ~ ~ container.16 loot mechanization:base/structural_ingot

execute if predicate mechanization:recipes/base/structural_alloy_rod run loot replace block ~ ~ ~ container.16 loot mechanization:base/structural_rod
execute if predicate mechanization:recipes/base/structural_alloy_plate run loot replace block ~ ~ ~ container.16 loot mechanization:base/structural_plate
execute if predicate mechanization:recipes/base/structural_alloy_gear run loot replace block ~ ~ ~ container.16 loot mechanization:base/structural_gear
