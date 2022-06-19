
# To alter the value of a setting, change the number at the end of the line. For example:
#   scoreboard players set #base.cf.tin_rarity mechanization.data 8
# Could be changed to:                                   V
#   scoreboard players set #base.cf.tin_rarity mechanization.data 24
# This would greatly increase how much tin ore generates per chunk

### Ore Generation

# [0,1] Use small world height generation (0-255).
scoreboard players set #base.cf.small_world mechanization.data 0

# [0,32] Veins of Tin per Chunk
scoreboard players set #base.cf.tin_rarity mechanization.data 8

# [0,32] Veins of Titanium per Chunk
scoreboard players set #base.cf.titanium_rarity mechanization.data 1

# [0,32] Veins of Uranium per Chunk
scoreboard players set #base.cf.uranium_rarity mechanization.data 2

# [0,32] Veins of Additional Emerald ore per Chunk (not biome restricted)
scoreboard players set #base.cf.emerald_rarity mechanization.data 1

### Machines

# [1,2000000000] Tier 1 Battery Capacity
scoreboard players set #base.cf.t1_battery.capacity mechanization.data 50000
scoreboard players set #base.cf.t1_battery.capacity.machine_upgrade mechanization.data 62500
scoreboard players set #base.cf.t1_battery.capacity.ender_upgrade mechanization.data 62500
scoreboard players set #base.cf.t1_battery.capacity.nether_upgrade mechanization.data 100000

# [1,2000000000] Tier 2 Battery capacity
scoreboard players set #base.cf.t2_battery.capacity mechanization.data 200000
scoreboard players set #base.cf.t2_battery.capacity.machine_upgrade mechanization.data 250000
scoreboard players set #base.cf.t2_battery.capacity.ender_upgrade mechanization.data 250000
scoreboard players set #base.cf.t2_battery.capacity.nether_upgrade mechanization.data 400000

# [1,2000000000] Tier 3 Battery Capacity
scoreboard players set #base.cf.t3_battery.capacity mechanization.data 500000
scoreboard players set #base.cf.t3_battery.capacity.machine_upgrade mechanization.data 62500
scoreboard players set #base.cf.t3_battery.capacity.ender_upgrade mechanization.data 6250000
scoreboard players set #base.cf.t3_battery.capacity.nether_upgrade mechanization.data 1000000

# [1,2000000000] Quantum Battery Capacity
scoreboard players set #base.cf.qu_battery.capacity mechanization.data 200000
scoreboard players set #base.cf.qu_battery.capacity.machine_upgrade mechanization.data 250000
scoreboard players set #base.cf.qu_battery.capacity.ender_upgrade mechanization.data 250000
scoreboard players set #base.cf.qu_battery.capacity.nether_upgrade mechanization.data 400000

# [1,2000000000] Copper cable transfer rate
scoreboard players set #base.cf.copper_cable.transfer_rate mechanization.data 256

# [1,2000000000] Conductive Cable cable transfer rate
scoreboard players set #base.cf.conductive_cable.transfer_rate mechanization.data 2048

# [1,2000000000] Super Conductive cable transfer rate
scoreboard players set #base.cf.super_conductive_cable.transfer_rate mechanization.data 2000000000


