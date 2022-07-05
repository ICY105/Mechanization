
# Get ID Length
execute store result score #id mechanization.data run data get storage smithed.custom_block:main blockApi.id

# Batteries
execute if score #id mechanization.data matches 28 if data storage smithed.custom_block:main blockApi{id:"mechanization:tier_1_battery"} run function mechanization:base/machines/battery/place_tier_1_battery
execute if score #id mechanization.data matches 28 if data storage smithed.custom_block:main blockApi{id:"mechanization:tier_2_battery"} run function mechanization:base/machines/battery/place_tier_2_battery
execute if score #id mechanization.data matches 28 if data storage smithed.custom_block:main blockApi{id:"mechanization:tier_3_battery"} run function mechanization:base/machines/battery/place_tier_3_battery
execute if score #id mechanization.data matches 30 if data storage smithed.custom_block:main blockApi{id:"mechanization:creative_battery"} run function mechanization:base/machines/battery/place_creative_battery

# Cables
execute if score #id mechanization.data matches 26 if data storage smithed.custom_block:main blockApi{id:"mechanization:copper_cable"} run function mechanization:base/machines/cable/place_copper_cable
execute if score #id mechanization.data matches 31 if data storage smithed.custom_block:main blockApi{id:"mechanization:conductive_cable"} run function mechanization:base/machines/cable/place_conductive_cable
execute if score #id mechanization.data matches 37 if data storage smithed.custom_block:main blockApi{id:"mechanization:super_conductive_cable"} run function mechanization:base/machines/cable/place_super_conductive_cable

# Liquid Tanks
execute if score #id mechanization.data matches 26 if data storage smithed.custom_block:main blockApi{id:"mechanization:tier_1_liquid_tank"} run function mechanization:base/machines/liquid_tank/place_tier_1
execute if score #id mechanization.data matches 26 if data storage smithed.custom_block:main blockApi{id:"mechanization:tier_2_liquid_tank"} run function mechanization:base/machines/liquid_tank/place_tier_2
execute if score #id mechanization.data matches 26 if data storage smithed.custom_block:main blockApi{id:"mechanization:tier_3_liquid_tank"} run function mechanization:base/machines/liquid_tank/place_tier_3

# Generators
execute if score #id mechanization.data matches 25 if data storage smithed.custom_block:main blockApi{id:"mechanization:solar_panel"} run function mechanization:base/machines/solar_panel/place
execute if score #id mechanization.data matches 27 if data storage smithed.custom_block:main blockApi{id:"mechanization:bio_generator"} run function mechanization:base/machines/bio_generator/place
execute if score #id mechanization.data matches 29 if data storage smithed.custom_block:main blockApi{id:"mechanization:steam_generator"} run function mechanization:base/machines/steam_generator/place
execute if score #id mechanization.data matches 34 if data storage smithed.custom_block:main blockApi{id:"mechanization:lightning_generator"} run function mechanization:base/machines/lightning_generator/place
execute if score #id mechanization.data matches 36 if data storage smithed.custom_block:main blockApi{id:"mechanization:dimensional_generator"} run function mechanization:base/machines/dimensional_generator/place
execute if score #id mechanization.data matches 38 if data storage smithed.custom_block:main blockApi{id:"mechanization:thermoelectric_generator"} run function mechanization:base/machines/thermoelectric_generator/place

# Other Machines
execute if score #id mechanization.data matches 18 if data storage smithed.custom_block:main blockApi{id:"mechanization:pipe"} run function mechanization:base/machines/pipe/place
execute if score #id mechanization.data matches 20 if data storage smithed.custom_block:main blockApi{id:"mechanization:quarry"} run function mechanization:base/machines/quarry/place
execute if score #id mechanization.data matches 21 if data storage smithed.custom_block:main blockApi{id:"mechanization:grinder"} run function mechanization:base/machines/grinder/place
execute if score #id mechanization.data matches 23 if data storage smithed.custom_block:main blockApi{id:"mechanization:auto_farm"} run function mechanization:base/machines/auto_farm/place
execute if score #id mechanization.data matches 24 if data storage smithed.custom_block:main blockApi{id:"mechanization:teleporter"} run function mechanization:base/machines/teleporter/place
execute if score #id mechanization.data matches 24 if data storage smithed.custom_block:main blockApi{id:"mechanization:turn_table"} run function mechanization:base/machines/turn_table/place
execute if score #id mechanization.data matches 25 if data storage smithed.custom_block:main blockApi{id:"mechanization:auto_fisher"} run function mechanization:base/machines/auto_fisher/place
execute if score #id mechanization.data matches 25 if data storage smithed.custom_block:main blockApi{id:"mechanization:tree_feller"} run function mechanization:base/machines/tree_feller/place
execute if score #id mechanization.data matches 25 if data storage smithed.custom_block:main blockApi{id:"mechanization:arc_furnace"} run function mechanization:base/machines/arc_furnace/place
execute if score #id mechanization.data matches 25 if data storage smithed.custom_block:main blockApi{id:"mechanization:mob_grinder"} run function mechanization:base/machines/mob_grinder/place
execute if score #id mechanization.data matches 26 if data storage smithed.custom_block:main blockApi{id:"mechanization:super_piston"} run function mechanization:base/machines/super_piston/place
execute if score #id mechanization.data matches 27 if data storage smithed.custom_block:main blockApi{id:"mechanization:electric_lamp"} run function mechanization:base/machines/electric_lamp/place
execute if score #id mechanization.data matches 27 if data storage smithed.custom_block:main blockApi{id:"mechanization:block_breaker"} run function mechanization:base/machines/block_breaker/place
execute if score #id mechanization.data matches 27 if data storage smithed.custom_block:main blockApi{id:"mechanization:casting_basin"} run function mechanization:base/machines/casting_basin/place
execute if score #id mechanization.data matches 27 if data storage smithed.custom_block:main blockApi{id:"mechanization:alloy_furnace"} run function mechanization:base/machines/alloy_furnace/place
execute if score #id mechanization.data matches 27 if data storage smithed.custom_block:main blockApi{id:"mechanization:item_reformer"} run function mechanization:base/machines/item_reformer/place
execute if score #id mechanization.data matches 30 if data storage smithed.custom_block:main blockApi{id:"mechanization:electric_furnace"} run function mechanization:base/machines/electric_furnace/place
execute if score #id mechanization.data matches 32 if data storage smithed.custom_block:main blockApi{id:"mechanization:liquid_accumulator"} run function mechanization:base/machines/liquid_accumulator/place
execute if score #id mechanization.data matches 32 if data storage smithed.custom_block:main blockApi{id:"mechanization:enchanting_station"} run function mechanization:base/machines/enchanting_station/place
execute if score #id mechanization.data matches 32 if data storage smithed.custom_block:main blockApi{id:"mechanization:growth_accelerator"} run function mechanization:base/machines/growth_accelerator/place
execute if score #id mechanization.data matches 33 if data storage smithed.custom_block:main blockApi{id:"mechanization:super_sticky_piston"} run function mechanization:base/machines/super_sticky_piston/place
