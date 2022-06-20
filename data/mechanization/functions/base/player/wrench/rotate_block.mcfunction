
scoreboard players set #success mechanization.data 0

#### vanilla blocks
execute if score #success mechanization.data matches 0 if block ~ ~ ~ #minecraft:logs run function mechanization:base/player/wrench/rotate/logs
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:piston run function mechanization:base/player/wrench/rotate/piston
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:sticky_piston run function mechanization:base/player/wrench/rotate/sticky_piston
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:observer run function mechanization:base/player/wrench/rotate/observer
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:end_rod run function mechanization:base/player/wrench/rotate/end_rod
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:ender_chest run function mechanization:base/player/wrench/rotate/ender_chest
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:carved_pumpkin run function mechanization:base/player/wrench/rotate/carved_pumpkin
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:jack_o_lantern run function mechanization:base/player/wrench/rotate/jack_o_lantern
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:repeater run function mechanization:base/player/wrench/rotate/repeater
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:comparator run function mechanization:base/player/wrench/rotate/comparator
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:deepslate run function mechanization:base/player/wrench/rotate/deepslate

execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:chest run function mechanization:base/player/wrench/rotate/chest
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:trapped_chest run function mechanization:base/player/wrench/rotate/trapped_chest
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:furnace run function mechanization:base/player/wrench/rotate/furnace
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:smoker run function mechanization:base/player/wrench/rotate/smoker
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:blast_furnace run function mechanization:base/player/wrench/rotate/blast_furnace
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:barrel run function mechanization:base/player/wrench/rotate/barrel
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:loom run function mechanization:base/player/wrench/rotate/loom
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:stonecutter run function mechanization:base/player/wrench/rotate/stonecutter
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:grindstone run function mechanization:base/player/wrench/rotate/grindstone
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:bell[attachment=floor] run function mechanization:base/player/wrench/rotate/bell

execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:dispenser run function mechanization:base/player/wrench/rotate/dispenser
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:dropper run function mechanization:base/player/wrench/rotate/dropper
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:hopper run function mechanization:base/player/wrench/rotate/hopper

execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:beehive run function mechanization:base/player/wrench/rotate/beehive
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:bee_nest run function mechanization:base/player/wrench/rotate/bee_nest

#sign
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:oak_sign run function mechanization:base/player/wrench/rotate/oak_sign
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:spruce_sign run function mechanization:base/player/wrench/rotate/spruce_sign
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:birch_sign run function mechanization:base/player/wrench/rotate/birch_sign
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:jungle_sign run function mechanization:base/player/wrench/rotate/jungle_sign
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:acacia_sign run function mechanization:base/player/wrench/rotate/acacia_sign
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:dark_oak_sign run function mechanization:base/player/wrench/rotate/dark_oak_sign

#skulls
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:player_head run function mechanization:base/player/wrench/rotate/player_head
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:creeper_head run function mechanization:base/player/wrench/rotate/creeper_head
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:wither_skeleton_skull run function mechanization:base/player/wrench/rotate/wither_skeleton_skull
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:skeleton_skull run function mechanization:base/player/wrench/rotate/skeleton_skull
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:zombie_head run function mechanization:base/player/wrench/rotate/zombie_head
execute if score #success mechanization.data matches 0 if block ~ ~ ~ minecraft:dragon_head run function mechanization:base/player/wrench/rotate/dragon_head

#banners
execute if score #success mechanization.data matches 0 if block ~ ~ ~ #minecraft:banners run function mechanization:base/player/wrench/rotate/banners

#terracotta
execute if score #success mechanization.data matches 0 if block ~ ~ ~ #mechanization:glazed_terracotta run function mechanization:base/player/wrench/rotate/glazed_terracotta
