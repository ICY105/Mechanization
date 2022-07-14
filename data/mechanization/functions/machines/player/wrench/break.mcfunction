
execute if entity @s[tag=mechanization.quarry] run function mechanization:machines/machines/quarry/break
execute if entity @s[tag=mechanization.grinder] run function mechanization:machines/machines/grinder/break
execute if entity @s[tag=mechanization.pipe] run function mechanization:machines/machines/liquid_pipe/break
execute if entity @s[tag=mechanization.reformer] run function mechanization:machines/machines/reformer/break
execute if entity @s[tag=mechanization.cable] run function mechanization:machines/machines/cable/break
execute if entity @s[tag=mechanization.auto_fisher] run function mechanization:machines/machines/fisher/break
execute if entity @s[tag=mechanization.auto_farm] run function mechanization:machines/machines/auto_farm/break
execute if entity @s[tag=mechanization.battery] run function mechanization:machines/machines/battery/break
execute if entity @s[tag=mechanization.teleporter] run function mechanization:machines/machines/teleporter/break
execute if entity @s[tag=mechanization.arc_furnace] run function mechanization:machines/machines/arc_furnace/break
execute if entity @s[tag=mechanization.solar_panel] run function mechanization:machines/machines/solar_panel/break
execute if entity @s[tag=mechanization.tree_feller] run function mechanization:machines/machines/tree_feller/break
execute if entity @s[tag=mechanization.liquid_tank] run function mechanization:machines/machines/liquid_tank/break
execute if entity @s[tag=mechanization.mob_grinder] run function mechanization:machines/machines/mob_grinder/break
execute if entity @s[tag=mechanization.energy_relay] run function mechanization:machines/machines/energy_relay/break
execute if entity @s[tag=mechanization.electric_lamp] run function mechanization:machines/machines/electric_lamp/break
execute if entity @s[tag=mechanization.casting_basin] run function mechanization:machines/machines/casting_basin/break
execute if entity @s[tag=mechanization.bio_generator] run function mechanization:machines/machines/bio_generator/break
execute if entity @s[tag=mechanization.block_breaker] run function mechanization:machines/machines/block_breaker/break
execute if entity @s[tag=mechanization.alloy_furnace] run function mechanization:machines/machines/alloy_furnace/break
execute if entity @s[tag=mechanization.steam_generator] run function mechanization:machines/machines/steam_generator/break
execute if entity @s[tag=mechanization.electric_furnace] run function mechanization:machines/machines/electric_furnace/break
execute if entity @s[tag=mechanization.liquid_accumulator] run function mechanization:machines/machines/liquid_accumulator/break
execute if entity @s[tag=mechanization.growth_accelerator] run function mechanization:machines/machines/growth_accelerator/break
execute if entity @s[tag=mechanization.spawner_controller] run function mechanization:machines/machines/spawner_controller/break
execute if entity @s[tag=mechanization.enchanting_station] run function mechanization:machines/machines/enchanting_station/break
execute if entity @s[tag=mechanization.lightning_generator] run function mechanization:machines/machines/lightning_generator/break
execute if entity @s[tag=mechanization.dimensional_generator] run function mechanization:machines/machines/dimensional_generator/break
execute if entity @s[tag=mechanization.thermoelectric_generator] run function mechanization:machines/machines/thermoelectric_generator/break

# Models
kill @s[tag=mechanization.solar_panel.model]
execute positioned ~ ~-0.5 ~ run kill @e[tag=mechanization.tree_feller.model,distance=..0.75]
