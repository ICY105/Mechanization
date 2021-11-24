
# To alter the value of a setting, change the number at the end of the line. For example:
#   scoreboard players set $base.cf.tin_rarity mech_data 8
# Could be changed to:                                   V
#   scoreboard players set $base.cf.tin_rarity mech_data 24
# This would greatly increase how much tin ore generates per chunk

### Ore Generation

# [0,1] Use small world height generation (0-255).
scoreboard players set $base.cf.small_world mech_data 0

# [0,32] Veins of Tin per Chunk
scoreboard players set $base.cf.tin_rarity mech_data 8

# [0,32] Veins of Titanium per Chunk
scoreboard players set $base.cf.titanium_rarity mech_data 1

# [0,32] Veins of Uranium per Chunk
scoreboard players set $base.cf.uranium_rarity mech_data 2

# [0,32] Veins of Additional Emerald ore per Chunk (not biome restricted)
scoreboard players set $base.cf.emerald_rarity mech_data 1

# [1,2000000000] Tier 1 Battery Capacity (no upgrade, machine upgrade, ender upgrade, nether upgrade)
scoreboard players set $base.cf.t1_battery.capacity mech_data 50000
scoreboard players set $base.cf.t1_battery.capacity_mu mech_data 62500
scoreboard players set $base.cf.t1_battery.capacity_eu mech_data 62500
scoreboard players set $base.cf.t1_battery.capacity_nu mech_data 100000

# [1,2000000000] Tier 2 Battery capacity (no upgrade, machine upgrade, ender upgrade, nether upgrade)
scoreboard players set $base.cf.t2_battery.capacity mech_data 200000
scoreboard players set $base.cf.t2_battery.capacity_mu mech_data 250000
scoreboard players set $base.cf.t2_battery.capacity_eu mech_data 250000
scoreboard players set $base.cf.t2_battery.capacity_nu mech_data 400000

# [1,2000000000] Tier 3 Battery Capacity (no upgrade, machine upgrade, ender upgrade, nether upgrade)
scoreboard players set $base.cf.t3_battery.capacity mech_data 500000
scoreboard players set $base.cf.t3_battery.capacity_mu mech_data 62500
scoreboard players set $base.cf.t3_battery.capacity_eu mech_data 6250000
scoreboard players set $base.cf.t3_battery.capacity_nu mech_data 1000000

# [1,2000000000] Quantum Battery Capacity (no upgrade, machine upgrade, ender upgrade, nether upgrade)
scoreboard players set $base.cf.qu_battery.capacity mech_data 200000
scoreboard players set $base.cf.qu_battery.capacity_mu mech_data 250000
scoreboard players set $base.cf.qu_battery.capacity_eu mech_data 250000
scoreboard players set $base.cf.qu_battery.capacity_nu mech_data 400000

# [1,2000000000] Copper cable transfer rate
scoreboard players set $base.cf.copper_cable.transfer_rate mech_data 100

# [1,2000000000] Copper cable transfer rate
scoreboard players set $base.cf.conductive_cable.transfer_rate mech_data 1000

# [1,2000000000] Copper cable transfer rate
scoreboard players set $base.cf.super_conductive_cable.transfer_rate mech_data 2000000000


