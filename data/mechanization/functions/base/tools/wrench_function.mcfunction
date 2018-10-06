scoreboard players set @s mech_data 0

#### vanilla blocks
execute if entity @s[scores={mech_data=0}] if block ~ ~ ~ #minecraft:logs run function mechanization:base/tools/wrench_rotate/logs
execute if entity @s[scores={mech_data=0}] if block ~ ~ ~ minecraft:piston run function mechanization:base/tools/wrench_rotate/piston
execute if entity @s[scores={mech_data=0}] if block ~ ~ ~ minecraft:sticky_piston run function mechanization:base/tools/wrench_rotate/sticky_piston
execute if entity @s[scores={mech_data=0}] if block ~ ~ ~ minecraft:observer run function mechanization:base/tools/wrench_rotate/observer
execute if entity @s[scores={mech_data=0}] if block ~ ~ ~ minecraft:end_rod run function mechanization:base/tools/wrench_rotate/end_rod
execute if entity @s[scores={mech_data=0}] if block ~ ~ ~ minecraft:ender_chest run function mechanization:base/tools/wrench_rotate/ender_chest
execute if entity @s[scores={mech_data=0}] if block ~ ~ ~ minecraft:carved_pumpkin run function mechanization:base/tools/wrench_rotate/carved_pumpkin
execute if entity @s[scores={mech_data=0}] if block ~ ~ ~ minecraft:jack_o_lantern run function mechanization:base/tools/wrench_rotate/jack_o_lantern
execute if entity @s[scores={mech_data=0}] if block ~ ~ ~ minecraft:repeater run function mechanization:base/tools/wrench_rotate/repeater
execute if entity @s[scores={mech_data=0}] if block ~ ~ ~ minecraft:comparator run function mechanization:base/tools/wrench_rotate/comparator

execute if entity @s[scores={mech_data=0}] if block ~ ~ ~ minecraft:chest unless block ~ ~ ~ minecraft:chest{Items:[{}]} run function mechanization:base/tools/wrench_rotate/chest
execute if entity @s[scores={mech_data=0}] if block ~ ~ ~ minecraft:trapped_chest unless block ~ ~ ~ minecraft:trapped_chest{Items:[{}]} run function mechanization:base/tools/wrench_rotate/trapped_chest
execute if entity @s[scores={mech_data=0}] if block ~ ~ ~ minecraft:furnace unless block ~ ~ ~ minecraft:furnace{Items:[{}]} run function mechanization:base/tools/wrench_rotate/furnace

execute if entity @s[scores={mech_data=0}] if block ~ ~ ~ minecraft:dispenser unless block ~ ~ ~ minecraft:dispenser{Items:[{}]} run function mechanization:base/tools/wrench_rotate/dispenser
execute if entity @s[scores={mech_data=0}] if block ~ ~ ~ minecraft:dropper unless block ~ ~ ~ minecraft:dropper{Items:[{}]} run function mechanization:base/tools/wrench_rotate/dropper
execute if entity @s[scores={mech_data=0}] if block ~ ~ ~ minecraft:hopper unless block ~ ~ ~ minecraft:hopper{Items:[{}]} run function mechanization:base/tools/wrench_rotate/hopper

#skulls
execute if entity @s[scores={mech_data=0}] if block ~ ~ ~ minecraft:player_head run function mechanization:base/tools/wrench_rotate/player_head
execute if entity @s[scores={mech_data=0}] if block ~ ~ ~ minecraft:creeper_head run function mechanization:base/tools/wrench_rotate/creeper_head
execute if entity @s[scores={mech_data=0}] if block ~ ~ ~ minecraft:wither_skeleton_skull run function mechanization:base/tools/wrench_rotate/wither_skeleton_skull
execute if entity @s[scores={mech_data=0}] if block ~ ~ ~ minecraft:skeleton_skull run function mechanization:base/tools/wrench_rotate/skeleton_skull
execute if entity @s[scores={mech_data=0}] if block ~ ~ ~ minecraft:zombie_head run function mechanization:base/tools/wrench_rotate/zombie_head
execute if entity @s[scores={mech_data=0}] if block ~ ~ ~ minecraft:dragon_head run function mechanization:base/tools/wrench_rotate/dragon_head

#banners
execute if entity @s[scores={mech_data=0}] if block ~ ~ ~ #minecraft:banners run function mechanization:base/tools/wrench_rotate/banners

#terracotta
execute if entity @s[scores={mech_data=0}] if block ~ ~ ~ #mechanization:glazed_terracotta run function mechanization:base/tools/wrench_rotate/glazed_terracotta

#mechanization devices
tag @e[tag=mech_energy_relay,distance=..0.5] remove mech_reciever
tag @e[tag=mech_energy_relay,distance=..0.5] remove mech_transmitter
execute as @e[tag=mech_energy_relay,distance=..0.5] run scoreboard players add @s mech_data 1
execute as @e[tag=mech_energy_relay,distance=..0.5,scores={mech_data=4..}] run scoreboard players set @s mech_data 0

tag @e[tag=mech_energy_relay,distance=..0.5,scores={mech_data=0}] add mech_reciever
tag @e[tag=mech_energy_relay,distance=..0.5,scores={mech_data=1..2}] add mech_transmitter
tag @e[tag=mech_energy_relay,distance=..0.5,scores={mech_data=3}] add mech_reciever
execute as @e[tag=mech_energy_relay,distance=..0.5,scores={mech_data=0}] run title @p actionbar ["",{"translate":"mech.text.function.base.tools.wrench_function.1","color":"dark_aqua","bold":false}]
execute as @e[tag=mech_energy_relay,distance=..0.5,scores={mech_data=1}] run title @p actionbar ["",{"translate":"mech.text.function.base.tools.wrench_function.2","color":"dark_aqua","bold":false}]
execute as @e[tag=mech_energy_relay,distance=..0.5,scores={mech_data=2}] run title @p actionbar ["",{"translate":"mech.text.function.base.tools.wrench_function.3","color":"dark_aqua","bold":false}]
execute as @e[tag=mech_energy_relay,distance=..0.5,scores={mech_data=3}] run title @p actionbar ["",{"translate":"mech.text.function.base.tools.wrench_function.4","color":"dark_aqua","bold":false}]

#rotate API
execute as @e[tag=mech_rotatable,distance=..0.75] run function mechanization:base/tools/wrench_function_rotate
