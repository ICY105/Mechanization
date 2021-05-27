
execute unless data block ~ ~ ~ Items[1] if predicate mechanization:recipes/base/ender_alloy_nugget run loot replace block ~ ~ ~ container.16 loot mechanization:base/resources_x9/ender_alloy_nugget
execute if predicate mechanization:recipes/base/ender_alloy_block run loot replace block ~ ~ ~ container.16 loot mechanization:base/ender_alloy_block
execute unless data block ~ ~ ~ Items[1] if predicate mechanization:recipes/base/ender_alloy_ingot_from_block run loot replace block ~ ~ ~ container.16 loot mechanization:base/resources_x9/ender_alloy_ingot
execute if predicate mechanization:recipes/base/ender_alloy_ingot_from_nugget run loot replace block ~ ~ ~ container.16 loot mechanization:base/ender_alloy_ingot

execute if predicate mechanization:recipes/base/ender_alloy_rod run loot replace block ~ ~ ~ container.16 loot mechanization:base/ender_alloy_rod
execute if predicate mechanization:recipes/base/ender_alloy_plate run loot replace block ~ ~ ~ container.16 loot mechanization:base/ender_alloy_plate
execute if predicate mechanization:recipes/base/ender_alloy_gear run loot replace block ~ ~ ~ container.16 loot mechanization:base/ender_alloy_gear
