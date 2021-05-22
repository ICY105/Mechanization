
#spawn resource
execute if score $crafting.in_0 du_data matches 1310..1313 run loot replace block -29999999 0 1601 container.0 loot mechanization:base/tin_ingot
execute if score $crafting.in_0 du_data matches 1320..1323 run loot replace block -29999999 0 1601 container.0 loot mechanization:base/titanium_ingot
execute if score $crafting.in_0 du_data matches 1430..1433 run loot replace block -29999999 0 1601 container.0 loot mechanization:base/uranium_ingot
execute if score $crafting.in_0 du_data matches 1332 run loot replace block -29999999 0 1601 container.0 loot mechanization:base/steel_ingot
execute if score $crafting.in_0 du_data matches 1342 run loot replace block -29999999 0 1601 container.0 loot mechanization:base/structural_ingot
execute if score $crafting.in_0 du_data matches 1352 run loot replace block -29999999 0 1601 container.0 loot mechanization:base/conductive_ingot
execute if score $crafting.in_0 du_data matches 1362 run loot replace block -29999999 0 1601 container.0 loot mechanization:base/titanium_steel_ingot
execute if score $crafting.in_0 du_data matches 1372 run loot replace block -29999999 0 1601 container.0 loot mechanization:base/reinforced_structural_ingot
execute if score $crafting.in_0 du_data matches 1382 run loot replace block -29999999 0 1601 container.0 loot mechanization:base/super_conductive_ingot
execute if score $crafting.in_0 du_data matches 1392 run loot replace block -29999999 0 1601 container.0 loot mechanization:base/ender_alloy_ingot
execute if score $crafting.in_0 du_data matches 1402 run loot replace block -29999999 0 1601 container.0 loot mechanization:base/nether_alloy_ingot
execute if score $crafting.in_0 du_data matches 1442 run loot replace block -29999999 0 1601 container.0 loot mechanization:base/plutonium_ingot

#finish
execute if score $crafting.in_0 du_data matches 1000..2000 if data block -29999999 0 1601 Items[0] run item replace block ~ ~ ~ container.2 from block -29999999 0 1601 container.0
