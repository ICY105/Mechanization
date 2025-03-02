
## Batteries
# [1,2147483647] Tier 1 Battery Capacity
scoreboard players set #machines.cf.t1_battery.capacity mechanization.data 50000
scoreboard players set #machines.cf.t1_battery.capacity.machine_upgrade mechanization.data 62500
scoreboard players set #machines.cf.t1_battery.capacity.ender_upgrade mechanization.data 100000
scoreboard players set #machines.cf.t1_battery.capacity.nether_upgrade mechanization.data 100000

# [1,2147483647] Tier 2 Battery capacity
scoreboard players set #machines.cf.t2_battery.capacity mechanization.data 200000
scoreboard players set #machines.cf.t2_battery.capacity.machine_upgrade mechanization.data 250000
scoreboard players set #machines.cf.t2_battery.capacity.ender_upgrade mechanization.data 400000
scoreboard players set #machines.cf.t2_battery.capacity.nether_upgrade mechanization.data 400000

# [1,2147483647] Tier 3 Battery Capacity
scoreboard players set #machines.cf.t3_battery.capacity mechanization.data 500000
scoreboard players set #machines.cf.t3_battery.capacity.machine_upgrade mechanization.data 625000
scoreboard players set #machines.cf.t3_battery.capacity.ender_upgrade mechanization.data 1000000
scoreboard players set #machines.cf.t3_battery.capacity.nether_upgrade mechanization.data 1000000

## Cables
# [1,2147483647] Copper cable transfer rate
scoreboard players set #machines.cf.copper_cable.transfer_rate mechanization.data 256

# [1,2147483647] Conductive Cable cable transfer rate
scoreboard players set #machines.cf.conductive_cable.transfer_rate mechanization.data 2048

# [1,2147483647] Super Conductive cable transfer rate
scoreboard players set #machines.cf.super_conductive_cable.transfer_rate mechanization.data 2147483647

## Alloy Furnace
# [2,2147483647] Time required to create an alloy in seconds. May be modified by upgrades.
scoreboard players set #machines.cf.alloy_furnace.speed mechanization.data 8

# [0,2147483647] Power used by the Alloy Furnace. May be modified by upgrades.
scoreboard players set #machines.cf.alloy_furnace.power mechanization.data 30

## Arc Furnace
# [2,2147483647] Time required to melt resources in seconds. May be modified by upgrades.
scoreboard players set #machines.cf.arc_furnace.speed_ingot mechanization.data 8
scoreboard players set #machines.cf.arc_furnace.speed_block mechanization.data 72

# [0,2147483647] Power used by the Arc Furnace. May be modified by upgrades.
scoreboard players set #machines.cf.arc_furnace.power mechanization.data 64

## Auto Farm
# [0,2147483647] Power used by the Auto Farm. May be modified by upgrades.
scoreboard players set #machines.cf.auto_farm.power mechanization.data 48

## Bio Generator
# [0,100000] Power Modifier for the Bio Generator, in percent.
scoreboard players set #machines.cf.bio_generator.power mechanization.data 100

## Block Breaker
# [0,2147483647] Power used by the Block Breaker. May be modified by upgrades.
scoreboard players set #machines.cf.block_breaker.power mechanization.data 24

## Casting Basin
# [0,2147483647] Power used by the Casting Basin. May be modified by upgrades.
scoreboard players set #machines.cf.casting_basin.power mechanization.data 12

# [2,2147483647] Time to cast items, in seconds. May be modified by upgrades.
scoreboard players set #machines.cf.casting_basin.speed_ingot mechanization.data 6
scoreboard players set #machines.cf.casting_basin.speed_block mechanization.data 56
scoreboard players set #machines.cf.casting_basin.speed_rod mechanization.data 9
scoreboard players set #machines.cf.casting_basin.speed_plate mechanization.data 12
scoreboard players set #machines.cf.casting_basin.speed_gear mechanization.data 15

## Dimensional Generator
# [0,2147483647] Power created by the Dimensional Generator (normal, machine upgrade).
scoreboard players set #machines.cf.dimensional_generator.power mechanization.data 24
scoreboard players set #machines.cf.dimensional_generator.power.machine_upgrade mechanization.data 48

# [0,10000] Fuel duration modifier, in percent.
scoreboard players set #machines.cf.dimensional_generator.fuel mechanization.data 100

## Electric Lamp
# [0,2147483647] Power used by the Electric Lamp.
scoreboard players set #machines.cf.lamp.power mechanization.data 4

## Auto Fisher
# [0,2147483647] Power used by the Auto Fisher
scoreboard players set #machines.cf.fisher.power mechanization.data 48

## Grinder
# [0,2147483647] Power used by the Grinder
scoreboard players set #machines.cf.grinder.power mechanization.data 40

# [2,2147483647] Time per operation, in seconds. May be modified by upgrades.
scoreboard players set #machines.cf.grinder.speed_ores mechanization.data 8
scoreboard players set #machines.cf.grinder.speed_other mechanization.data 4

## Growth Accelerator
# [0,2147483647] Power used by the Grinder
scoreboard players set #machines.cf.growth.power mechanization.data 8

## Fluid Pipe
# [0,2147483647] How much fluid a pipe can move per second, in liters.
# Higher values may increase performance by moving fluid in larger batches, and therefor less often.
scoreboard players set #machines.cf.fluid_pipe.rate mechanization.data 1000

## Fluid Tanks
# [0,2147483647] How much fluid can be stored, in liters (tier 1, 2, 3)
scoreboard players set #machines.cf.t1_tank.capacity mechanization.data 64000
scoreboard players set #machines.cf.t2_tank.capacity mechanization.data 256000
scoreboard players set #machines.cf.t3_tank.capacity mechanization.data 1024000

## Mob Grinder
# [0,2147483647] How much power the Mob Grinder uses
scoreboard players set #machines.cf.mob_grinder.power mechanization.data 48

# [0,2147483647] How much fluid XP the Mob Grinder generates per kill (when upgraded)
scoreboard players set #machines.cf.mob_grinder.xp mechanization.data 2

## Quarry
# [1,2147483647] How much power the Quarry uses per block mined (so by default, quarry used 16 * 4 = 64 kW)
scoreboard players set #machines.cf.quarry.power mechanization.data 16

# [0,2147483647] How many blocks the Quarry mines per cycle. Higher number may reduce performance.
scoreboard players set #machines.cf.quarry.speed mechanization.data 4
scoreboard players set #machines.cf.quarry.speed.machine_upgrade mechanization.data 8

## Steam Generator
# [0,10000] Power Output Modifier, in percent
scoreboard players set #machines.cf.steam_gen.power mechanization.data 100

## Thermoelectric Generator
# [0,10000] Power Output Modifier, in percent
scoreboard players set #machines.cf.thermoelectric.power mechanization.data 100
