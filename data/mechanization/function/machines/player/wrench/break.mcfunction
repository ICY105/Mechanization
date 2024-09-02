
execute if entity @s[tag=mechanization.quarry] run function mechanization:machines/blocks/quarry/break
execute if entity @s[tag=mechanization.grinder] run function mechanization:machines/blocks/grinder/break
execute if entity @s[tag=mechanization.fluid_pipe] run function mechanization:machines/blocks/fluid_pipe/break
execute if entity @s[tag=mechanization.reformer] run function mechanization:machines/blocks/reformer/break
execute if entity @s[tag=mechanization.cable] run function mechanization:machines/blocks/cable/break
execute if entity @s[tag=mechanization.auto_fisher] run function mechanization:machines/blocks/fisher/break
execute if entity @s[tag=mechanization.auto_farm] run function mechanization:machines/blocks/auto_farm/break
execute if entity @s[tag=mechanization.battery] run function mechanization:machines/blocks/battery/break
execute if entity @s[tag=mechanization.teleporter] run function mechanization:machines/blocks/teleporter/break
execute if entity @s[tag=mechanization.arc_furnace] run function mechanization:machines/blocks/arc_furnace/break
execute if entity @s[tag=mechanization.solar_panel] run function mechanization:machines/blocks/solar_panel/break
execute if entity @s[tag=mechanization.tree_feller] run function mechanization:machines/blocks/tree_feller/break
execute if entity @s[tag=mechanization.fluid_tank] run function mechanization:machines/blocks/fluid_tank/break
execute if entity @s[tag=mechanization.mob_grinder] run function mechanization:machines/blocks/mob_grinder/break
execute if entity @s[tag=mechanization.energy_relay] run function mechanization:machines/blocks/energy_relay/break
execute if entity @s[tag=mechanization.electric_lamp] run function mechanization:machines/blocks/electric_lamp/break
execute if entity @s[tag=mechanization.casting_basin] run function mechanization:machines/blocks/casting_basin/break
execute if entity @s[tag=mechanization.bio_generator] run function mechanization:machines/blocks/bio_generator/break
execute if entity @s[tag=mechanization.block_breaker] run function mechanization:machines/blocks/block_breaker/break
execute if entity @s[tag=mechanization.alloy_furnace] run function mechanization:machines/blocks/alloy_furnace/break
execute if entity @s[tag=mechanization.steam_generator] run function mechanization:machines/blocks/steam_generator/break
execute if entity @s[tag=mechanization.electric_furnace] run function mechanization:machines/blocks/electric_furnace/break
execute if entity @s[tag=mechanization.liquid_accumulator] run function mechanization:machines/blocks/liquid_accumulator/break
execute if entity @s[tag=mechanization.growth_accelerator] run function mechanization:machines/blocks/growth_accelerator/break
execute if entity @s[tag=mechanization.spawner_controller] run function mechanization:machines/blocks/spawner_controller/break
execute if entity @s[tag=mechanization.enchanting_station] run function mechanization:machines/blocks/enchanting_station/break
execute if entity @s[tag=mechanization.lightning_generator] run function mechanization:machines/blocks/lightning_generator/break
execute if entity @s[tag=mechanization.dimensional_generator] run function mechanization:machines/blocks/dimensional_generator/break
execute if entity @s[tag=mechanization.thermoelectric_generator] run function mechanization:machines/blocks/thermoelectric_generator/break

# Models
kill @s[tag=mechanization.solar_panel.model]
execute positioned ~ ~-0.5 ~ run kill @e[tag=mechanization.tree_feller.model,distance=..0.75]
