

# 20 tick clock
execute if score #timer.20 mechanization.data matches 0 as @e[type=minecraft:item_display,tag=mechanization.battery.t1] at @s run function mechanization:machines/blocks/battery/tier1_battery
execute if score #timer.20 mechanization.data matches 1 as @e[type=minecraft:item_display,tag=mechanization.battery.t2] at @s run function mechanization:machines/blocks/battery/tier2_battery
execute if score #timer.20 mechanization.data matches 2 as @e[type=minecraft:item_display,tag=mechanization.battery.t3] at @s run function mechanization:machines/blocks/battery/tier3_battery
execute if score #timer.20 mechanization.data matches 4 as @e[type=minecraft:item_display,tag=mechanization.energy_relay] at @s run function mechanization:machines/blocks/energy_relay/energy_relay
execute if score #timer.20 mechanization.data matches 5 as @e[type=minecraft:item_display,tag=mechanization.fluid_pipe] at @s run function mechanization:machines/blocks/fluid_pipe/fluid_pipe
execute if score #timer.20 mechanization.data matches 6 as @e[type=minecraft:item_display,tag=mechanization.steam_generator] at @s run function mechanization:machines/blocks/steam_generator/steam_generator
execute if score #timer.20 mechanization.data matches 7 as @e[type=minecraft:item_display,tag=mechanization.alloy_furnace] at @s run function mechanization:machines/blocks/alloy_furnace/alloy_furnace
execute if score #timer.20 mechanization.data matches 8 as @e[type=minecraft:item_display,tag=mechanization.arc_furnace] at @s run function mechanization:machines/blocks/arc_furnace/arc_furnace
execute if score #timer.20 mechanization.data matches 9 as @e[type=minecraft:item_display,tag=mechanization.casting_basin] at @s run function mechanization:machines/blocks/casting_basin/casting_basin
execute if score #timer.20 mechanization.data matches 10 as @e[type=minecraft:item_display,tag=mechanization.fluid_tank] at @s run function mechanization:machines/blocks/fluid_tank/fluid_tank
execute if score #timer.20 mechanization.data matches 11 as @e[type=minecraft:item_display,tag=mechanization.fluid_accumulator] at @s run function mechanization:machines/blocks/fluid_accumulator/fluid_accumulator
execute if score #timer.20 mechanization.data matches 12 as @e[type=minecraft:item_display,tag=mechanization.thermoelectric_generator] at @s run function mechanization:machines/blocks/thermoelectric_generator/thermoelectric_generator
execute if score #timer.20 mechanization.data matches 13 store result score #time mechanization.data run time query daytime
execute if score #timer.20 mechanization.data matches 13 if score #time mechanization.data matches 12000.. run scoreboard players remove #time mechanization.data 12000
execute if score #timer.20 mechanization.data matches 13 run scoreboard players remove #time mechanization.data 6000
execute if score #timer.20 mechanization.data matches 13 as @e[type=minecraft:item_display,tag=mechanization.solar_panel] at @s run function mechanization:machines/blocks/solar_panel/solar_panel
execute if score #timer.20 mechanization.data matches 14 as @e[type=minecraft:item_display,tag=mechanization.block_breaker] at @s run function mechanization:machines/blocks/block_breaker/block_breaker
execute if score #timer.20 mechanization.data matches 15 as @e[type=minecraft:item_display,tag=mechanization.teleporter] at @s run function mechanization:machines/blocks/teleporter/teleporter
execute if score #timer.20 mechanization.data matches 16 as @e[type=minecraft:item_display,tag=mechanization.reformer] at @s run function mechanization:machines/blocks/reformer/reformer
execute if score #timer.20 mechanization.data matches 17 as @e[type=minecraft:item_display,tag=mechanization.enchanting_station] at @s run function mechanization:machines/blocks/enchanting_station/enchanting_station
execute if score #timer.20 mechanization.data matches 18 as @e[type=minecraft:item_display,tag=mechanization.dimensional_generator] at @s run function mechanization:machines/blocks/dimensional_generator/dimensional_generator
execute if score #timer.20 mechanization.data matches 19 as @e[type=minecraft:item_display,tag=mechanization.bio_generator] at @s run function mechanization:machines/blocks/bio_generator/bio_generator
execute if score #timer.20 mechanization.data matches 0 as @e[type=minecraft:item_display,tag=mechanization.quarry] at @s run function mechanization:machines/blocks/quarry/quarry
execute if score #timer.20 mechanization.data matches 1 as @e[type=minecraft:item_display,tag=mechanization.electric_furnace] at @s run function mechanization:machines/blocks/electric_furnace/electric_furnace
execute if score #timer.20 mechanization.data matches 2 as @e[type=minecraft:item_display,tag=mechanization.grinder] at @s run function mechanization:machines/blocks/grinder/grinder

# 100 tick clock
execute if score #timer.100 mechanization.data matches 0 as @e[type=minecraft:item_display,tag=mechanization.cable] at @s unless block ~ ~ ~ minecraft:moving_piston run function mechanization:machines/blocks/cable/break
execute if score #timer.100 mechanization.data matches 1 as @e[type=minecraft:item_display,tag=mechanization.tree_feller] at @s run function mechanization:machines/blocks/tree_feller/tree_feller
execute if score #timer.100 mechanization.data matches 2 as @e[type=minecraft:item_display,tag=mechanization.auto_farm] at @s run function mechanization:machines/blocks/auto_farm/auto_farm
execute if score #timer.100 mechanization.data matches 3 as @e[type=minecraft:item_display,tag=mechanization.mob_grinder] at @s run function mechanization:machines/blocks/mob_grinder/mob_grinder
execute if score #timer.100 mechanization.data matches 3 as @e[type=minecraft:item_display,tag=mechanization.electric_lamp] at @s run function mechanization:machines/blocks/electric_lamp/electric_lamp
execute if score #timer.100 mechanization.data matches 4 as @e[type=minecraft:item_display,tag=mechanization.growth_accelerator] at @s run function mechanization:machines/blocks/growth_accelerator/growth_accelerator
execute if score #timer.100 mechanization.data matches 5 as @e[type=minecraft:item_display,tag=mechanization.auto_fisher] at @s run function mechanization:machines/blocks/fisher/fisher
execute if score #timer.100 mechanization.data matches 6 as @e[type=minecraft:item_display,tag=mechanization.spawner_controller] at @s run function mechanization:machines/blocks/spawner_controller/spawner_controller
