
advancement revoke @s only mechanization:triggers/drink_liquid_vial
advancement revoke @s only mechanization:triggers/drink_liquid_bucket
advancement revoke @s only mechanization:triggers/drink_liquid_potion

#give custom
execute if data entity @s[gamemode=!creative] SelectedItem.tag.mechanization{id:"bucket"} run give @s minecraft:bucket
execute if data entity @s[gamemode=!creative] SelectedItem.tag.mechanization{id:"glass_bottle"} run tag @s add mechanization.clear_bottle
execute if data entity @s[gamemode=!creative] SelectedItem.tag.mechanization{id:"vial"} run loot give @s loot mechanization:base/vial
execute if data entity @s[gamemode=!creative] SelectedItem.tag.mechanization{id:"vial"} run tag @s add mechanization.clear_bottle

#add effects
data modify storage mechanization:temp obj set from entity @s SelectedItem.tag.mechanization.liquid
function mechanization:base/player/drink_liquid/drink_liquid_2

#clear bottle
execute if entity @s[tag=mechanization.clear_bottle] run schedule function mechanization:base/player/drink_liquid/drink_liquid_clear 1t
