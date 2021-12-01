
scoreboard players set $temp_0 mech_data 0

# [0,1] Use scoreboard backup systems. This will restore certain data lost do to corruption or updates.
# Disabling can improve performance but may result in loss of data- take backups!
execute unless score $base.cf.backup mech_data matches 0..1 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.backup]","color":"green"}]

### Ore Generation

# [0,1] Use small world height generation (0-255).
execute unless score $base.cf.small_world mech_data matches 0..1 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.ext_height]","color":"green"}]

# [0,32] Veins of Tin per Chunk
execute unless score $base.cf.tin_rarity mech_data matches 0..32 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.tin_rarity]","color":"green"}]

# [0,32] Veins of Titanium per Chunk
execute unless score $base.cf.titanium_rarity mech_data matches 0..32 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.titanium_rarity]","color":"green"}]

# [0,32] Veins of Uranium per Chunk
execute unless score $base.cf.uranium_rarity mech_data matches 0..32 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.uranium_rarity]","color":"green"}]

# [0,32] Veins of Additional Emerald ore per Chunk (not biome restricted)
execute unless score $base.cf.emerald_rarity mech_data matches 0..32 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.emerald_rarity]","color":"green"}]

### Machines

# [0,2000000000] Tier 1 battery Capacity (no upgrade, machine upgrade, ender upgrade, nether upgrade)
execute unless score $base.cf.t1_battery.capacity mech_data matches 0..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t1_battery.capacity]","color":"green"}]
execute unless score $base.cf.t1_battery.capacity_mu mech_data matches 0..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t1_battery.capacity_mu]","color":"green"}]
execute unless score $base.cf.t1_battery.capacity_eu mech_data matches 0..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t1_battery.capacity_eu]","color":"green"}]
execute unless score $base.cf.t1_battery.capacity_nu mech_data matches 0..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t1_battery.capacity_nu]","color":"green"}]

# [0,2000000000] Tier 2 battery Capacity (no upgrade, machine upgrade, ender upgrade, nether upgrade)
execute unless score $base.cf.t2_battery.capacity mech_data matches 0..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t2_battery.capacity]","color":"green"}]
execute unless score $base.cf.t2_battery.capacity_mu mech_data matches 0..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t2_battery.capacity_mu]","color":"green"}]
execute unless score $base.cf.t2_battery.capacity_eu mech_data matches 0..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t2_battery.capacity_eu]","color":"green"}]
execute unless score $base.cf.t2_battery.capacity_nu mech_data matches 0..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t2_battery.capacity_nu]","color":"green"}]

# [0,2000000000] Tier 3 battery Capacity (no upgrade, machine upgrade, ender upgrade, nether upgrade)
execute unless score $base.cf.t3_battery.capacity mech_data matches 0..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t3_battery.capacity]","color":"green"}]
execute unless score $base.cf.t3_battery.capacity_mu mech_data matches 0..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t3_battery.capacity_mu]","color":"green"}]
execute unless score $base.cf.t3_battery.capacity_eu mech_data matches 0..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t3_battery.capacity_eu]","color":"green"}]
execute unless score $base.cf.t3_battery.capacity_nu mech_data matches 0..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.t3_battery.capacity_nu]","color":"green"}]

# [0,2000000000] Quantum Battery Capacity (no upgrade, machine upgrade, ender upgrade, nether upgrade)
execute unless score $base.cf.qu_battery.capacity mech_data matches 0..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.qu_battery.capacity]","color":"green"}]
execute unless score $base.cf.qu_battery.capacity_mu mech_data matches 0..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.qu_battery.capacity_mu]","color":"green"}]
execute unless score $base.cf.qu_battery.capacity_eu mech_data matches 0..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.qu_battery.capacity_eu]","color":"green"}]
execute unless score $base.cf.qu_battery.capacity_nu mech_data matches 0..2000000000 store success score $temp_0 mech_data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$base.cf.qu_battery.capacity_nu]","color":"green"}]

### load default if errors
execute if score $temp_0 mech_data matches 1 store success score $temp_0 mech_data run tellraw @a [{"text":"Found Errors in base_config, loading default values.","color":"red"}]
execute if score $temp_0 mech_data matches 1 store success score $temp_0 mech_data run function mechanization:base/config/default_config
