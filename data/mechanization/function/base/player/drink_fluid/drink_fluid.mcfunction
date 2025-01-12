
advancement revoke @s only mechanization:triggers/drink_fluid

# add effects
data modify storage mechanization:temp obj set from entity @s SelectedItem.components."minecraft:custom_data".fluid

execute store result score #amount mechanization.data run data get storage mechanization:temp obj.storage
execute store result score #temperature mechanization.data run data get storage mechanization:temp obj.temperature

execute if score #temperature mechanization.data matches 1000.. run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:fire replace #mechanization:air
execute if score #temperature mechanization.data matches 1000.. run damage @s 10 mechanization:drink_molten_fluid
execute if data storage mechanization:temp obj{gas:1b} run effect give @s minecraft:levitation

execute if score #amount mechanization.data matches 500.. if data storage mechanization:temp obj{id:"milk"} run effect clear @s
execute if data storage mechanization:temp obj{id:"experience"} run function mechanization:base/player/drink_fluid/m.drink_fluid_experience with storage mechanization:temp obj

scoreboard players set #food mechanization.data 0
execute if data storage mechanization:temp obj{id:"honey"} run scoreboard players set #food mechanization.data 1
execute if data storage mechanization:temp obj{id:"beetroup_soup"} run scoreboard players set #food mechanization.data 1
execute if data storage mechanization:temp obj{id:"mushroonm_stew"} run scoreboard players set #food mechanization.data 1
execute if score #food mechanization.data matches 1 if score #amount mechanization.data matches 333..665 run effect give @s minecraft:saturation 1 5
execute if score #food mechanization.data matches 1 if score #amount mechanization.data matches 666..998 run effect give @s minecraft:saturation 1 9
execute if score #food mechanization.data matches 1 if score #amount mechanization.data matches 999.. run effect give @s minecraft:saturation 1 14

execute if score #amount mechanization.data matches 333..665 if data storage mechanization:temp obj{id:"rabbit_stew"} run effect give @s minecraft:saturation 1 9
execute if score #amount mechanization.data matches 666..998 if data storage mechanization:temp obj{id:"rabbit_stew"} run effect give @s minecraft:saturation 1 19
execute if score #amount mechanization.data matches 999.. if data storage mechanization:temp obj{id:"rabbit_stew"} run effect give @s minecraft:saturation 1 29

# clear bottle
execute if entity @s[tag=mechanization.drink_fluid] run schedule function mechanization:base/player/drink_fluid/drink_fluid_clear 1t

# give replacement item
execute if items entity @s[gamemode=!creative] weapon.mainhand *[minecraft:custom_data~{mechanization:{id:"vial"}}] run loot replace entity @s weapon.mainhand loot mechanization:base/vial
