
execute unless data block ~ ~ ~ Items[1] if predicate mechanization:recipes/base/titanium_nugget run loot replace block ~ ~ ~ container.16 loot mechanization:base/resources_x9/titanium_nugget
execute if predicate mechanization:recipes/base/titanium_block run loot replace block ~ ~ ~ container.16 loot mechanization:base/titanium_block
execute unless data block ~ ~ ~ Items[1] if predicate mechanization:recipes/base/titanium_ingot_from_block run loot replace block ~ ~ ~ container.16 loot mechanization:base/resources_x9/titanium_ingot
execute if predicate mechanization:recipes/base/titanium_ingot_from_nugget run loot replace block ~ ~ ~ container.16 loot mechanization:base/titanium_ingot

execute unless data block ~ ~ ~ Items[1] if predicate mechanization:recipes/base/titanium_raw_from_block run loot replace block ~ ~ ~ container.16 loot mechanization:base/resources_x9/titanium_raw
execute if predicate mechanization:recipes/base/titanium_raw_block run loot replace block ~ ~ ~ container.16 loot mechanization:base/titanium_raw_block

execute if predicate mechanization:recipes/base/titanium_rod run loot replace block ~ ~ ~ container.16 loot mechanization:base/titanium_rod
execute if predicate mechanization:recipes/base/titanium_plate run loot replace block ~ ~ ~ container.16 loot mechanization:base/titanium_plate
execute if predicate mechanization:recipes/base/titanium_gear run loot replace block ~ ~ ~ container.16 loot mechanization:base/titanium_gear
