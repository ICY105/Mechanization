
#$ fluid_enrichment: % enrichment of fluid

# calculate output depleted uranium. Enriched uranium is 144-output
$scoreboard players set #enrichment mechanization.data $(fluid_enrichment)
execute unless score #enrichment mechanization.data matches 2..100 run return fail

scoreboard players operation #output mechanization.data = #enrichment mechanization.data
scoreboard players operation #output mechanization.data *= #cons.144 mechanization.data

scoreboard players add #enrichment mechanization.data 1
scoreboard players operation #output mechanization.data /= #enrichment mechanization.data

execute store result storage mechanization:temp obj.next_enrichment int 1 run scoreboard players get #enrichment mechanization.data
scoreboard players remove #enrichment mechanization.data 1

function mechanization:nuclear/blocks/centrifuge/recipes/m.output_enrichment_2 with storage mechanization:temp obj
