
scoreboard players set in_0 mech_data 0

#### vanilla blocks
execute if score in_0 mech_data matches 0 if block ~ ~ ~ #minecraft:logs run function mechanization:base/tools/wrench_rotate/logs
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:piston run function mechanization:base/tools/wrench_rotate/piston
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:sticky_piston run function mechanization:base/tools/wrench_rotate/sticky_piston
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:observer run function mechanization:base/tools/wrench_rotate/observer
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:end_rod run function mechanization:base/tools/wrench_rotate/end_rod
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:ender_chest run function mechanization:base/tools/wrench_rotate/ender_chest
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:carved_pumpkin run function mechanization:base/tools/wrench_rotate/carved_pumpkin
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:jack_o_lantern run function mechanization:base/tools/wrench_rotate/jack_o_lantern
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:repeater run function mechanization:base/tools/wrench_rotate/repeater
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:comparator run function mechanization:base/tools/wrench_rotate/comparator

execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:chest run function mechanization:base/tools/wrench_rotate/chest
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:trapped_chest run function mechanization:base/tools/wrench_rotate/trapped_chest
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:furnace run function mechanization:base/tools/wrench_rotate/furnace

execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:dispenser run function mechanization:base/tools/wrench_rotate/dispenser
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:dropper run function mechanization:base/tools/wrench_rotate/dropper
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:hopper run function mechanization:base/tools/wrench_rotate/hopper

#skulls
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:player_head run function mechanization:base/tools/wrench_rotate/player_head
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:creeper_head run function mechanization:base/tools/wrench_rotate/creeper_head
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:wither_skeleton_skull run function mechanization:base/tools/wrench_rotate/wither_skeleton_skull
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:skeleton_skull run function mechanization:base/tools/wrench_rotate/skeleton_skull
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:zombie_head run function mechanization:base/tools/wrench_rotate/zombie_head
execute if score in_0 mech_data matches 0 if block ~ ~ ~ minecraft:dragon_head run function mechanization:base/tools/wrench_rotate/dragon_head

#banners
execute if score in_0 mech_data matches 0 if block ~ ~ ~ #minecraft:banners run function mechanization:base/tools/wrench_rotate/banners

#terracotta
execute if score in_0 mech_data matches 0 if block ~ ~ ~ #mechanization:glazed_terracotta run function mechanization:base/tools/wrench_rotate/glazed_terracotta
