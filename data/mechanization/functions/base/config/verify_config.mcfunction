
scoreboard players set $temp_0 mechanization.data 0

### Ore Generation

# [0,1] Use 1.18 Generation (changes ore gen to take advantage of extended world height).
execute unless score $base.cf.ext_height mechanization.data matches 0..1 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.ext_height]","color":"green"}]

# [0,32] Veins of Tin per Chunk
execute unless score $base.cf.tin_rarity mechanization.data matches 0..32 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.tin_rarity]","color":"green"}]

# [0,32] Veins of Titanium per Chunk
execute unless score $base.cf.titanium_rarity mechanization.data matches 0..32 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.titanium_rarity]","color":"green"}]

# [0,32] Veins of Uranium per Chunk
execute unless score $base.cf.uranium_rarity mechanization.data matches 0..32 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.uranium_rarity]","color":"green"}]

# [0,32] Veins of Additional Emerald ore per Chunk (not biome restricted)
execute unless score $base.cf.emerald_rarity mechanization.data matches 0..32 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.emerald_rarity]","color":"green"}]

### Machines

## Tier 1 battery

# (4,8,12,16,20,24,28,32) Range
execute unless score $base.cf.t1_battery.range mechanization.data matches 4..32 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t1_battery.range]","color":"green"}]

# [0,2000000000] Transfer rate (no upgrade, machine upgrade, ender upgrade, nether upgrade)
execute unless score $base.cf.t1_battery.rate mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t1_battery.rate]","color":"green"}]
execute unless score $base.cf.t1_battery.rate_mu mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t1_battery.rate_mu]","color":"green"}]
execute unless score $base.cf.t1_battery.rate_eu mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t1_battery.rate_eu]","color":"green"}]
execute unless score $base.cf.t1_battery.rate_nu mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t1_battery.rate_nu]","color":"green"}]

# [0,2000000000] Capacity (no upgrade, machine upgrade, ender upgrade, nether upgrade)
execute unless score $base.cf.t1_battery.capacity mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t1_battery.capacity]","color":"green"}]
execute unless score $base.cf.t1_battery.capacity_mu mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t1_battery.capacity_mu]","color":"green"}]
execute unless score $base.cf.t1_battery.capacity_eu mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t1_battery.capacity_eu]","color":"green"}]
execute unless score $base.cf.t1_battery.capacity_nu mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t1_battery.capacity_nu]","color":"green"}]


## Tier 2 battery

# (4,8,12,16,20,24,28,32) Range
execute unless score $base.cf.t2_battery.range mechanization.data matches 4..32 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t2_battery.range]","color":"green"}]

# [0,2000000000] Transfer rate (no upgrade, machine upgrade, ender upgrade, nether upgrade)
execute unless score $base.cf.t2_battery.rate mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t2_battery.rate]","color":"green"}]
execute unless score $base.cf.t2_battery.rate_mu mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t2_battery.rate_mu]","color":"green"}]
execute unless score $base.cf.t2_battery.rate_eu mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t2_battery.rate_eu]","color":"green"}]
execute unless score $base.cf.t2_battery.rate_nu mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t2_battery.rate_nu]","color":"green"}]

# [0,2000000000] Capacity (no upgrade, machine upgrade, ender upgrade, nether upgrade)
execute unless score $base.cf.t2_battery.capacity mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t2_battery.capacity]","color":"green"}]
execute unless score $base.cf.t2_battery.capacity_mu mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t2_battery.capacity_mu]","color":"green"}]
execute unless score $base.cf.t2_battery.capacity_eu mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t2_battery.capacity_eu]","color":"green"}]
execute unless score $base.cf.t2_battery.capacity_nu mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t2_battery.capacity_nu]","color":"green"}]


## Tier 3 battery

# (4,8,12,16,20,24,28,32) Range
execute unless score $base.cf.t3_battery.range mechanization.data matches 4..32 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t3_battery.range]","color":"green"}]

# [0,2000000000] Transfer rate (no upgrade, machine upgrade, ender upgrade, nether upgrade)
execute unless score $base.cf.t3_battery.rate mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t3_battery.rate]","color":"green"}]
execute unless score $base.cf.t3_battery.rate_mu mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t3_battery.rate_mu]","color":"green"}]
execute unless score $base.cf.t3_battery.rate_eu mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t3_battery.rate_eu]","color":"green"}]
execute unless score $base.cf.t3_battery.rate_nu mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t3_battery.rate_nu]","color":"green"}]

# [0,2000000000] Capacity (no upgrade, machine upgrade, ender upgrade, nether upgrade)
execute unless score $base.cf.t3_battery.capacity mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t3_battery.capacity]","color":"green"}]
execute unless score $base.cf.t3_battery.capacity_mu mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t3_battery.capacity_mu]","color":"green"}]
execute unless score $base.cf.t3_battery.capacity_eu mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t3_battery.capacity_eu]","color":"green"}]
execute unless score $base.cf.t3_battery.capacity_nu mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t3_battery.capacity_nu]","color":"green"}]


## Quantum battery

# (4,8,12,16,20,24,28,32) Range
execute unless score $base.cf.qu_battery.range mechanization.data matches 4..32 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.qu_battery.range]","color":"green"}]

# [0,2000000000] Transfer rate (no upgrade, machine upgrade, ender upgrade, nether upgrade)
execute unless score $base.cf.qu_battery.rate mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.qu_battery.rate]","color":"green"}]
execute unless score $base.cf.qu_battery.rate_mu mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.qu_battery.rate_mu]","color":"green"}]
execute unless score $base.cf.qu_battery.rate_eu mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.qu_battery.rate_eu]","color":"green"}]
execute unless score $base.cf.qu_battery.rate_nu mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.qu_battery.rate_nu]","color":"green"}]

# [0,2000000000] Capacity (no upgrade, machine upgrade, ender upgrade, nether upgrade)
execute unless score $base.cf.qu_battery.capacity mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.qu_battery.capacity]","color":"green"}]
execute unless score $base.cf.qu_battery.capacity_mu mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.qu_battery.capacity_mu]","color":"green"}]
execute unless score $base.cf.qu_battery.capacity_eu mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.qu_battery.capacity_eu]","color":"green"}]
execute unless score $base.cf.qu_battery.capacity_nu mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.qu_battery.capacity_nu]","color":"green"}]


## Tier 1 Capacitor

# (4,8,12,16,20,24,28,32) Range
execute unless score $base.cf.t1_capacitor.range mechanization.data matches 4..32 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t1_capacitor.range]","color":"green"}]

# [0,2000000000] Transfer rate (no upgrade, machine upgrade, ender upgrade, nether upgrade)
execute unless score $base.cf.t1_capacitor.rate mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t1_capacitor.rate]","color":"green"}]
execute unless score $base.cf.t1_capacitor.rate_mu mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t1_capacitor.rate_mu]","color":"green"}]
execute unless score $base.cf.t1_capacitor.rate_eu mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t1_capacitor.rate_eu]","color":"green"}]
execute unless score $base.cf.t1_capacitor.rate_nu mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t1_capacitor.rate_nu]","color":"green"}]

# [0,2000000000] Capacity (no upgrade, machine upgrade, ender upgrade, nether upgrade)
execute unless score $base.cf.t1_capacitor.capacity mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t1_capacitor.capacity]","color":"green"}]
execute unless score $base.cf.t1_capacitor.capacity_mu mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t1_capacitor.capacity_mu]","color":"green"}]
execute unless score $base.cf.t1_capacitor.capacity_eu mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t1_capacitor.capacity_eu]","color":"green"}]
execute unless score $base.cf.t1_capacitor.capacity_nu mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t1_capacitor.capacity_nu]","color":"green"}]


## Tier 2 Capacitor

# (4,8,12,16,20,24,28,32) Range
execute unless score $base.cf.t2_capacitor.range mechanization.data matches 4..32 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t2_capacitor.range]","color":"green"}]

# [0,2000000000] Transfer rate (no upgrade, machine upgrade, ender upgrade, nether upgrade)
execute unless score $base.cf.t2_capacitor.rate mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t2_capacitor.rate]","color":"green"}]
execute unless score $base.cf.t2_capacitor.rate_mu mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t2_capacitor.rate_mu]","color":"green"}]
execute unless score $base.cf.t2_capacitor.rate_eu mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t2_capacitor.rate_eu]","color":"green"}]
execute unless score $base.cf.t2_capacitor.rate_nu mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t2_capacitor.rate_nu]","color":"green"}]

# [0,2000000000] Capacity (no upgrade, machine upgrade, ender upgrade, nether upgrade)
execute unless score $base.cf.t2_capacitor.capacity mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t2_capacitor.capacity]","color":"green"}]
execute unless score $base.cf.t2_capacitor.capacity_mu mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t2_capacitor.capacity_mu]","color":"green"}]
execute unless score $base.cf.t2_capacitor.capacity_eu mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t2_capacitor.capacity_eu]","color":"green"}]
execute unless score $base.cf.t2_capacitor.capacity_nu mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t2_capacitor.capacity_nu]","color":"green"}]


## Tier 3 Capacitor

# (4,8,12,16,20,24,28,32) Range
execute unless score $base.cf.t3_capacitor.range mechanization.data matches 4..32 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t3_capacitor.range]","color":"green"}]

# [0,2000000000] Transfer rate (no upgrade, machine upgrade, ender upgrade, nether upgrade)
execute unless score $base.cf.t3_capacitor.rate mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t3_capacitor.rate]","color":"green"}]
execute unless score $base.cf.t3_capacitor.rate_mu mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t3_capacitor.rate_mu]","color":"green"}]
execute unless score $base.cf.t3_capacitor.rate_eu mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t3_capacitor.rate_eu]","color":"green"}]
execute unless score $base.cf.t3_capacitor.rate_nu mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t3_capacitor.rate_nu]","color":"green"}]

# [0,2000000000] Capacity (no upgrade, machine upgrade, ender upgrade, nether upgrade)
execute unless score $base.cf.t3_capacitor.capacity mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t3_capacitor.capacity]","color":"green"}]
execute unless score $base.cf.t3_capacitor.capacity_mu mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t3_capacitor.capacity_mu]","color":"green"}]
execute unless score $base.cf.t3_capacitor.capacity_eu mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t3_capacitor.capacity_eu]","color":"green"}]
execute unless score $base.cf.t3_capacitor.capacity_nu mechanization.data matches 0..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t3_capacitor.capacity_nu]","color":"green"}]


#load default if errors
execute if score $temp_0 mechanization.data matches 1 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Found Errors in base_config, loading default values.","color":"red"}]
execute if score $temp_0 mechanization.data matches 1 store success score $temp_0 mechanization.data run function mechanization:base/config/default_config
