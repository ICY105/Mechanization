
execute unless data block ~ ~ ~ Items[1] if predicate mechanization:recipes/base/reinforced_structural_alloy_nugget run loot replace block ~ ~ ~ container.16 loot mechanization:base/resources_x9/reinforced_structural_nugget
execute if predicate mechanization:recipes/base/reinforced_structural_alloy_block run loot replace block ~ ~ ~ container.16 loot mechanization:base/reinforced_structural_block
execute unless data block ~ ~ ~ Items[1] if predicate mechanization:recipes/base/reinforced_structural_alloy_ingot_from_block run loot replace block ~ ~ ~ container.16 loot mechanization:base/resources_x9/reinforced_structural_ingot
execute if predicate mechanization:recipes/base/reinforced_structural_alloy_ingot_from_nugget run loot replace block ~ ~ ~ container.16 loot mechanization:base/reinforced_structural_ingot

execute unless data block ~ ~ ~ Items[1] if predicate mechanization:recipes/base/reinforced_structural_alloy_raw_from_block run loot replace block ~ ~ ~ container.16 loot mechanization:base/resources_x9/reinforced_structural_raw
execute if predicate mechanization:recipes/base/reinforced_structural_alloy_raw_block run loot replace block ~ ~ ~ container.16 loot mechanization:base/reinforced_structural_raw_block

execute if predicate mechanization:recipes/base/reinforced_structural_alloy_rod run loot replace block ~ ~ ~ container.16 loot mechanization:base/reinforced_structural_rod
execute if predicate mechanization:recipes/base/reinforced_structural_alloy_plate run loot replace block ~ ~ ~ container.16 loot mechanization:base/reinforced_structural_plate
execute if predicate mechanization:recipes/base/reinforced_structural_alloy_gear run loot replace block ~ ~ ~ container.16 loot mechanization:base/reinforced_structural_gear
