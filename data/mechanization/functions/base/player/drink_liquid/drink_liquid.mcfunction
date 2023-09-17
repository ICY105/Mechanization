
advancement revoke @s only mechanization:triggers/drink_fluid

# tag from data
data modify storage mechanization:temp obj set from entity @s SelectedItem

execute if data storage mechanization:temp obj.tag.mechanization{id:"bucket"} run tag @s[gamemode=!creative] add mechanization.drink_fluid
execute if data storage mechanization:temp obj.tag.mechanization{id:"bucket"} run tag @s[gamemode=!creative] add mechanization.drink_fluid.bucket

execute if data storage mechanization:temp obj.tag.mechanization{id:"vial"} run tag @s[gamemode=!creative] add mechanization.drink_fluid
execute if data storage mechanization:temp obj.tag.mechanization{id:"vial"} run tag @s[gamemode=!creative] add mechanization.drink_fluid.vial

# add effects
data modify storage mechanization:temp obj set from storage mechanization:temp obj.tag.fluid
function mechanization:base/player/drink_liquid/drink_liquid_2

# clear bottle
execute if entity @s[tag=mechanization.drink_fluid] run schedule function mechanization:base/player/drink_liquid/drink_liquid_clear 1t
