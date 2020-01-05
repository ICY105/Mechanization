
### Compatibility & Grief Prevention

# [0,1] Use Villager click detection instead of Carrot on a Stick Detection
#       Less accurate but usually works better with plugins (like grief prevention)
scoreboard players set $compat.config.click_detect mech_data 0

# [0,1] Add Manual Vol. 2. Spigot caps book length at 100 pages which is too short.
scoreboard players set $compat.config.manual_vol2 mech_data 0

# [0,1] Decrease reactor explosion size to prevent griefing.
scoreboard players set $compat.config.small_explosion mech_data 0

# [0,1] Disable block smelting effects from plasma weapons
scoreboard players set $compat.config.plasma_smelt mech_data 0

### Ore Generation

# [0,1] Compatibility Mode: set to 1 to turn all ores into player heads. Big FPS hit.
#       Only use if another datapack uses the technical blocks the Mech also uses for ores.
scoreboard players set $base.config.ore_compatibility mech_data 0

# [0,32] Veins of Copper per Chunk
scoreboard players set $base.config.copper_rarity mech_data 12

# [0,32] Veins of Tin per Chunk
scoreboard players set $base.config.tin_rarity mech_data 12

# [0,32] Veins of Titanium per Chunk
scoreboard players set $base.config.titanium_rarity mech_data 1

# [0,32] Veins of Uranium per Chunk
scoreboard players set $base.config.uranium_rarity mech_data 3

# [0,32] Veins of Additional Emerald ore per Chunk (not biome restricted)
scoreboard players set $base.config.emerald_rarity mech_data 1

### Machines

## Tier 1 battery

# [0,10000] Transfer rate (no upgrade, machine upgrade, ender upgrade, nether upgrade)
scoreboard players set $base.config.t1_rate mech_data 100
scoreboard players set $base.config.t1_rate_upgrade mech_data 125
scoreboard players set $base.config.t1_rate_ender_upgrade mech_data 200
scoreboard players set $base.config.t1_rate_nether_upgrade mech_data 125

# [0,2000000000] Capacity (no upgrade, machine upgrade, ender upgrade, nether upgrade)
scoreboard players set $base.config.t1_capacity mech_data 100000
scoreboard players set $base.config.t1_capacity_upgrade mech_data 125000
scoreboard players set $base.config.t1_capacity_ender_upgrade mech_data 125000
scoreboard players set $base.config.t1_capacity_nether_upgrade mech_data 200000

## Tier 2 battery

# [0,10000] Transfer rate (no upgrade, machine upgrade, ender upgrade, nether upgrade)
scoreboard players set $base.config.t2_rate mech_data 400
scoreboard players set $base.config.t2_rate_upgrade mech_data 500
scoreboard players set $base.config.t2_rate_ender_upgrade mech_data 800
scoreboard players set $base.config.t2_rate_nether_upgrade mech_data 500

# [0,2000000000] Capacity (no upgrade, machine upgrade, ender upgrade, nether upgrade)
scoreboard players set $base.config.t2_capacity mech_data 350000
scoreboard players set $base.config.t2_capacity_upgrade mech_data 450000
scoreboard players set $base.config.t2_capacity_ender_upgrade mech_data 450000
scoreboard players set $base.config.t2_capacity_nether_upgrade mech_data 700000

## Tier 3 battery

# [0,10000] Transfer rate (no upgrade, machine upgrade, ender upgrade, nether upgrade)
scoreboard players set $base.config.t3_rate mech_data 1000
scoreboard players set $base.config.t3_rate_upgrade mech_data 1250
scoreboard players set $base.config.t3_rate_ender_upgrade mech_data 2000
scoreboard players set $base.config.t3_rate_nether_upgrade mech_data 1250

# [0,2000000000] Capacity (no upgrade, machine upgrade, ender upgrade, nether upgrade)
scoreboard players set $base.config.t3_capacity mech_data 1000000
scoreboard players set $base.config.t3_capacity_upgrade mech_data 1250000
scoreboard players set $base.config.t3_capacity_ender_upgrade mech_data 1250000
scoreboard players set $base.config.t3_capacity_nether_upgrade mech_data 2000000

## Quantum battery

# [0,10000] Transfer rate (no upgrade, machine upgrade, ender upgrade, nether upgrade)
scoreboard players set $base.config.q_rate mech_data 1000
scoreboard players set $base.config.q_rate_upgrade mech_data 1250
scoreboard players set $base.config.q_rate_ender_upgrade mech_data 2000
scoreboard players set $base.config.q_rate_nether_upgrade mech_data 1250

# [0,2000000000] Capacity (no upgrade, machine upgrade, ender upgrade, nether upgrade)
scoreboard players set $base.config.q_capacity mech_data 500000
scoreboard players set $base.config.q_capacity_upgrade mech_data 625000
scoreboard players set $base.config.q_capacity_ender_upgrade mech_data 625000
scoreboard players set $base.config.q_capacity_nether_upgrade mech_data 1000000


