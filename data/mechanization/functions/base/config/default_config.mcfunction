
# To alter the value of a setting, change the number at the end of the line. For example:
#   scoreboard players set $base.cf.tin_rarity mech_data 8
# Could be changed to:                                   V
#   scoreboard players set $base.cf.tin_rarity mech_data 24
# This would greatly increase how much tin ore generates per chunk

### Ore Generation

# [0,1] Use 1.18 Generation (changes ore gen to take advantage of extended world height).
scoreboard players set $base.cf.ext_height mech_data 0

# [0,32] Veins of Tin per Chunk
scoreboard players set $base.cf.tin_rarity mech_data 6

# [0,32] Veins of Titanium per Chunk
scoreboard players set $base.cf.titanium_rarity mech_data 1

# [0,32] Veins of Uranium per Chunk
scoreboard players set $base.cf.uranium_rarity mech_data 2

# [0,32] Veins of Additional Emerald ore per Chunk (not biome restricted)
scoreboard players set $base.cf.emerald_rarity mech_data 1

### Machines

## Tier 1 battery

# (4,8,12,16,20,24,28,32) Range
scoreboard players set $base.cf.t1_battery.range mech_data 8

# [0,2000000000] Transfer rate (no upgrade, machine upgrade, ender upgrade, nether upgrade)
scoreboard players set $base.cf.t1_battery.rate mech_data 12
scoreboard players set $base.cf.t1_battery.rate_mu mech_data 15
scoreboard players set $base.cf.t1_battery.rate_eu mech_data 24
scoreboard players set $base.cf.t1_battery.rate_nu mech_data 15

# [0,2000000000] Capacity (no upgrade, machine upgrade, ender upgrade, nether upgrade)
scoreboard players set $base.cf.t1_battery.capacity mech_data 50000
scoreboard players set $base.cf.t1_battery.capacity_mu mech_data 62500
scoreboard players set $base.cf.t1_battery.capacity_eu mech_data 62500
scoreboard players set $base.cf.t1_battery.capacity_nu mech_data 100000


## Tier 2 battery

# (4,8,12,16,20,24,28,32) Range
scoreboard players set $base.cf.t2_battery.range mech_data 12

# [0,2000000000] Transfer rate (no upgrade, machine upgrade, ender upgrade, nether upgrade)
scoreboard players set $base.cf.t2_battery.rate mech_data 36
scoreboard players set $base.cf.t2_battery.rate_mu mech_data 45
scoreboard players set $base.cf.t2_battery.rate_eu mech_data 72
scoreboard players set $base.cf.t2_battery.rate_nu mech_data 45

# [0,2000000000] Capacity (no upgrade, machine upgrade, ender upgrade, nether upgrade)
scoreboard players set $base.cf.t2_battery.capacity mech_data 200000
scoreboard players set $base.cf.t2_battery.capacity_mu mech_data 250000
scoreboard players set $base.cf.t2_battery.capacity_eu mech_data 250000
scoreboard players set $base.cf.t2_battery.capacity_nu mech_data 400000


## Tier 3 battery

# (4,8,12,16,20,24,28,32) Range
scoreboard players set $base.cf.t3_battery.range mech_data 16

# [0,2000000000] Transfer rate (no upgrade, machine upgrade, ender upgrade, nether upgrade)
scoreboard players set $base.cf.t3_battery.rate mech_data 100
scoreboard players set $base.cf.t3_battery.rate_mu mech_data 125
scoreboard players set $base.cf.t3_battery.rate_eu mech_data 200
scoreboard players set $base.cf.t3_battery.rate_nu mech_data 125

# [0,2000000000] Capacity (no upgrade, machine upgrade, ender upgrade, nether upgrade)
scoreboard players set $base.cf.t3_battery.capacity mech_data 500000
scoreboard players set $base.cf.t3_battery.capacity_mu mech_data 62500
scoreboard players set $base.cf.t3_battery.capacity_eu mech_data 6250000
scoreboard players set $base.cf.t3_battery.capacity_nu mech_data 1000000


## Quantum battery

# (4,8,12,16,20,24,28,32) Range
scoreboard players set $base.cf.qu_battery.range mech_data 16

# [0,2000000000] Transfer rate (no upgrade, machine upgrade, ender upgrade, nether upgrade)
scoreboard players set $base.cf.qu_battery.rate mech_data 200
scoreboard players set $base.cf.qu_battery.rate_mu mech_data 250
scoreboard players set $base.cf.qu_battery.rate_eu mech_data 400
scoreboard players set $base.cf.qu_battery.rate_nu mech_data 250

# [0,2000000000] Capacity (no upgrade, machine upgrade, ender upgrade, nether upgrade)
scoreboard players set $base.cf.qu_battery.capacity mech_data 200000
scoreboard players set $base.cf.qu_battery.capacity_mu mech_data 250000
scoreboard players set $base.cf.qu_battery.capacity_eu mech_data 250000
scoreboard players set $base.cf.qu_battery.capacity_nu mech_data 400000


## Tier 1 Capacitor

# (4,8,12,16,20,24,28,32) Range
scoreboard players set $base.cf.t1_capacitor.range mech_data 12

# [0,2000000000] Transfer rate (no upgrade, machine upgrade, ender upgrade, nether upgrade)
scoreboard players set $base.cf.t1_capacitor.rate mech_data 100
scoreboard players set $base.cf.t1_capacitor.rate_mu mech_data 125
scoreboard players set $base.cf.t1_capacitor.rate_eu mech_data 200
scoreboard players set $base.cf.t1_capacitor.rate_nu mech_data 125

# [0,2000000000] Capacity (no upgrade, machine upgrade, ender upgrade, nether upgrade)
scoreboard players set $base.cf.t1_capacitor.capacity mech_data 10000
scoreboard players set $base.cf.t1_capacitor.capacity_mu mech_data 12500
scoreboard players set $base.cf.t1_capacitor.capacity_eu mech_data 12500
scoreboard players set $base.cf.t1_capacitor.capacity_nu mech_data 20000


## Tier 2 Capacitor

# (4,8,12,16,20,24,28,32) Range
scoreboard players set $base.cf.t2_capacitor.range mech_data 16

# [0,2000000000] Transfer rate (no upgrade, machine upgrade, ender upgrade, nether upgrade)
scoreboard players set $base.cf.t2_capacitor.rate mech_data 400
scoreboard players set $base.cf.t2_capacitor.rate_mu mech_data 500
scoreboard players set $base.cf.t2_capacitor.rate_eu mech_data 800
scoreboard players set $base.cf.t2_capacitor.rate_nu mech_data 500

# [0,2000000000] Capacity (no upgrade, machine upgrade, ender upgrade, nether upgrade)
scoreboard players set $base.cf.t2_capacitor.capacity mech_data 32000
scoreboard players set $base.cf.t2_capacitor.capacity_mu mech_data 40000
scoreboard players set $base.cf.t2_capacitor.capacity_eu mech_data 40000
scoreboard players set $base.cf.t2_capacitor.capacity_nu mech_data 64000


## Tier 3 Capacitor

# (4,8,12,16,20,24,28,32) Range
scoreboard players set $base.cf.t3_capacitor.range mech_data 24

# [0,2000000000] Transfer rate (no upgrade, machine upgrade, ender upgrade, nether upgrade)
scoreboard players set $base.cf.t3_capacitor.rate mech_data 1000
scoreboard players set $base.cf.t3_capacitor.rate_mu mech_data 1250
scoreboard players set $base.cf.t3_capacitor.rate_eu mech_data 2000
scoreboard players set $base.cf.t3_capacitor.rate_nu mech_data 1250

# [0,2000000000] Capacity (no upgrade, machine upgrade, ender upgrade, nether upgrade)
scoreboard players set $base.cf.t3_capacitor.capacity mech_data 80000
scoreboard players set $base.cf.t3_capacitor.capacity_mu mech_data 100000
scoreboard players set $base.cf.t3_capacitor.capacity_eu mech_data 100000
scoreboard players set $base.cf.t3_capacitor.capacity_nu mech_data 160000
