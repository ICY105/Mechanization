

### Ore Generation

# [0,1] Compatibility Mode: set to 1 to turn all ores into player heads
execute unless score $base.config.ore_compatibility mech_data matches 0..1 run tellraw @a [{"text":"Error: Invalid config setting for ","color":"red"},{"text":"[Ore Compatibility Mode]","color":"aqua"},{"text":". Resetting to default.","color":"red"}]
execute unless score $base.config.ore_compatibility mech_data matches 0..1 run scoreboard players set $base.config.ore_compatibility mech_data 0

# [0,32] Veins of Copper per Chunk
execute unless score $base.config.copper_rarity mech_data matches 0..32 run tellraw @a [{"text":"Error: Invalid config setting for ","color":"red"},{"text":"[Veins of Copper per Chunk]","color":"aqua"},{"text":". Resetting to default.","color":"red"}]
execute unless score $base.config.copper_rarity mech_data matches 0..32 run scoreboard players set $base.config.copper_rarity mech_data 12

# [0,32] Veins of Tin per Chunk
execute unless score $base.config.tin_rarity mech_data matches 0..32 run tellraw @a [{"text":"Error: Invalid config setting for ","color":"red"},{"text":"[Veins of Tin per Chunk]","color":"aqua"},{"text":". Resetting to default.","color":"red"}]
execute unless score $base.config.tin_rarity mech_data matches 0..32 run scoreboard players set $base.config.tin_rarity mech_data 12

# [0,32] Veins of Titanium per Chunk
execute unless score $base.config.titanium_rarity mech_data matches 0..32 run tellraw @a [{"text":"Error: Invalid config setting for ","color":"red"},{"text":"[Veins of Titanium per Chunk]","color":"aqua"},{"text":". Resetting to default.","color":"red"}]
execute unless score $base.config.titanium_rarity mech_data matches 0..32 run scoreboard players set $base.config.titanium_rarity mech_data 1

# [0,32] Veins of Uranium per Chunk
execute unless score $base.config.uranium_rarity mech_data matches 0..32 run tellraw @a [{"text":"Error: Invalid config setting for ","color":"red"},{"text":"[Veins of Uranium per Chunk]","color":"aqua"},{"text":". Resetting to default.","color":"red"}]
execute unless score $base.config.uranium_rarity mech_data matches 0..32 run scoreboard players set $base.config.uranium_rarity mech_data 3

# [0,32] Veins of Additional Emerald ore per Chunk (not biome restricted)
execute unless score $base.config.emerald_rarity mech_data matches 0..32 run tellraw @a [{"text":"Error: Invalid config setting for ","color":"red"},{"text":"[Veins of Emerald per Chunk]","color":"aqua"},{"text":". Resetting to default.","color":"red"}]
execute unless score $base.config.emerald_rarity mech_data matches 0..32 run scoreboard players set $base.config.emerald_rarity mech_data 1

### Machines

## Tier 1 battery

# [0,10000] Transfer rate (no upgrade, machine upgrade, ender upgrade, nether upgrade)
execute unless score $base.config.t1_rate mech_data matches 0..10000 run tellraw @a [{"text":"Error: Invalid config setting for ","color":"red"},{"text":"[Tier 1 Battery Transfer Rate: No Upgrade]","color":"aqua"},{"text":". Resetting to default.","color":"red"}]
execute unless score $base.config.t1_rate mech_data matches 0..10000 run scoreboard players set $base.config.t1_rate mech_data 100
execute unless score $base.config.t1_rate_upgrade mech_data matches 0..10000 run tellraw @a [{"text":"Error: Invalid config setting for ","color":"red"},{"text":"[Tier 1 Battery Transfer Rate: Machine Upgrade]","color":"aqua"},{"text":". Resetting to default.","color":"red"}]
execute unless score $base.config.t1_rate_upgrade mech_data matches 0..10000 run scoreboard players set $base.config.t1_rate_upgrade mech_data 125
execute unless score $base.config.t1_rate_ender_upgrade mech_data matches 0..10000 run tellraw @a [{"text":"Error: Invalid config setting for ","color":"red"},{"text":"[Tier 1 Battery Transfer Rate: Ender Upgrade]","color":"aqua"},{"text":". Resetting to default.","color":"red"}]
execute unless score $base.config.t1_rate_ender_upgrade mech_data matches 0..10000 run scoreboard players set $base.config.t1_rate_ender_upgrade mech_data 200
execute unless score $base.config.t1_rate_nether_upgrade mech_data matches 0..10000 run tellraw @a [{"text":"Error: Invalid config setting for ","color":"red"},{"text":"[Tier 1 Battery Transfer Rate: Nether Upgrade]","color":"aqua"},{"text":". Resetting to default.","color":"red"}]
execute unless score $base.config.t1_rate_nether_upgrade mech_data matches 0..10000 run scoreboard players set $base.config.t1_rate_nether_upgrade mech_data 125

# [0,2000000000] Capacity (no upgrade, machine upgrade, ender upgrade, nether upgrade)
execute unless score $base.config.t1_capacity mech_data matches 0..2000000000 run tellraw @a [{"text":"Error: Invalid config setting for ","color":"red"},{"text":"[Tier 1 Battery Capacity: No Upgrade]","color":"aqua"},{"text":". Resetting to default.","color":"red"}]
execute unless score $base.config.t1_capacity mech_data matches 0..2000000000 run scoreboard players set $base.config.t1_capacity mech_data 100000
execute unless score $base.config.t1_capacity_upgrade mech_data matches 0..2000000000 run tellraw @a [{"text":"Error: Invalid config setting for ","color":"red"},{"text":"[Tier 1 Battery Capacity: Machine Upgrade]","color":"aqua"},{"text":". Resetting to default.","color":"red"}]
execute unless score $base.config.t1_capacity_upgrade mech_data matches 0..2000000000 run scoreboard players set $base.config.t1_capacity_upgrade mech_data 125000
execute unless score $base.config.t1_capacity_ender_upgrade mech_data matches 0..2000000000 run tellraw @a [{"text":"Error: Invalid config setting for ","color":"red"},{"text":"[Tier 1 Battery Capacity: Ender Upgrade]","color":"aqua"},{"text":". Resetting to default.","color":"red"}]
execute unless score $base.config.t1_capacity_ender_upgrade mech_data matches 0..2000000000 run scoreboard players set $base.config.t1_capacity_ender_upgrade mech_data 125000
execute unless score $base.config.t1_capacity_nether_upgrade mech_data matches 0..2000000000 run tellraw @a [{"text":"Error: Invalid config setting for ","color":"red"},{"text":"[Tier 1 Battery Capacity: Nether Upgrade]","color":"aqua"},{"text":". Resetting to default.","color":"red"}]
execute unless score $base.config.t1_capacity_nether_upgrade mech_data matches 0..2000000000 run scoreboard players set $base.config.t1_capacity_nether_upgrade mech_data 200000

## Tier 2 battery

# [0,10000] Transfer rate (no upgrade, machine upgrade, ender upgrade, nether upgrade)
execute unless score $base.config.t2_rate mech_data matches 0..10000 run tellraw @a [{"text":"Error: Invalid config setting for ","color":"red"},{"text":"[Tier 2 Battery Transfer Rate: No Upgrade]","color":"aqua"},{"text":". Resetting to default.","color":"red"}]
execute unless score $base.config.t2_rate mech_data matches 0..10000 run scoreboard players set $base.config.t1_rate mech_data 400
execute unless score $base.config.t2_rate_upgrade mech_data matches 0..10000 run tellraw @a [{"text":"Error: Invalid config setting for ","color":"red"},{"text":"[Tier 2 Battery Transfer Rate: Machine Upgrade]","color":"aqua"},{"text":". Resetting to default.","color":"red"}]
execute unless score $base.config.t2_rate_upgrade mech_data matches 0..10000 run scoreboard players set $base.config.t1_rate_upgrade mech_data 500
execute unless score $base.config.t2_rate_ender_upgrade mech_data matches 0..10000 run tellraw @a [{"text":"Error: Invalid config setting for ","color":"red"},{"text":"[Tier 2 Battery Transfer Rate: Ender Upgrade]","color":"aqua"},{"text":". Resetting to default.","color":"red"}]
execute unless score $base.config.t2_rate_ender_upgrade mech_data matches 0..10000 run scoreboard players set $base.config.t1_rate_ender_upgrade mech_data 800
execute unless score $base.config.t2_rate_nether_upgrade mech_data matches 0..10000 run tellraw @a [{"text":"Error: Invalid config setting for ","color":"red"},{"text":"[Tier 2 Battery Transfer Rate: Nether Upgrade]","color":"aqua"},{"text":". Resetting to default.","color":"red"}]
execute unless score $base.config.t2_rate_nether_upgrade mech_data matches 0..10000 run scoreboard players set $base.config.t1_rate_nether_upgrade mech_data 500

# [0,2000000000] Capacity (no upgrade, machine upgrade, ender upgrade, nether upgrade)
execute unless score $base.config.t2_capacity mech_data matches 0..2000000000 run tellraw @a [{"text":"Error: Invalid config setting for ","color":"red"},{"text":"[Tier 2 Battery Capacity: No Upgrade]","color":"aqua"},{"text":". Resetting to default.","color":"red"}]
execute unless score $base.config.t2_capacity mech_data matches 0..2000000000 run scoreboard players set $base.config.t1_capacity mech_data 350000
execute unless score $base.config.t2_capacity_upgrade mech_data matches 0..2000000000 run tellraw @a [{"text":"Error: Invalid config setting for ","color":"red"},{"text":"[Tier 2 Battery Capacity: Machine Upgrade]","color":"aqua"},{"text":". Resetting to default.","color":"red"}]
execute unless score $base.config.t2_capacity_upgrade mech_data matches 0..2000000000 run scoreboard players set $base.config.t1_capacity_upgrade mech_data 450000
execute unless score $base.config.t2_capacity_ender_upgrade mech_data matches 0..2000000000 run tellraw @a [{"text":"Error: Invalid config setting for ","color":"red"},{"text":"[Tier 2 Battery Capacity: Ender Upgrade]","color":"aqua"},{"text":". Resetting to default.","color":"red"}]
execute unless score $base.config.t2_capacity_ender_upgrade mech_data matches 0..2000000000 run scoreboard players set $base.config.t1_capacity_ender_upgrade mech_data 450000
execute unless score $base.config.t2_capacity_nether_upgrade mech_data matches 0..2000000000 run tellraw @a [{"text":"Error: Invalid config setting for ","color":"red"},{"text":"[Tier 2 Battery Capacity: Nether Upgrade]","color":"aqua"},{"text":". Resetting to default.","color":"red"}]
execute unless score $base.config.t2_capacity_nether_upgrade mech_data matches 0..2000000000 run scoreboard players set $base.config.t1_capacity_nether_upgrade mech_data 700000

## Tier 3 battery

# [0,10000] Transfer rate (no upgrade, machine upgrade, ender upgrade, nether upgrade)
execute unless score $base.config.t3_rate mech_data matches 0..10000 run tellraw @a [{"text":"Error: Invalid config setting for ","color":"red"},{"text":"[Tier 3 Battery Transfer Rate: No Upgrade]","color":"aqua"},{"text":". Resetting to default.","color":"red"}]
execute unless score $base.config.t3_rate mech_data matches 0..10000 run scoreboard players set $base.config.t1_rate mech_data 1000
execute unless score $base.config.t3_rate_upgrade mech_data matches 0..10000 run tellraw @a [{"text":"Error: Invalid config setting for ","color":"red"},{"text":"[Tier 3 Battery Transfer Rate: Machine Upgrade]","color":"aqua"},{"text":". Resetting to default.","color":"red"}]
execute unless score $base.config.t3_rate_upgrade mech_data matches 0..10000 run scoreboard players set $base.config.t1_rate_upgrade mech_data 1250
execute unless score $base.config.t3_rate_ender_upgrade mech_data matches 0..10000 run tellraw @a [{"text":"Error: Invalid config setting for ","color":"red"},{"text":"[Tier 3 Battery Transfer Rate: Ender Upgrade]","color":"aqua"},{"text":". Resetting to default.","color":"red"}]
execute unless score $base.config.t3_rate_ender_upgrade mech_data matches 0..10000 run scoreboard players set $base.config.t1_rate_ender_upgrade mech_data 2000
execute unless score $base.config.t3_rate_nether_upgrade mech_data matches 0..10000 run tellraw @a [{"text":"Error: Invalid config setting for ","color":"red"},{"text":"[Tier 3 Battery Transfer Rate: Nether Upgrade]","color":"aqua"},{"text":". Resetting to default.","color":"red"}]
execute unless score $base.config.t3_rate_nether_upgrade mech_data matches 0..10000 run scoreboard players set $base.config.t1_rate_nether_upgrade mech_data 1250

# [0,2000000000] Capacity (no upgrade, machine upgrade, ender upgrade, nether upgrade)
execute unless score $base.config.t3_capacity mech_data matches 0..2000000000 run tellraw @a [{"text":"Error: Invalid config setting for ","color":"red"},{"text":"[Tier 3 Battery Capacity: No Upgrade]","color":"aqua"},{"text":". Resetting to default.","color":"red"}]
execute unless score $base.config.t3_capacity mech_data matches 0..2000000000 run scoreboard players set $base.config.t1_capacity mech_data 1000000
execute unless score $base.config.t3_capacity_upgrade mech_data matches 0..2000000000 run tellraw @a [{"text":"Error: Invalid config setting for ","color":"red"},{"text":"[Tier 3 Battery Capacity: Machine Upgrade]","color":"aqua"},{"text":". Resetting to default.","color":"red"}]
execute unless score $base.config.t3_capacity_upgrade mech_data matches 0..2000000000 run scoreboard players set $base.config.t1_capacity_upgrade mech_data 1250000
execute unless score $base.config.t3_capacity_ender_upgrade mech_data matches 0..2000000000 run tellraw @a [{"text":"Error: Invalid config setting for ","color":"red"},{"text":"[Tier 3 Battery Capacity: Ender Upgrade]","color":"aqua"},{"text":". Resetting to default.","color":"red"}]
execute unless score $base.config.t3_capacity_ender_upgrade mech_data matches 0..2000000000 run scoreboard players set $base.config.t1_capacity_ender_upgrade mech_data 1250000
execute unless score $base.config.t3_capacity_nether_upgrade mech_data matches 0..2000000000 run tellraw @a [{"text":"Error: Invalid config setting for ","color":"red"},{"text":"[Tier 3 Battery Capacity: Nether Upgrade]","color":"aqua"},{"text":". Resetting to default.","color":"red"}]
execute unless score $base.config.t3_capacity_nether_upgrade mech_data matches 0..2000000000 run scoreboard players set $base.config.t1_capacity_nether_upgrade mech_data 2000000

## Quantum battery

# [0,10000] Transfer rate (no upgrade, machine upgrade, ender upgrade, nether upgrade)
execute unless score $base.config.q_rate mech_data matches 0..10000 run tellraw @a [{"text":"Error: Invalid config setting for ","color":"red"},{"text":"[Quantum Battery Transfer Rate: No Upgrade]","color":"aqua"},{"text":". Resetting to default.","color":"red"}]
execute unless score $base.config.q_rate mech_data matches 0..10000 run scoreboard players set $base.config.t1_rate mech_data 1000
execute unless score $base.config.q_rate_upgrade mech_data matches 0..10000 run tellraw @a [{"text":"Error: Invalid config setting for ","color":"red"},{"text":"[Quantum Battery Transfer Rate: Machine Upgrade]","color":"aqua"},{"text":". Resetting to default.","color":"red"}]
execute unless score $base.config.q_rate_upgrade mech_data matches 0..10000 run scoreboard players set $base.config.t1_rate_upgrade mech_data 1250
execute unless score $base.config.q_rate_ender_upgrade mech_data matches 0..10000 run tellraw @a [{"text":"Error: Invalid config setting for ","color":"red"},{"text":"[Quantum Battery Transfer Rate: Ender Upgrade]","color":"aqua"},{"text":". Resetting to default.","color":"red"}]
execute unless score $base.config.q_rate_ender_upgrade mech_data matches 0..10000 run scoreboard players set $base.config.t1_rate_ender_upgrade mech_data 2000
execute unless score $base.config.q_rate_nether_upgrade mech_data matches 0..10000 run tellraw @a [{"text":"Error: Invalid config setting for ","color":"red"},{"text":"[Quantum Battery Transfer Rate: Nether Upgrade]","color":"aqua"},{"text":". Resetting to default.","color":"red"}]
execute unless score $base.config.q_rate_nether_upgrade mech_data matches 0..10000 run scoreboard players set $base.config.t1_rate_nether_upgrade mech_data 1250

# [0,2000000000] Capacity (no upgrade, machine upgrade, ender upgrade, nether upgrade)
execute unless score $base.config.q_capacity mech_data matches 0..2000000000 run tellraw @a [{"text":"Error: Invalid config setting for ","color":"red"},{"text":"[Quantum Battery Capacity: No Upgrade]","color":"aqua"},{"text":". Resetting to default.","color":"red"}]
execute unless score $base.config.q_capacity mech_data matches 0..2000000000 run scoreboard players set $base.config.t1_capacity mech_data 500000
execute unless score $base.config.q_capacity_upgrade mech_data matches 0..2000000000 run tellraw @a [{"text":"Error: Invalid config setting for ","color":"red"},{"text":"[Quantum Battery Capacity: Machine Upgrade]","color":"aqua"},{"text":". Resetting to default.","color":"red"}]
execute unless score $base.config.q_capacity_upgrade mech_data matches 0..2000000000 run scoreboard players set $base.config.t1_capacity_upgrade mech_data 625000
execute unless score $base.config.q_capacity_ender_upgrade mech_data matches 0..2000000000 run tellraw @a [{"text":"Error: Invalid config setting for ","color":"red"},{"text":"[Quantum Battery Capacity: Ender Upgrade]","color":"aqua"},{"text":". Resetting to default.","color":"red"}]
execute unless score $base.config.q_capacity_ender_upgrade mech_data matches 0..2000000000 run scoreboard players set $base.config.t1_capacity_ender_upgrade mech_data 625000
execute unless score $base.config.q_capacity_nether_upgrade mech_data matches 0..2000000000 run tellraw @a [{"text":"Error: Invalid config setting for ","color":"red"},{"text":"[Quantum Battery Capacity: Nether Upgrade]","color":"aqua"},{"text":". Resetting to default.","color":"red"}]
execute unless score $base.config.q_capacity_nether_upgrade mech_data matches 0..2000000000 run scoreboard players set $base.config.t1_capacity_nether_upgrade mech_data 1000000
