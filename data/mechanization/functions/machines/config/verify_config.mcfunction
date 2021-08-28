
scoreboard players set $temp_0 mech_data 0

## Alloy Furnace
# [2,2000000000] Time required to create an alloy in seconds. May be modified by upgrades.
execute unless score $machines.cf.alloy_furnace.speed mech_data matches 2..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$machines.cf.alloy_furnace.speed]","color":"green"}]

## Arc Furnace
# [2,2000000000] Time required to melts resources in seconds. May be modified by upgrades.
execute unless score $machines.cf.arc_furnace.speed_ingot mech_data matches 2..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$machines.cf.arc_furnace.speed_ingot]","color":"green"}]
execute unless score $machines.cf.arc_furnace.speed_block mech_data matches 2..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$machines.cf.arc_furnace.speed_block]","color":"green"}]

# [0,2000000000] Power used by the Arc Furnace. May be modified by upgrades.
execute unless score $machines.cf.arc_furnace.power mech_data matches 0..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$machines.cf.arc_furnace.power]","color":"green"}]

## Auto Farm
# [0,2000000000] Power used by the Auto Farm. May be modified by upgrades.
execute unless score $machines.cf.auto_farm.power mech_data matches 0..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$machines.cf.auto_farm.power]","color":"green"}]
scoreboard players operation $machines.cf.auto_farm.power mech_data *= $cons.5 du_data

## Bio Generator
# [0,100000] Power Modifier for the Bio Generator, in percent.
execute unless score $machines.cf.bio_gen.power mech_data matches 0..100000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$machines.cf.bio_gen.power]","color":"green"}]

## Block Breaker
# [0,2000000000] Power by the Block Breaker. May be modified by upgrades.
execute unless score $machines.cf.block_breaker.power mech_data matches 0..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$machines.cf.block_breaker.power]","color":"green"}]

#load default if errors
execute if score $temp_0 mech_data matches 1 store success score $temp_0 mech_data run tellraw @a [{"text":"Found Errors in machines_config, loading default values.","color":"red"}]
execute if score $temp_0 mech_data matches 1 store success score $temp_0 mech_data run function mechanization:gadgets/config/default_config

