
# store data
data modify storage mechanization:temp obj set from block -30000000 0 3201 Items[0]
scoreboard players set #broken mechanization.data 0

scoreboard players set #reinforced mechanization.data 0
execute if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[].components."minecraft:custom_data".mechanization.upgrade{effect:"reinforced"} run scoreboard players set #reinforced mechanization.data 1

execute if score #reinforced mechanization.data matches 1 store result score #reinforced_damage mechanization.data run data get storage mechanization:temp list
execute if score #reinforced mechanization.data matches 1 run scoreboard players operation #reinforced_damage mechanization.data *= #damage mechanization.data

# add damage
execute if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[5] run function mechanization:gadgets/player/damage_upgrades_2 {index: 5}
execute if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[4] run function mechanization:gadgets/player/damage_upgrades_2 {index: 4}
execute if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[3] run function mechanization:gadgets/player/damage_upgrades_2 {index: 3}
execute if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[2] run function mechanization:gadgets/player/damage_upgrades_2 {index: 2}
execute if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[1] run function mechanization:gadgets/player/damage_upgrades_2 {index: 1}
execute if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[0] run function mechanization:gadgets/player/damage_upgrades_2 {index: 0}

# set data
execute if score #broken mechanization.data matches 1 run playsound minecraft:entity.item.break player @s

function mechanization:gadgets/blocks/tinker_table/add_modifiers
data modify block -30000000 0 3201 Items[0] set from storage mechanization:temp obj 
