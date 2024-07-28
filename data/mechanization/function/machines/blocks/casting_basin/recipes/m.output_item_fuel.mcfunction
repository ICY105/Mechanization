
#$ fluid_enrichment: % enrichment of fluid

$scoreboard players set #enrichment mechanization.data $(fluid_enrichment)
execute unless score #enrichment mechanization.data matches 2..100 run return fail

loot replace block ~ ~ ~ container.21 loot mechanization:nuclear/uranium_fuel_rod
item modify block ~ ~ ~ container.12 mechanization:decrement_count
scoreboard players remove @s fluid.storage.0 1152

$data modify block ~ ~ ~ Items[{Slot:21b}].tag.display.Name set value '{"translate":"item.mechanization.uranium_fuel_rod","color":"dark_aqua","italic":false, "with":["$(fluid_enrichment)"]}'
execute store result block ~ ~ ~ Items[{Slot:21b}].tag.mechanization.enrichment int 1 run scoreboard players get #enrichment mechanization.data
