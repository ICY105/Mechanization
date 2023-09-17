
data modify storage mechanization:temp obj set from entity @s SelectedItem

scoreboard players set #holding_bottle mechanization.data 0
execute if data storage mechanization:temp obj{id:"minecraft:glass_bottle", Count:1b} run scoreboard players set #holding_bottle mechanization.data 1

# if not holding glass bottle, clear dynamically
execute if score #holding_bottle mechanization.data matches 0 run clear @s minecraft:glass_bottle 1
execute if score #holding_bottle mechanization.data matches 0 run give @s[tag=mechanization.drink_fluid.bucket] minecraft:bucket
execute if score #holding_bottle mechanization.data matches 0 run loot give @s[tag=mechanization.drink_fluid.vial] loot mechanization:base/vial

# if holding glass bottle, replace in hand
execute if score #holding_bottle mechanization.data matches 1 run item replace entity @s weapon.mainhand with minecraft:air
execute if score #holding_bottle mechanization.data matches 1 run item replace entity @s[tag=mechanization.drink_fluid.bucket] weapon.mainhand with minecraft:bucket
execute if score #holding_bottle mechanization.data matches 1 run loot replace entity @s[tag=mechanization.drink_fluid.vial] weapon.mainhand loot mechanization:base/vial

# clear tags
tag @s remove mechanization.drink_fluid
tag @s remove mechanization.drink_fluid.vial
tag @s remove mechanization.drink_fluid.bucket

