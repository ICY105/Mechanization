
advancement revoke @s only mechanization:triggers/drink_liquid_vial
advancement revoke @s only mechanization:triggers/drink_liquid_bucket
advancement revoke @s only mechanization:triggers/drink_liquid_potion

#give custom
execute if data entity @s[gamemode=!creative] SelectedItem.tag{mech_itemid:1106} run give @s minecraft:bucket
execute if data entity @s[gamemode=!creative] SelectedItem.tag{mech_itemid:1106} run tag @s add mech_clear_bottle
execute if data entity @s[gamemode=!creative] SelectedItem.tag{mech_itemid:1108} run loot give @s loot mechanization:base/vial
execute if data entity @s[gamemode=!creative] SelectedItem.tag{mech_itemid:1108} run tag @s add mech_clear_bottle

#add effects
data modify storage du:temp obj set from entity @s SelectedItem.tag.ctc.traits.liquid
function mechanization:base/triggers/drink_liquid_2

#clear bottle
execute if entity @s[tag=mech_clear_bottle] run schedule function mechanization:base/triggers/drink_liquid_clear 1t
