
scoreboard players set $temp_0 mechanization.data 0

# [0,1] Disable block smelting effects from plasma weapons
execute unless score $gadgets.cf.plasma_smelt mechanization.data matches 0..1 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$gadgets.cf.plasma_smelt]","color":"green"}]

# [1,2000000000] Charging station speed. May be modified by upgrades.
execute unless score $gadgets.cf.charge_speed mechanization.data matches 1..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$gadgets.cf.charge_speed]","color":"green"}]

# [1,2000000000] Power needed to charge 1 shield point.
execute unless score $gadgets.cf.shield_power mechanization.data matches 1..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$gadgets.cf.shield_power]","color":"green"}]

# [1,2000000000] Power used to walk through walls, per tick (20 ticks per second).
execute unless score $gadgets.cf.wall_walk_power mechanization.data matches 1..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$gadgets.cf.wall_walk_power]","color":"green"}]

# [1,2000000000] Power used to fly, per tick (20 ticks per second).
execute unless score $gadgets.cf.flight_power mechanization.data matches 1..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$gadgets.cf.flight_power]","color":"green"}]

# [1,2000000000] Power used to slow fall, per second.
execute unless score $gadgets.cf.slow_fall_power mechanization.data matches 1..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$gadgets.cf.slow_fall_power]","color":"green"}]

# [1,2000000000] Power used to breath underwater, per second.
execute unless score $gadgets.cf.rebreather_power mechanization.data matches 1..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$gadgets.cf.rebreather_power]","color":"green"}]

# [1,2000000000] Power used for night vision, per second.
execute unless score $gadgets.cf.vision_power mechanization.data matches 1..2000000000 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Invalid Config Option "},{"text":"[$gadgets.cf.vision_power]","color":"green"}]

#load default if errors
execute if score $temp_0 mechanization.data matches 1 store success score $temp_0 mechanization.data run tellraw @a [{"text":"Found Errors in gadgets_config, loading default values.","color":"red"}]
execute if score $temp_0 mechanization.data matches 1 store success score $temp_0 mechanization.data run function mechanization:gadgets/config/default_config

