
scoreboard players set #failed mechanization.data 0

## Batteries
# [0,2147483647] Tier 1 battery Capacity (no upgrade, machine upgrade, ender upgrade, nether upgrade)
execute unless score #machines.cf.t1_battery.capacity mechanization.data matches 0..2147483647 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.t1_battery.capacity]","color":"green"}]
execute unless score #machines.cf.t1_battery.capacity.machine_upgrade mechanization.data matches 0..2147483647 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.t1_battery.capacity.machine_upgrade]","color":"green"}]
execute unless score #machines.cf.t1_battery.capacity.ender_upgrade mechanization.data matches 0..2147483647 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.t1_battery.capacity.ender_upgrade]","color":"green"}]
execute unless score #machines.cf.t1_battery.capacity.nether_upgrade mechanization.data matches 0..2147483647 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.t1_battery.capacity.nether_upgrade]","color":"green"}]

# [0,2147483647] Tier 2 battery Capacity (no upgrade, machine upgrade, ender upgrade, nether upgrade)
execute unless score #machines.cf.t2_battery.capacity mechanization.data matches 0..2147483647 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.t2_battery.capacity]","color":"green"}]
execute unless score #machines.cf.t2_battery.capacity.machine_upgrade mechanization.data matches 0..2147483647 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.t2_battery.capacity.machine_upgrade]","color":"green"}]
execute unless score #machines.cf.t2_battery.capacity.ender_upgrade mechanization.data matches 0..2147483647 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.t2_battery.capacity.ender_upgrade]","color":"green"}]
execute unless score #machines.cf.t2_battery.capacity.nether_upgrade mechanization.data matches 0..2147483647 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.t2_battery.capacity.nether_upgrade]","color":"green"}]

# [0,2147483647] Tier 3 battery Capacity (no upgrade, machine upgrade, ender upgrade, nether upgrade)
execute unless score #machines.cf.t3_battery.capacity mechanization.data matches 0..2147483647 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.t3_battery.capacity]","color":"green"}]
execute unless score #machines.cf.t3_battery.capacity.machine_upgrade mechanization.data matches 0..2147483647 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.t3_battery.capacity.machine_upgrade]","color":"green"}]
execute unless score #machines.cf.t3_battery.capacity.ender_upgrade mechanization.data matches 0..2147483647 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.t3_battery.capacity.ender_upgrade]","color":"green"}]
execute unless score #machines.cf.t3_battery.capacity.nether_upgrade mechanization.data matches 0..2147483647 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.t3_battery.capacity.nether_upgrade]","color":"green"}]

## Cables
# [1,2147483647] Time required to create an alloy in seconds. May be modified by upgrades.
execute unless score #machines.cf.copper_cable.transfer_rate mechanization.data matches 1..2147483647 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.copper_cable.transfer_rate]","color":"green"}]

# [1,2147483647] Time required to create an alloy in seconds. May be modified by upgrades.
execute unless score #machines.cf.conductive_cable.transfer_rate mechanization.data matches 1..2147483647 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.conductive_cable.transfer_rate]","color":"green"}]

# [1,2147483647] Time required to create an alloy in seconds. May be modified by upgrades.
execute unless score #machines.cf.super_conductive_cable.transfer_rate mechanization.data matches 1..2147483647 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.super_conductive_cable.transfer_rate]","color":"green"}]

## Alloy Furnace
# [2,2147483647] Time required to create an alloy in seconds. May be modified by upgrades.
execute unless score #machines.cf.alloy_furnace.speed mechanization.data matches 2..2147483647 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.alloy_furnace.speed]","color":"green"}]

# [0,2147483647] Power used by the Alloy Furnace. May be modified by upgrades.
execute unless score #machines.cf.alloy_furnace.power mechanization.data matches 0..2147483647 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.alloy_furnace.power]","color":"green"}]

scoreboard players operation #machines.alloy_furnace.op_energy mechanization.data = #machines.cf.alloy_furnace.speed mechanization.data
scoreboard players operation #machines.alloy_furnace.op_energy mechanization.data *= #machines.cf.alloy_furnace.power mechanization.data
execute if score #machines.alloy_furnace.op_energy mechanization.data matches -1 run scoreboard players set #machines.alloy_furnace.op_energy mechanization.data 2147483647

## Arc Furnace
# [2,2147483647] Time required to melts resources in seconds. May be modified by upgrades.
execute unless score #machines.cf.arc_furnace.speed_ingot mechanization.data matches 2..2147483647 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.arc_furnace.speed_ingot]","color":"green"}]
execute unless score #machines.cf.arc_furnace.speed_block mechanization.data matches 2..2147483647 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.arc_furnace.speed_block]","color":"green"}]

# [0,2147483647] Power used by the Arc Furnace. May be modified by upgrades.
execute unless score #machines.cf.arc_furnace.power mechanization.data matches 0..2147483647 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.arc_furnace.power]","color":"green"}]

## Auto Farm
# [0,2147483647] Power used by the Auto Farm. May be modified by upgrades.
execute unless score #machines.cf.auto_farm.power mechanization.data matches 0..2147483647 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.auto_farm.power]","color":"green"}]
scoreboard players operation #machines.cf.auto_farm.power mechanization.data *= #cons.5 mechanization.data

## Bio Generator
# [0,100000] Power Modifier for the Bio Generator, in percent.
execute unless score #machines.cf.bio_generator.power mechanization.data matches 0..100000 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.bio_gen.power]","color":"green"}]

## Block Breaker
# [0,2147483647] Power by the Block Breaker. May be modified by upgrades.
execute unless score #machines.cf.block_breaker.power mechanization.data matches 0..2147483647 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.block_breaker.power]","color":"green"}]

## Casting Basin
# [0,2147483647] Power used by the Casting Basin. May be modified by upgrades.
execute unless score #machines.cf.casting_basin.power mechanization.data matches 0..2147483647 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.casting_basin.power]","color":"green"}]

# [2,2147483647] Time to cast items, in seconds. May be modified by upgrades.
execute unless score #machines.cf.casting_basin.speed_ingot mechanization.data matches 2..2147483647 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.casting_basin.speed_ingot]","color":"green"}]
execute unless score #machines.cf.casting_basin.speed_block mechanization.data matches 2..2147483647 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.casting_basin.speed_block]","color":"green"}]
execute unless score #machines.cf.casting_basin.speed_rod mechanization.data matches 2..2147483647 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.casting_basin.speed_rod]","color":"green"}]
execute unless score #machines.cf.casting_basin.speed_plate mechanization.data matches 2..2147483647 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.casting_basin.speed_plate]","color":"green"}]
execute unless score #machines.cf.casting_basin.speed_gear mechanization.data matches 2..2147483647 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.casting_basin.speed_gear]","color":"green"}]


## Dimensional Generator
# [0,2147483647] Power created by the Dimensional Generator (normal, machine upgrade).
execute unless score #machines.cf.dimensional_generator.power mechanization.data matches 0..2147483647 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.dim_gen.power]","color":"green"}]
execute unless score #machines.cf.dimensional_generator.power.machine_upgrade mechanization.data matches 0..2147483647 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.dim_gen.power.machine_upgrade]","color":"green"}]

# [0,10000] Fuel duration modifier, in percent.
execute unless score #machines.cf.dimensional_generator.fuel mechanization.data matches 0..10000 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.dim_gen.fuel]","color":"green"}]

## Electric Lamp
# [0,2147483647] Power used by the Electric Lamp.
execute unless score #machines.cf.lamp.power mechanization.data matches 0..2147483647 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.lamp.power]","color":"green"}]

## Auto Fisher
# [0,2147483647] Power used by the Auto Fisher
execute unless score #machines.cf.fisher.power mechanization.data matches 0..2147483647 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.fisher.power]","color":"green"}]
scoreboard players operation #machines.cf.fisher.power mechanization.data *= #cons.5 mechanization.data

## Grinder
# [0,2147483647] Power used by the Grinder
execute unless score #machines.cf.grinder.power mechanization.data matches 0..2147483647 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.grinder.power]","color":"green"}]

# [2,2147483647] Time per operation, in seconds. May be modified by upgrades.
execute unless score #machines.cf.grinder.speed_ores mechanization.data matches 2..2147483647 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.grinder.speed_ores]","color":"green"}]
execute unless score #machines.cf.grinder.speed_other mechanization.data matches 2..2147483647 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.grinder.speed_other]","color":"green"}]

## Growth Accelerator
# [0,2147483647] Power used by the Grinder
execute unless score #machines.cf.growth.power mechanization.data matches 0..2147483647 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.growth.power]","color":"green"}]
scoreboard players operation #machines.cf.growth.power mechanization.data *= #cons.5 mechanization.data

## fluid Pipe
# [0,2147483647] How much fluid a pipe can move per second, in liters.
# Higher values may increase performance by moving fluid in larger batches, and therefor less often.
execute unless score #machines.cf.fluid_pipe.rate mechanization.data matches 0..2147483647 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.fluid_pipe.rate]","color":"green"}]

## fluid Tanks
# [0,2147483647] How much fluid can be stored, in liters (tier 1, 2, 3)
execute unless score #machines.cf.t1_tank.capacity mechanization.data matches 0..2147483647 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.t1_tank.capacity]","color":"green"}]
execute unless score #machines.cf.t2_tank.capacity mechanization.data matches 0..2147483647 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.t2_tank.capacity]","color":"green"}]
execute unless score #machines.cf.t3_tank.capacity mechanization.data matches 0..2147483647 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.t3_tank.capacity]","color":"green"}]

## Mob Grinder
# [0,2147483647] How much power the Mob Grinder uses
execute unless score #machines.cf.mob_grinder.power mechanization.data matches 0..2147483647 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.mob_grinder.power]","color":"green"}]
scoreboard players operation #machines.cf.mob_grinder.power mechanization.data *= #cons.5 mechanization.data

# [0,2147483647] How much fluid XP the Mob Grinder generates per kill (when upgraded)
execute unless score #machines.cf.mob_grinder.xp mechanization.data matches 0..2147483647 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.mob_grinder.xp]","color":"green"}]

## Quarry
# [0,2147483647] How much power the Quarry uses
execute unless score #machines.cf.quarry.power mechanization.data matches 0..2147483647 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.quarry.power]","color":"green"}]

# [1,2147483647] How many blocks the Quarry mines per cycle. Higher number by substantially reduce performance.
execute unless score #machines.cf.quarry.speed mechanization.data matches 1..2147483647 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.quarry.speed]","color":"green"}]
execute unless score #machines.cf.quarry.speed.machine_upgrade mechanization.data matches 1..2147483647 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.quarry.speed.machine_upgrade]","color":"green"}]

## Steam Generator
# [0,10000] Power Output Modifier, in percent
scoreboard players set #machines.cf.steam_gen.power mechanization.data 100
execute unless score #machines.cf.steam_gen.power mechanization.data matches 0..2147483647 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.steam_gen.power]","color":"green"}]

## Thermoelectric Generator
# [0,10000] Power Output Modifier, in percent
scoreboard players set #machines.cf.thermoelectric.power mechanization.data 100
execute unless score #machines.cf.thermoelectric.power mechanization.data matches 0..2147483647 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#machines.cf.thermoelectric.power]","color":"green"}]

#load default if errors
execute if score #failed mechanization.data matches 1 store success score #failed mechanization.data run tellraw @a [{"text":"Found Errors in machines_config, loading default values.","color":"red"}]
execute if score #failed mechanization.data matches 1 store success score #failed mechanization.data run function mechanization:gadgets/config/default_config

