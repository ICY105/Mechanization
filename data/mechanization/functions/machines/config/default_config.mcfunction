
## Alloy Furnace
# [2,2000000000] Time required to create an alloy in seconds. May be modified by upgrades.
scoreboard players set $machines.cf.alloy_furnace.speed mech_data 8

# [0,2000000000] Power used by the Alloy Furnace. May be modified by upgrades.
scoreboard players set $machines.cf.alloy_furnace.power mech_data 30

## Arc Furnace
# [2,2000000000] Time required to melt resources in seconds. May be modified by upgrades.
scoreboard players set $machines.cf.arc_furnace.speed_ingot mech_data 12
scoreboard players set $machines.cf.arc_furnace.speed_block mech_data 108

# [0,2000000000] Power used by the Arc Furnace. May be modified by upgrades.
scoreboard players set $machines.cf.arc_furnace.power mech_data 60

## Auto Farm
# [0,2000000000] Power used by the Auto Farm. May be modified by upgrades.
scoreboard players set $machines.cf.auto_farm.power mech_data 48

## Bio Generator
# [0,100000] Power Modifier for the Bio Generator, in percent.
scoreboard players set $machines.cf.bio_gen.power mech_data 100

## Block Breaker
# [0,2000000000] Power used by the Block Breaker. May be modified by upgrades.
scoreboard players set $machines.cf.block_breaker.power mech_data 24

## Casting Basin
# [0,2000000000] Power used by the Casting Basin. May be modified by upgrades.
scoreboard players set $machines.cf.casting_basin.power mech_data 15

# [2,2000000000] Time to cast items, in seconds. May be modified by upgrades.
scoreboard players set $machines.cf.casting_basin.speed_ingot mech_data 8
scoreboard players set $machines.cf.casting_basin.speed_block mech_data 60
scoreboard players set $machines.cf.casting_basin.speed_rod mech_data 16
scoreboard players set $machines.cf.casting_basin.speed_plate mech_data 24
scoreboard players set $machines.cf.casting_basin.speed_gear mech_data 32

## Dimensional Generator
# [0,2000000000] Power created by the Dimensional Generator (normal, machine upgrade).
scoreboard players set $machines.cf.dim_gen.power mech_data 24
scoreboard players set $machines.cf.dim_gen.power_mu mech_data 48

# [0,10000] Fuel duration modifier, in percent.
scoreboard players set $machines.cf.dim_gen.fuel mech_data 100

## Electric Lamp
# [0,2000000000] Power used by the Electric Lamp.
scoreboard players set $machines.cf.lamp.power mech_data 8

## Auto Fisher
# [0,2000000000] Power used by the Auto Fisher
scoreboard players set $machines.cf.fisher.power mech_data 48

## Grinder
# [0,2000000000] Power used by the Grinder
scoreboard players set $machines.cf.grinder.power mech_data 40

# [2,2000000000] Time per operation, in seconds. May be modified by upgrades.
scoreboard players set $machines.cf.grinder.speed_ores mech_data 8
scoreboard players set $machines.cf.grinder.speed_other mech_data 4

## Growth Accelerator
# [0,2000000000] Power used by the Grinder
scoreboard players set $machines.cf.growth.power mech_data 16

## Liquid Pipe
# [0,2000000000] How much liquid a pipe can move per second, in liters.
# Higher values may increase performance by moving liquid in larger batches, and therefor less often.
scoreboard players set $machines.cf.liquid_pipe.rate mech_data 1000

## Liquid Tanks
# [0,2000000000] How much liquid can be stored, in liters (tier 1, 2, 3)
scoreboard players set $machines.cf.t1_tank.capacity mech_data 16000
scoreboard players set $machines.cf.t2_tank.capacity mech_data 32000
scoreboard players set $machines.cf.t3_tank.capacity mech_data 64000

## Mob Grinder
# [0,2000000000] How much power the Mob Grinder uses
scoreboard players set $machines.cf.mob_grinder.power mech_data 48

# [0,2000000000] How much liquid XP the Mob Grinder generates per kill (when upgraded)
scoreboard players set $machines.cf.mob_grinder.xp mech_data 2

## Quarry
# [1,2000000000] How much power the Quarry uses
scoreboard players set $machines.cf.quarry.power mech_data 48

# [0,2000000000] How many blocks the Quarry mines per cycle. Higher number by substantially reduce performance.
scoreboard players set $machines.cf.quarry.speed mech_data 2
scoreboard players set $machines.cf.quarry.speed_mu mech_data 4

## Steam Generator
# [0,10000] Power Output Modifier, in percent
scoreboard players set $machines.cf.steam_gen.power mech_data 100

## Thermoelectric Generator
# [0,10000] Power Output Modifier, in percent
scoreboard players set $machines.cf.thermoelectric.power mech_data 100
