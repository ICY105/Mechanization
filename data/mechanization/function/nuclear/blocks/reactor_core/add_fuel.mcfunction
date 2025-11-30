
scoreboard players set #interact mechanization.data 1

execute if data entity @s item.components."minecraft:bundle_contents"[0] run return fail

item replace block -30000000 0 3201 container.0 from entity @p[tag=mechanization.interacted,distance=..12] weapon.mainhand
data modify entity @s item.components."minecraft:bundle_contents" set value []
data modify entity @s item.components."minecraft:bundle_contents" append from block -30000000 0 3201 Items[0]
item replace entity @p[tag=mechanization.interacted,distance=..12] weapon.mainhand with minecraft:air

execute if items block -30000000 0 3201 container.0 *[minecraft:custom_data~{mechanization:{id:"uranium_fuel_rod"}}] run tag @s add mechanization.reactor_core.uranium
execute if items block -30000000 0 3201 container.0 *[minecraft:custom_data~{mechanization:{id:"mox_fuel_rod"}}] run tag @s add mechanization.reactor_core.mox
execute if items block -30000000 0 3201 container.0 *[minecraft:custom_data~{mechanization:{id:"spent_fuel_rod"}}] run tag @s add mechanization.reactor_core.waste

scoreboard players set @s mechanization.time 0
execute if entity @s[tag=mechanization.reactor_core.uranium] store result score @s mechanization.time run data get block -30000000 0 3201 Items[0].components."minecraft:custom_data".mechanization.enrichment
execute if entity @s[tag=mechanization.reactor_core.mox] run scoreboard players set @s mechanization.time 5

execute store result score @s mechanization.fluid.out run data get block -30000000 0 3201 Items[0].components."minecraft:custom_data".mechanization.fuel_spent

function mechanization:nuclear/blocks/reactor_core/update_model
