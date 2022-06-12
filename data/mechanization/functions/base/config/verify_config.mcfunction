
scoreboard players set #failed mechanization.data 0

### Ore Generation

# [0,1] Use small world height generation (0-255).
execute unless score #base.cf.small_world mechanization.data matches 0..1 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#base.cf.ext_height]","color":"green"}]

# [0,32] Veins of Tin per Chunk
execute unless score #base.cf.tin_rarity mechanization.data matches 0..32 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#base.cf.tin_rarity]","color":"green"}]

# [0,32] Veins of Titanium per Chunk
execute unless score #base.cf.titanium_rarity mechanization.data matches 0..32 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#base.cf.titanium_rarity]","color":"green"}]

# [0,32] Veins of Uranium per Chunk
execute unless score #base.cf.uranium_rarity mechanization.data matches 0..32 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#base.cf.uranium_rarity]","color":"green"}]

# [0,32] Veins of Additional Emerald ore per Chunk (not biome restricted)
execute unless score #base.cf.emerald_rarity mechanization.data matches 0..32 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#base.cf.emerald_rarity]","color":"green"}]

### Machines

# [0,2000000000] Tier 1 battery Capacity (no upgrade, machine upgrade, ender upgrade, nether upgrade)
execute unless score #base.cf.t1_battery.capacity mechanization.data matches 0..2000000000 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#base.cf.t1_battery.capacity]","color":"green"}]
execute unless score #base.cf.t1_battery.capacity.machine_upgrade mechanization.data matches 0..2000000000 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#base.cf.t1_battery.capacity.machine_upgrade]","color":"green"}]
execute unless score #base.cf.t1_battery.capacity.ender_upgrade mechanization.data matches 0..2000000000 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#base.cf.t1_battery.capacity.ender_upgrade]","color":"green"}]
execute unless score #base.cf.t1_battery.capacity.nether_upgrade mechanization.data matches 0..2000000000 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#base.cf.t1_battery.capacity.nether_upgrade]","color":"green"}]

# [0,2000000000] Tier 2 battery Capacity (no upgrade, machine upgrade, ender upgrade, nether upgrade)
execute unless score #base.cf.t2_battery.capacity mechanization.data matches 0..2000000000 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#base.cf.t2_battery.capacity]","color":"green"}]
execute unless score #base.cf.t2_battery.capacity.machine_upgrade mechanization.data matches 0..2000000000 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#base.cf.t2_battery.capacity.machine_upgrade]","color":"green"}]
execute unless score #base.cf.t2_battery.capacity.ender_upgrade mechanization.data matches 0..2000000000 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#base.cf.t2_battery.capacity.ender_upgrade]","color":"green"}]
execute unless score #base.cf.t2_battery.capacity.nether_upgrade mechanization.data matches 0..2000000000 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#base.cf.t2_battery.capacity.nether_upgrade]","color":"green"}]

# [0,2000000000] Tier 3 battery Capacity (no upgrade, machine upgrade, ender upgrade, nether upgrade)
execute unless score #base.cf.t3_battery.capacity mechanization.data matches 0..2000000000 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#base.cf.t3_battery.capacity]","color":"green"}]
execute unless score #base.cf.t3_battery.capacity.machine_upgrade mechanization.data matches 0..2000000000 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#base.cf.t3_battery.capacity.machine_upgrade]","color":"green"}]
execute unless score #base.cf.t3_battery.capacity.ender_upgrade mechanization.data matches 0..2000000000 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#base.cf.t3_battery.capacity.ender_upgrade]","color":"green"}]
execute unless score #base.cf.t3_battery.capacity.nether_upgrade mechanization.data matches 0..2000000000 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#base.cf.t3_battery.capacity.nether_upgrade]","color":"green"}]

# [0,2000000000] Quantum Battery Capacity (no upgrade, machine upgrade, ender upgrade, nether upgrade)
execute unless score #base.cf.qu_battery.capacity mechanization.data matches 0..2000000000 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#base.cf.qu_battery.capacity]","color":"green"}]
execute unless score #base.cf.qu_battery.capacity.machine_upgrade mechanization.data matches 0..2000000000 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#base.cf.qu_battery.capacity.machine_upgrade]","color":"green"}]
execute unless score #base.cf.qu_battery.capacity.ender_upgrade mechanization.data matches 0..2000000000 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#base.cf.qu_battery.capacity.ender_upgrade]","color":"green"}]
execute unless score #base.cf.qu_battery.capacity.nether_upgrade mechanization.data matches 0..2000000000 store success score #failed mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[#base.cf.qu_battery.capacity.nether_upgrade]","color":"green"}]

### load default if errors
execute if score #failed mechanization.data matches 1 run tellraw @a [{"text":"Found Errors in base_config, loading default values.","color":"red"}]
execute if score #failed mechanization.data matches 1 run function mechanization:base/config/default_config
