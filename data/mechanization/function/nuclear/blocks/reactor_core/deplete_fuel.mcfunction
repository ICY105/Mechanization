
loot replace block -30000000 0 3201 container.0 loot mechanization:nuclear/spent_fuel_rod
data modify storage mechanization:temp obj set from block -30000000 0 3201 Items[0]
execute store result storage mechanization:temp obj.components."minecraft:custom_data".mechanization.fuel int 1 run scoreboard players get #fuel mechanization.data
execute store result storage mechanization:temp obj.components."minecraft:custom_data".mechanization.enrichment int 1 run scoreboard players get @s mechanization.time

data modify entity @s item.components."minecraft:custom_data".fuel_rod set from storage mechanization:temp obj

tag @s remove mechanization.reactor_core.mox
tag @s remove mechanization.reactor_core.uranium
tag @s add mechanization.reactor_core.waste

scoreboard players set #count mechanization.data 0
scoreboard players set #enrichment mechanization.data 0
