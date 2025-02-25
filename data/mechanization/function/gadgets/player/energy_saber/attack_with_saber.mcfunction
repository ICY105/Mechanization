
advancement revoke @s only mechanization:triggers/attack_with_saber

#effects
item replace block -30000000 0 3201 container.0 from entity @s weapon.mainhand

execute if data block -30000000 0 3201 Items[0].components."minecraft:custom_data".mechanization.upgrades.items[].components."minecraft:custom_data".mechanization.upgrade{effect:"weakness"} run effect give @e[distance=0.01..8,nbt={HurtTime:10s}] minecraft:weakness 4 0
execute if data block -30000000 0 3201 Items[0].components."minecraft:custom_data".mechanization.upgrades.items[].components."minecraft:custom_data".mechanization.upgrade{effect:"slowness"} run effect give @e[distance=0.01..8,nbt={HurtTime:10s}] minecraft:slowness 4 0
execute if data block -30000000 0 3201 Items[0].components."minecraft:custom_data".mechanization.upgrades.items[].components."minecraft:custom_data".mechanization.upgrade{effect:"poison"} run effect give @e[distance=0.01..8,nbt={HurtTime:10s}] minecraft:poison 4 0
execute if data block -30000000 0 3201 Items[0].components."minecraft:custom_data".mechanization.upgrades.items[].components."minecraft:custom_data".mechanization.upgrade{effect:"wither"} run effect give @e[distance=0.01..8,nbt={HurtTime:10s}] minecraft:wither 4 0
execute if data block -30000000 0 3201 Items[0].components."minecraft:custom_data".mechanization.upgrades.items[].components."minecraft:custom_data".mechanization.upgrade{effect:"illuminating"} run effect give @e[distance=0.01..8,nbt={HurtTime:10s}] minecraft:glowing 4 0 true
execute if data block -30000000 0 3201 Items[0].components."minecraft:custom_data".mechanization.upgrades.items[].components."minecraft:custom_data".mechanization.upgrade{effect:"vampiric"} run effect give @s minecraft:regeneration 1 2 true

#add damage
scoreboard players set #damage mechanization.data 1
execute store result score #unbreaking mechanization.data run data get block -30000000 0 3201 Items[0].components."minecraft:enchantments".levels."minecraft:unbreaking"

execute if score #unbreaking mechanization.data matches 0 if entity @s[gamemode=!creative] run function mechanization:gadgets/player/damage_upgrades
execute if score #unbreaking mechanization.data matches 1 if predicate mechanization:unbreaking_1 if entity @s[gamemode=!creative] run function mechanization:gadgets/player/damage_upgrades
execute if score #unbreaking mechanization.data matches 2 if predicate mechanization:unbreaking_2 if entity @s[gamemode=!creative] run function mechanization:gadgets/player/damage_upgrades
execute if score #unbreaking mechanization.data matches 3 if predicate mechanization:unbreaking_3 if entity @s[gamemode=!creative] run function mechanization:gadgets/player/damage_upgrades
execute if score #unbreaking mechanization.data matches 4 if predicate mechanization:unbreaking_4 if entity @s[gamemode=!creative] run function mechanization:gadgets/player/damage_upgrades
execute if score #unbreaking mechanization.data matches 5.. if predicate mechanization:unbreaking_5 if entity @s[gamemode=!creative] run function mechanization:gadgets/player/damage_upgrades

item replace entity @s weapon.mainhand from block -30000000 0 3201 container.0
