
tag @s remove mechanization.reactor_core.uranium
tag @s remove mechanization.reactor_core.mox
tag @s remove mechanization.reactor_core.waste
execute if data entity @s item.components."minecraft:bundle_contents"[0].components."minecraft:custom_data".mechanization{id:"uranium_fuel_rod"} run tag @s add mechanization.reactor_core.uranium
execute if data entity @s item.components."minecraft:bundle_contents"[0].components."minecraft:custom_data".mechanization{id:"mox_fuel_rod"} run tag @s add mechanization.reactor_core.mox
execute if data entity @s item.components."minecraft:bundle_contents"[0].components."minecraft:custom_data".mechanization{id:"spent_fuel_rod"} run tag @s add mechanization.reactor_core.waste

function mechanization:nuclear/blocks/reactor_core/update_model
scoreboard players operation @s mechanization.time = #enrichment mechanization.data
scoreboard players operation @s mechanization.fluid.out = #count mechanization.data
