
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

## Casting Basin
# [0,2000000000] Power used by the Casting Basin. May be modified by upgrades.
execute unless score $machines.cf.casting_basin.power mech_data matches 0..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$machines.cf.casting_basin.power]","color":"green"}]

# [2,2000000000] Time to cast items, in seconds. May be modified by upgrades.
execute unless score $machines.cf.casting_basin.speed_ingot mech_data matches 2..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$machines.cf.casting_basin.speed_ingot]","color":"green"}]
execute unless score $machines.cf.casting_basin.speed_block mech_data matches 2..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$machines.cf.casting_basin.speed_block]","color":"green"}]
execute unless score $machines.cf.casting_basin.speed_rod mech_data matches 2..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$machines.cf.casting_basin.speed_rod]","color":"green"}]
execute unless score $machines.cf.casting_basin.speed_plate mech_data matches 2..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$machines.cf.casting_basin.speed_plate]","color":"green"}]
execute unless score $machines.cf.casting_basin.speed_gear mech_data matches 2..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$machines.cf.casting_basin.speed_gear]","color":"green"}]


## Dimensional Generator
# [0,2000000000] Power created by the Dimensional Generator (normal, machine upgrade).
execute unless score $machines.cf.dim_gen.power mech_data matches 0..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$machines.cf.dim_gen.power]","color":"green"}]
execute unless score $machines.cf.dim_gen.power_mu mech_data matches 0..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$machines.cf.dim_gen.power_mu]","color":"green"}]

# [0,10000] Fuel duration modifier, in percent.
execute unless score $machines.cf.dim_gen.fuel mech_data matches 0..10000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$machines.cf.dim_gen.fuel]","color":"green"}]

## Electric Lamp
# [0,2000000000] Power used by the Electric Lamp.
execute unless score $machines.cf.lamp.power mech_data matches 0..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$machines.cf.lamp.power]","color":"green"}]

## Auto Fisher
# [0,2000000000] Power used by the Auto Fisher
execute unless score $machines.cf.fisher.power mech_data matches 0..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$machines.cf.fisher.power]","color":"green"}]
scoreboard players operation $machines.cf.fisher.power mech_data *= $cons.5 du_data

## Grinder
# [0,2000000000] Power used by the Grinder
execute unless score $machines.cf.grinder.power mech_data matches 0..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$machines.cf.grinder.power]","color":"green"}]

# [2,2000000000] Time per operation, in seconds. May be modified by upgrades.
execute unless score $machines.cf.grinder.speed_ores mech_data matches 2..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$machines.cf.grinder.speed_ores]","color":"green"}]
execute unless score $machines.cf.grinder.speed_other mech_data matches 2..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$machines.cf.grinder.speed_other]","color":"green"}]

## Growth Accelerator
# [0,2000000000] Power used by the Grinder
execute unless score $machines.cf.growth.power mech_data matches 0..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$machines.cf.growth.power]","color":"green"}]
scoreboard players operation $machines.cf.growth.power mech_data *= $cons.5 du_data

## Liquid Pipe
# [0,2000000000] How much liquid a pipe can move per second, in liters.
# Higher values may increase performance by moving liquid in larger batches, and therefor less often.
execute unless score $machines.cf.liquid_pipe.rate mech_data matches 0..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$machines.cf.liquid_pipe.rate]","color":"green"}]

## Liquid Tanks
# [0,2000000000] How much liquid can be stored, in liters (tier 1, 2, 3)
execute unless score $machines.cf.t1_tank.capacity mech_data matches 0..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$machines.cf.t1_tank.capacity]","color":"green"}]
execute unless score $machines.cf.t2_tank.capacity mech_data matches 0..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$machines.cf.t2_tank.capacity]","color":"green"}]
execute unless score $machines.cf.t3_tank.capacity mech_data matches 0..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$machines.cf.t3_tank.capacity]","color":"green"}]

## Mob Grinder
# [0,2000000000] How much power the Mob Grinder uses
execute unless score $machines.cf.mob_grinder.power mech_data matches 0..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$machines.cf.mob_grinder.power]","color":"green"}]
scoreboard players operation $machines.cf.mob_grinder.power mech_data *= $cons.5 du_data

# [0,2000000000] How much liquid XP the Mob Grinder generates per kill (when upgraded)
execute unless score $machines.cf.mob_grinder.xp mech_data matches 0..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$machines.cf.mob_grinder.xp]","color":"green"}]

## Quarry
# [0,2000000000] How much power the Quarry uses
execute unless score $machines.cf.quarry.power mech_data matches 0..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$machines.cf.quarry.power]","color":"green"}]

# [1,2000000000] How many blocks the Quarry mines per cycle. Higher number by substantially reduce performance.
execute unless score $machines.cf.quarry.speed mech_data matches 1..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$machines.cf.quarry.speed]","color":"green"}]
execute unless score $machines.cf.quarry.speed_mu mech_data matches 1..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$machines.cf.quarry.speed_mu]","color":"green"}]

## Steam Generator
# [0,10000] Power Output Modifier, in percent
scoreboard players set $machines.cf.steam_gen.power mech_data 100
execute unless score $machines.cf.steam_gen.power mech_data matches 0..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$machines.cf.steam_gen.power]","color":"green"}]

## Thermoelectric Generator
# [0,10000] Power Output Modifier, in percent
scoreboard players set $machines.cf.thermoelectric.power mech_data 100
execute unless score $machines.cf.thermoelectric.power mech_data matches 0..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$machines.cf.thermoelectric.power]","color":"green"}]

#load default if errors
execute if score $temp_0 mech_data matches 1 store success score $temp_0 mech_data run tellraw @a [{"text":"Found Errors in machines_config, loading default values.","color":"red"}]
execute if score $temp_0 mech_data matches 1 store success score $temp_0 mech_data run function mechanization:gadgets/config/default_config

