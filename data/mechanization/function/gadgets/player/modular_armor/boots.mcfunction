
# get data
data modify storage mechanization:temp list append from block -30000000 0 3201 Items[0]
execute store result score #value mechanization.data run data get storage mechanization:temp list[-1].components."minecraft:custom_data".mechanization.upgrades.shield
scoreboard players operation #shield mechanization.data += #value mechanization.data

# apply damage
execute store result score #damage mechanization.data run data get storage mechanization:temp list[-1].components."minecraft:damage"
execute store result score #current_damage mechanization.data run data get storage mechanization:temp list[-1].components."minecraft:custom_data".mechanization.upgrades.current_durability 
scoreboard players operation #damage mechanization.data -= #current_damage mechanization.data
execute if score #damage mechanization.data matches 1.. run function mechanization:gadgets/player/damage_upgrades
execute if score #damage mechanization.data matches 1.. run item replace entity @s armor.feet from block -30000000 0 3201 container.0

# effects
execute if score #timer.10 mechanization.data matches 0 if data storage mechanization:temp list[-1].components."minecraft:custom_data".mechanization.upgrades.items[].components."minecraft:custom_data".mechanization.upgrade{effect:"slowfall"} run function mechanization:gadgets/player/modular_armor/slowfall
execute if data storage mechanization:temp list[-1].components."minecraft:custom_data".mechanization.upgrades.items[].components."minecraft:custom_data".mechanization.upgrade{effect:"wall_walk"} run function mechanization:gadgets/player/modular_armor/wall_walk
