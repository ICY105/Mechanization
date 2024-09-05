
advancement revoke @s only mechanization:triggers/drink_fluid

# tag from data
data modify storage mechanization:temp obj set from entity @s SelectedItem

execute if items entity @s weapon.mainhand *[minecraft:custom_data~{mechanization:{id:"bucket"}}] run tag @s[gamemode=!creative] add mechanization.drink_fluid
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{mechanization:{id:"bucket"}}] run tag @s[gamemode=!creative] add mechanization.drink_fluid.bucket

execute if items entity @s weapon.mainhand *[minecraft:custom_data~{mechanization:{id:"vial"}}] run tag @s[gamemode=!creative] add mechanization.drink_fluid
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{mechanization:{id:"vial"}}] run tag @s[gamemode=!creative] add mechanization.drink_fluid.vial

# add effects
data modify storage mechanization:temp obj set from entity @s SelectedItem.components."minecraft:custom_data".fluid

execute store result score #amount mechanization.data run data get storage mechanization:temp obj.storage
execute store result score #temperature mechanization.data run data get storage mechanization:temp obj.temperature

execute if score #temperature mechanization.data matches 1000.. run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:fire replace #mechanization:air
execute if score #temperature mechanization.data matches 1000.. run damage @s 10 mechanization:drink_molten_fluid
execute if data storage mechanization:temp obj{gas:1b} run effect give @s minecraft:levitation

execute if data storage mechanization:temp obj{id:"milk"} run effect clear @s
execute if data storage mechanization:temp obj{id:"experience"} run function mechanization:base/player/drink_liquid/drink_liquid_experience with storage mechanization:temp obj

# clear bottle
execute if entity @s[tag=mechanization.drink_fluid] run schedule function mechanization:base/player/drink_liquid/drink_liquid_clear 1t
