
data remove storage mechanization:temp obj.components."minecraft:enchantments"

scoreboard players set #mining_speed mechanization.data 20
scoreboard players set #mining_area mechanization.data 1
scoreboard players set #attack_damage mechanization.data 30
scoreboard players set #unbreaking mechanization.data 0

# stats
function mechanization:gadgets/blocks/tinker_table/item_modifiers/drill_item_stats {index: 0}
function mechanization:gadgets/blocks/tinker_table/item_modifiers/drill_item_stats {index: 1}
function mechanization:gadgets/blocks/tinker_table/item_modifiers/drill_item_stats {index: 2}
function mechanization:gadgets/blocks/tinker_table/item_modifiers/drill_item_stats {index: 3}
function mechanization:gadgets/blocks/tinker_table/item_modifiers/drill_item_stats {index: 4}
function mechanization:gadgets/blocks/tinker_table/item_modifiers/drill_item_stats {index: 5}

# apply stats
scoreboard players remove #attack_damage mechanization.data 10
execute store result storage mechanization:temp obj.components."minecraft:attribute_modifiers".modifiers[{type:"minecraft:attack_damage", operation: "add_value"}].amount double 0.1 run scoreboard players get #attack_damage mechanization.data
scoreboard players add #attack_damage mechanization.data 10

execute store result storage mechanization:temp obj.components."minecraft:tool".default_mining_speed double 0.1 run scoreboard players get #mining_speed mechanization.data

execute if score #mining_area mechanization.data matches 9.. run scoreboard players set #mining_area mechanization.data 9
execute store result storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.mining_area int 1 run scoreboard players get #mining_area mechanization.data

execute if score #unbreaking mechanization.data matches 11.. run scoreboard players set #unbreaking mechanization.data 10
execute if score #unbreaking mechanization.data matches 1.. run data modify storage mechanization:temp obj.components."minecraft:enchantments"."minecraft:unbreaking" set value 1
execute if score #unbreaking mechanization.data matches 1.. store result storage mechanization:temp obj.components."minecraft:enchantments"."minecraft:unbreaking" int 1 run scoreboard players get #unbreaking mechanization.data

# special effects
execute if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[0] run data modify storage mechanization:temp obj.components."minecraft:lore" prepend value '{"text":""}'

scoreboard players set #value mechanization.data 0
execute if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[].components."minecraft:custom_data".mechanization.upgrade{effect:"silk_touch"} run scoreboard players set #value mechanization.data -1
execute if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[].components."minecraft:custom_data".mechanization.upgrade{effect:"fortune_1"} run scoreboard players set #value mechanization.data 1
execute if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[].components."minecraft:custom_data".mechanization.upgrade{effect:"fortune_2"} run scoreboard players set #value mechanization.data 2
execute if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[].components."minecraft:custom_data".mechanization.upgrade{effect:"fortune_3"} run scoreboard players set #value mechanization.data 3
execute if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[].components."minecraft:custom_data".mechanization.upgrade{effect:"fortune_4"} run scoreboard players set #value mechanization.data 4
execute if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[].components."minecraft:custom_data".mechanization.upgrade{effect:"fortune_5"} run scoreboard players set #value mechanization.data 5
execute if score #value mechanization.data matches -1 run data modify storage mechanization:temp obj.components."minecraft:custom_data"."minecraft:enchantments"."minecraft:silk_touch" set value 1
execute if score #value mechanization.data matches 1.. run data modify storage mechanization:temp obj.components."minecraft:enchantments"."minecraft:fortune" set value 1
execute if score #value mechanization.data matches 1.. store result storage mechanization:temp obj.components."minecraft:enchantments"."minecraft:fortune" int 1 run scoreboard players get #value mechanization.data

execute if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[].components."minecraft:custom_data".mechanization.upgrade{effect:"auto_smelt"} run data modify storage mechanization:temp obj.components."minecraft:enchantments"."loottable_autosmelt:autosmelt" set value 1
execute if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[].components."minecraft:custom_data".mechanization.upgrade{effect:"trash"} run data modify storage mechanization:temp obj.components."minecraft:enchantments"."loottable_autosmelt:trash" set value 1
execute if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[].components."minecraft:custom_data".mechanization.upgrade{effect:"magnetic"} run data modify storage mechanization:temp obj.components."minecraft:lore" prepend value '{"translate":"lore.mechanization.upgrade_magnetic","color":"gray","italic":false}'
execute if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[].components."minecraft:custom_data".mechanization.upgrade{effect:"aquatic"} run data modify storage mechanization:temp obj.components."minecraft:lore" prepend value '{"translate":"lore.mechanization.upgrade_aquatic","color":"gray","italic":false}'
execute if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[].components."minecraft:custom_data".mechanization.upgrade{effect:"illuminating"} run data modify storage mechanization:temp obj.components."minecraft:lore" prepend value '{"translate":"lore.mechanization.upgrade_illuminating","color":"gray","italic":false}'

# add stats lore
data modify storage mechanization:temp obj.components."minecraft:lore" append value '{"text":""}'
data modify storage mechanization:temp obj.components."minecraft:lore" append value '{"translate":"item.modifiers.mainhand","color":"gray","italic":false}'

scoreboard players operation #value mechanization.data = #mining_speed mechanization.data
scoreboard players operation #mining_speed mechanization.data /= #cons.10 mechanization.data
scoreboard players operation #value mechanization.data %= #cons.10 mechanization.data
execute if score #value mechanization.data matches 0 run data modify block -30000000 0 3202 front_text.messages[0] set value '[{"text":" ","color":"dark_green","italic":false},{"score":{"name":"#mining_speed","objective":"mechanization.data"}}," ",{"translate":"lore.mechanization.mining_speed"}]'
execute unless score #value mechanization.data matches 0 run data modify block -30000000 0 3202 front_text.messages[0] set value '[{"text":" ","color":"dark_green","italic":false},{"score":{"name":"#mining_speed","objective":"mechanization.data"}},".",{"score":{"name":"#value","objective":"mechanization.data"}}," ",{"translate":"lore.mechanization.mining_speed"}]'
data modify storage mechanization:temp obj.components."minecraft:lore" append from block -30000000 0 3202 front_text.messages[0]

data modify block -30000000 0 3202 front_text.messages[0] set value '[{"text":" ","color":"dark_green","italic":false},{"score":{"name":"#mining_area","objective":"mechanization.data"}}," ",{"translate":"lore.mechanization.mining_area"}]'
data modify storage mechanization:temp obj.components."minecraft:lore" append from block -30000000 0 3202 front_text.messages[0]

scoreboard players operation #value mechanization.data = #attack_damage mechanization.data
scoreboard players operation #attack_damage mechanization.data /= #cons.10 mechanization.data
scoreboard players operation #value mechanization.data %= #cons.10 mechanization.data
execute if score #value mechanization.data matches 0 run data modify block -30000000 0 3202 front_text.messages[0] set value '[{"text":" ","color":"dark_green","italic":false},{"score":{"name":"#attack_damage","objective":"mechanization.data"}}," ",{"translate":"attribute.name.attack_damage"}]'
execute unless score #value mechanization.data matches 0 run data modify block -30000000 0 3202 front_text.messages[0] set value '[{"text":" ","color":"dark_green","italic":false},{"score":{"name":"#attack_damage","objective":"mechanization.data"}},".",{"score":{"name":"#value","objective":"mechanization.data"}}," ",{"translate":"attribute.name.attack_damage"}]'
data modify storage mechanization:temp obj.components."minecraft:lore" append from block -30000000 0 3202 front_text.messages[0]
