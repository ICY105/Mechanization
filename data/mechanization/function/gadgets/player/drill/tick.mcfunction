
#apply effects
item replace block -30000000 0 3201 container.0 from entity @s weapon.mainhand

execute if score @s mechanization.use_drill matches 1.. store result score #mining_area mechanization.data run data get block -30000000 0 3201 Items[0].components."minecraft:custom_data".mechanization.upgrades.mining_area
execute if score @s mechanization.use_drill matches 1.. unless predicate player_action:v1/sneaking if score #mining_area mechanization.data matches 2.. at @e[type=item,sort=nearest,limit=1,nbt={Age:0s}] rotated as @s run function mechanization:gadgets/player/drill/mine_area
execute if score @s mechanization.use_drill matches 1.. if data block -30000000 0 3201 Items[0].components."minecraft:custom_data".mechanization.upgrades.items[].components."minecraft:custom_data".mechanization.upgrade{effect:"magnetic"} run tp @e[type=item,distance=..10] ~ ~ ~

execute if score #timer.20 mechanization.data matches 0 if data block -30000000 0 3201 Items[0].components."minecraft:custom_data".mechanization.upgrades.items[].components."minecraft:custom_data".mechanization.upgrade{effect:"aquatic"} if block ~ ~ ~ minecraft:water if block ~ ~1 ~ minecraft:water run effect give @s minecraft:haste 2 0 true
execute if score #timer.20 mechanization.data matches 1 if data block -30000000 0 3201 Items[0].components."minecraft:custom_data".mechanization.upgrades.items[].components."minecraft:custom_data".mechanization.upgrade{effect:"illuminating"} if predicate mechanization:in_dark run setblock ~ ~ ~ minecraft:light[level=5]

# add damage
execute store result score #damage mechanization.data run data get block -30000000 0 3201 Items[0].components."minecraft:damage"
execute store result score #current_damage mechanization.data run data get block -30000000 0 3201 Items[0].components."minecraft:custom_data".mechanization.upgrades.current_durability
scoreboard players operation #damage mechanization.data -= #current_damage mechanization.data
execute if score #damage mechanization.data matches 1.. run function mechanization:gadgets/player/damage_upgrades
execute if score #damage mechanization.data matches 1.. run item replace entity @s weapon.mainhand from block -30000000 0 3201 container.0
