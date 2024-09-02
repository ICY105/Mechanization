
item replace block -30000000 0 3201 container.0 from entity @s container.0
scoreboard players set #damage mechanization.data 1
execute store result score #unbreaking mechanization.data run data get block -30000000 0 3201 Items[0].tag.Enchantments[{id:"minecraft:unbreaking"}].lvl

execute if score #unbreaking mechanization.data matches 0 run function mechanization:gadgets/player/damage_upgrades
execute if score #unbreaking mechanization.data matches 1 if predicate mechanization:unbreaking_1 if entity @s[gamemode=!creative] run function mechanization:gadgets/player/damage_upgrades
execute if score #unbreaking mechanization.data matches 2 if predicate mechanization:unbreaking_2 if entity @s[gamemode=!creative] run function mechanization:gadgets/player/damage_upgrades
execute if score #unbreaking mechanization.data matches 3 if predicate mechanization:unbreaking_3 if entity @s[gamemode=!creative] run function mechanization:gadgets/player/damage_upgrades
execute if score #unbreaking mechanization.data matches 4 if predicate mechanization:unbreaking_4 if entity @s[gamemode=!creative] run function mechanization:gadgets/player/damage_upgrades
execute if score #unbreaking mechanization.data matches 5.. if predicate mechanization:unbreaking_5 if entity @s[gamemode=!creative] run function mechanization:gadgets/player/damage_upgrades

item replace entity @s container.0 from block -30000000 0 3201 container.0
