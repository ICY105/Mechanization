
# 2 tick clock
execute if score #timer.2 mechanization.data matches 0 as @e[type=#mechanization:item_frames,tag=mechanization.lightning_generator] at @s run function mechanization:machines/machines/lightning_generator

# 20 tick clock
execute if score #timer.20 mechanization.data matches 0 as @e[type=#mechanization:item_frames,tag=mechanization.battery.t1] at @s run function mechanization:machines/machines/battery/tier_1_battery
execute if score #timer.20 mechanization.data matches 1 as @e[type=#mechanization:item_frames,tag=mechanization.battery.t2] at @s run function mechanization:machines/machines/battery/tier_2_battery
execute if score #timer.20 mechanization.data matches 2 as @e[type=#mechanization:item_frames,tag=mechanization.battery.t3] at @s run function mechanization:machines/machines/battery/tier_3_battery
#execute if score #timer.20 mechanization.data matches 3 as @e[type=#mechanization:item_frames,tag=mechanization.battery.quantum] at @s run function mechanization:machines/machines/quantum_battery
execute if score #timer.20 mechanization.data matches 4 as @e[type=#mechanization:item_frames,tag=mechanization.energy_relay] at @s run function mechanization:machines/machines/relay/energy_relay
execute if score #timer.20 mechanization.data matches 5 as @e[type=#mechanization:item_frames,tag=mechanization.pipe] at @s run function mechanization:machines/machines/liquid_pipe/liquid_pipe
execute if score #timer.20 mechanization.data matches 6 as @e[type=#mechanization:item_frames,tag=mechanization.steam_generator] at @s run function mechanization:machines/machines/steam_generator/steam_generator
execute if score #timer.20 mechanization.data matches 7 as @e[type=#mechanization:item_frames,tag=mechanization.alloy_furnace] at @s run function mechanization:machines/machines/alloy_furnace/alloy_furnace
execute if score #timer.20 mechanization.data matches 8 as @e[type=#mechanization:item_frames,tag=mechanization.arc_furnace] at @s run function mechanization:machines/machines/arc_furnace/arc_furnace
execute if score #timer.20 mechanization.data matches 9 as @e[type=#mechanization:item_frames,tag=mechanization.casting_basin] at @s run function mechanization:machines/machines/casting_basin/casting_basin
execute if score #timer.20 mechanization.data matches 10 as @e[type=#mechanization:item_frames,tag=mechanization.liquid_tank] at @s run function mechanization:machines/machines/liquid_tank/liquid_tank
execute if score #timer.20 mechanization.data matches 11 as @e[type=#mechanization:item_frames,tag=mechanization.liquid_accumulator] at @s run function mechanization:machines/machines/liquid_accumulator/liquid_accumulator
execute if score #timer.20 mechanization.data matches 12 as @e[type=#mechanization:item_frames,tag=mechanization.thermoelectric_generator] at @s run function mechanization:machines/machines/thermoelectric_generator/thermoelectric_generator
execute if score #timer.20 mechanization.data matches 13 as @e[type=minecraft:armor_stand,tag=mechanization.solar_panel] at @s run function mechanization:machines/machines/solar_panel/solar_panel
execute if score #timer.20 mechanization.data matches 14 as @e[type=minecraft:marker,tag=mechanization.block_breaker] at @s run function mechanization:machines/machines/block_breaker/block_breaker
execute if score #timer.20 mechanization.data matches 15 as @e[type=#mechanization:item_frames,tag=mechanization.teleporter] at @s run function mechanization:machines/machines/teleporter/teleporter
execute if score #timer.20 mechanization.data matches 16 as @e[type=#mechanization:item_frames,tag=mechanization.reformer] at @s run function mechanization:machines/machines/reformer/reformer
execute if score #timer.20 mechanization.data matches 17 as @e[type=#mechanization:item_frames,tag=mechanization.enchanting_station] at @s run function mechanization:machines/machines/ench_station/ench_station
execute if score #timer.20 mechanization.data matches 18 as @e[type=#mechanization:item_frames,tag=mechanization.dimensional_generator] at @s run function mechanization:machines/machines/dimensional_generator/dimensional_generator
execute if score #timer.20 mechanization.data matches 19 as @e[type=#mechanization:item_frames,tag=mechanization.bio_gen] at @s run function mechanization:machines/machines/bio_generator/bio_generator
execute if score #timer.20 mechanization.data matches 0 as @e[type=#mechanization:item_frames,tag=mechanization.quarry] at @s run function mechanization:machines/machines/quarry/quarry
execute if score #timer.20 mechanization.data matches 1 as @e[type=#mechanization:item_frames,tag=mechanization.electric_furnace] at @s run function mechanization:machines/machines/electric_furnace
execute if score #timer.20 mechanization.data matches 2 as @e[type=#mechanization:item_frames,tag=mechanization.grinder] at @s run function mechanization:machines/machines/grinder/grinder

# 100 tick clock
execute if score #timer.100 mechanization.data matches 0 as @e[type=#mechanization:item_frames,tag=mechanization.cable] at @s unless block ~ ~ ~ minecraft:moving_piston run function mechanization:machines/machines/cable/break
execute if score #timer.100 mechanization.data matches 1 as @e[type=#mechanization:item_frames,tag=mechanization.tree_feller] at @s run function mechanization:machines/machines/tree_feller/tree_feller
execute as @e[type=armor_stand,tag=mechanization.tree_feller.model,tag=mechanization.active] run function mechanization:machines/machines/tree_feller/tree_feller_model
execute if score #timer.100 mechanization.data matches 2 as @e[type=#mechanization:item_frames,tag=mechanization.auto_farm] at @s run function mechanization:machines/machines/auto_farm/auto_farm
execute if score #timer.100 mechanization.data matches 3 as @e[type=#mechanization:item_frames,tag=mechanization.mob_grinder] at @s run function mechanization:machines/machines/mob_grinder/mob_grinder
execute if score #timer.100 mechanization.data matches 3 as @e[type=#mechanization:item_frames,tag=mechanization.electric_lamp] at @s run function mechanization:machines/machines/electric_lamp/electric_lamp
execute if score #timer.100 mechanization.data matches 4 as @e[type=#mechanization:item_frames,tag=mechanization.growth_accelerator] at @s run function mechanization:machines/machines/growth_accelerator/growth_accelerator
execute if score #timer.100 mechanization.data matches 5 as @e[type=#mechanization:item_frames,tag=mechanization.fisher] at @s run function mechanization:machines/machines/fisher/fisher
execute if score #timer.100 mechanization.data matches 6 as @e[type=minecraft:armor_stand,tag=mechanization.spawner_controller] at @s run function mechanization:machines/machines/spawner_controller
 