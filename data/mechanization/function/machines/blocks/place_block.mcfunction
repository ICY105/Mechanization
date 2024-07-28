
# Get ID Length
execute store result score #id mechanization.data run data get storage smithed.custom_block:main blockApi.id

# Batteries
execute if score #id mechanization.data matches 28 if data storage smithed.custom_block:main blockApi{id:"mechanization:tier_1_battery"} run function mechanization:machines/blocks/battery/place_tier_1_battery
execute if score #id mechanization.data matches 28 if data storage smithed.custom_block:main blockApi{id:"mechanization:tier_2_battery"} run function mechanization:machines/blocks/battery/place_tier_2_battery
execute if score #id mechanization.data matches 28 if data storage smithed.custom_block:main blockApi{id:"mechanization:tier_3_battery"} run function mechanization:machines/blocks/battery/place_tier_3_battery
execute if score #id mechanization.data matches 30 if data storage smithed.custom_block:main blockApi{id:"mechanization:creative_battery"} run function mechanization:machines/blocks/battery/place_creative_battery

# Cables
execute if score #id mechanization.data matches 26 if data storage smithed.custom_block:main blockApi{id:"mechanization:copper_cable"} run function mechanization:machines/blocks/cable/place_copper_cable
execute if score #id mechanization.data matches 30 if data storage smithed.custom_block:main blockApi{id:"mechanization:conductive_cable"} run function mechanization:machines/blocks/cable/place_conductive_cable
execute if score #id mechanization.data matches 36 if data storage smithed.custom_block:main blockApi{id:"mechanization:super_conductive_cable"} run function mechanization:machines/blocks/cable/place_super_conductive_cable

# Liquid Tanks
execute if score #id mechanization.data matches 31 if data storage smithed.custom_block:main blockApi{id:"mechanization:tier_1_fluid_tank"} run function mechanization:machines/blocks/fluid_tank/place_tier_1
execute if score #id mechanization.data matches 31 if data storage smithed.custom_block:main blockApi{id:"mechanization:tier_2_fluid_tank"} run function mechanization:machines/blocks/fluid_tank/place_tier_2
execute if score #id mechanization.data matches 31 if data storage smithed.custom_block:main blockApi{id:"mechanization:tier_3_fluid_tank"} run function mechanization:machines/blocks/fluid_tank/place_tier_3

# Generators
execute if score #id mechanization.data matches 25 if data storage smithed.custom_block:main blockApi{id:"mechanization:solar_panel"} run function mechanization:machines/blocks/solar_panel/place
execute if score #id mechanization.data matches 27 if data storage smithed.custom_block:main blockApi{id:"mechanization:bio_generator"} run function mechanization:machines/blocks/bio_generator/place
execute if score #id mechanization.data matches 29 if data storage smithed.custom_block:main blockApi{id:"mechanization:steam_generator"} run function mechanization:machines/blocks/steam_generator/place
execute if score #id mechanization.data matches 33 if data storage smithed.custom_block:main blockApi{id:"mechanization:lightning_generator"} run function mechanization:machines/blocks/lightning_generator/place
execute if score #id mechanization.data matches 35 if data storage smithed.custom_block:main blockApi{id:"mechanization:dimensional_generator"} run function mechanization:machines/blocks/dimensional_generator/place
execute if score #id mechanization.data matches 38 if data storage smithed.custom_block:main blockApi{id:"mechanization:thermoelectric_generator"} run function mechanization:machines/blocks/thermoelectric_generator/place

# Other Machines
execute if score #id mechanization.data matches 20 if data storage smithed.custom_block:main blockApi{id:"mechanization:quarry"} run function mechanization:machines/blocks/quarry/place
execute if score #id mechanization.data matches 21 if data storage smithed.custom_block:main blockApi{id:"mechanization:grinder"} run function mechanization:machines/blocks/grinder/place
execute if score #id mechanization.data matches 25 if data storage smithed.custom_block:main blockApi{id:"mechanization:auto_fisher"} run function mechanization:machines/blocks/fisher/place
execute if score #id mechanization.data matches 23 if data storage smithed.custom_block:main blockApi{id:"mechanization:auto_farm"} run function mechanization:machines/blocks/auto_farm/place
execute if score #id mechanization.data matches 24 if data storage smithed.custom_block:main blockApi{id:"mechanization:teleporter"} run function mechanization:machines/blocks/teleporter/place
execute if score #id mechanization.data matches 24 if data storage smithed.custom_block:main blockApi{id:"mechanization:fluid_pipe"} run function mechanization:machines/blocks/fluid_pipe/place
execute if score #id mechanization.data matches 27 if data storage smithed.custom_block:main blockApi{id:"mechanization:item_reformer"} run function mechanization:machines/blocks/reformer/place
execute if score #id mechanization.data matches 25 if data storage smithed.custom_block:main blockApi{id:"mechanization:tree_feller"} run function mechanization:machines/blocks/tree_feller/place
execute if score #id mechanization.data matches 25 if data storage smithed.custom_block:main blockApi{id:"mechanization:arc_furnace"} run function mechanization:machines/blocks/arc_furnace/place
execute if score #id mechanization.data matches 25 if data storage smithed.custom_block:main blockApi{id:"mechanization:mob_grinder"} run function mechanization:machines/blocks/mob_grinder/place
execute if score #id mechanization.data matches 26 if data storage smithed.custom_block:main blockApi{id:"mechanization:energy_relay"} run function mechanization:machines/blocks/energy_relay/place
execute if score #id mechanization.data matches 27 if data storage smithed.custom_block:main blockApi{id:"mechanization:electric_lamp"} run function mechanization:machines/blocks/electric_lamp/place
execute if score #id mechanization.data matches 27 if data storage smithed.custom_block:main blockApi{id:"mechanization:block_breaker"} run function mechanization:machines/blocks/block_breaker/place
execute if score #id mechanization.data matches 27 if data storage smithed.custom_block:main blockApi{id:"mechanization:casting_basin"} run function mechanization:machines/blocks/casting_basin/place
execute if score #id mechanization.data matches 27 if data storage smithed.custom_block:main blockApi{id:"mechanization:alloy_furnace"} run function mechanization:machines/blocks/alloy_furnace/place
execute if score #id mechanization.data matches 30 if data storage smithed.custom_block:main blockApi{id:"mechanization:electric_furnace"} run function mechanization:machines/blocks/electric_furnace/place
execute if score #id mechanization.data matches 32 if data storage smithed.custom_block:main blockApi{id:"mechanization:liquid_accumulator"} run function mechanization:machines/blocks/liquid_accumulator/place
execute if score #id mechanization.data matches 32 if data storage smithed.custom_block:main blockApi{id:"mechanization:enchanting_station"} run function mechanization:machines/blocks/enchanting_station/place
execute if score #id mechanization.data matches 32 if data storage smithed.custom_block:main blockApi{id:"mechanization:growth_accelerator"} run function mechanization:machines/blocks/growth_accelerator/place
