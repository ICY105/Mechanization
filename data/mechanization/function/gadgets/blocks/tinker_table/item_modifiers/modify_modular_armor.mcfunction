
# battery modifier
execute if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.battery run data modify storage mechanization:temp obj.components."minecraft:custom_data".energy.max_storage set value 0

scoreboard players set #max_storage mechanization.data 0
execute store result score #storage mechanization.data run data get storage mechanization:temp obj.components."minecraft:custom_data".energy.storage
execute if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[].components."minecraft:custom_data".mechanization{id:"portable_battery"} run scoreboard players set #max_storage mechanization.data 64000

data modify storage mechanization:temp obj.components."minecraft:custom_data".energy set value {max_storage:0,storage:0}
execute if score #max_storage mechanization.data matches 1.. run data modify storage mechanization:temp obj.components."minecraft:custom_data".mechanization.battery set value {models:0,base_model:0}
execute if score #max_storage mechanization.data matches 1.. store result storage mechanization:temp obj.components."minecraft:custom_data".energy.max_storage int 1 run scoreboard players get #max_storage mechanization.data
execute if score #storage mechanization.data > #max_storage mechanization.data run scoreboard players operation #storage mechanization.data = #max_storage mechanization.data
execute store result storage mechanization:temp obj.components."minecraft:custom_data".energy.storage int 1 run scoreboard players get #storage mechanization.data

execute if score #max_storage mechanization.data matches 0 run data modify storage mechanization:temp obj.components."minecraft:lore" prepend value '[{"text":""}]'
execute if score #max_storage mechanization.data matches 1.. run data modify block -30000000 0 3202 front_text.messages[0] set value '[{"translate":"lore.mechanization.portable_battery","color":"gray","italic":false,"with":[{"score":{"name":"#storage","objective":"mechanization.data"}},{"score":{"name":"#max_storage","objective":"mechanization.data"}}]}]'
execute if score #max_storage mechanization.data matches 1.. run data modify storage mechanization:temp obj.components."minecraft:lore" prepend from block -30000000 0 3202 front_text.messages[0]

# stats
scoreboard players set #armor mechanization.data 0
scoreboard players set #toughness mechanization.data 0
scoreboard players set #shield mechanization.data 0
scoreboard players set #health mechanization.data 0
scoreboard players set #speed mechanization.data 0
scoreboard players set #knockback mechanization.data 0

function mechanization:gadgets/blocks/tinker_table/item_modifiers/modular_armor_stats {index: 0}
function mechanization:gadgets/blocks/tinker_table/item_modifiers/modular_armor_stats {index: 1}
function mechanization:gadgets/blocks/tinker_table/item_modifiers/modular_armor_stats {index: 2}
function mechanization:gadgets/blocks/tinker_table/item_modifiers/modular_armor_stats {index: 3}
function mechanization:gadgets/blocks/tinker_table/item_modifiers/modular_armor_stats {index: 4}
function mechanization:gadgets/blocks/tinker_table/item_modifiers/modular_armor_stats {index: 5}

# get type
scoreboard players set #type mechanization.data 0
execute if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization{id:"modular_helmet"} run scoreboard players set #type mechanization.data 1
execute if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization{id:"modular_chestplate"} run scoreboard players set #type mechanization.data 2
execute if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization{id:"modular_leggings"} run scoreboard players set #type mechanization.data 3
execute if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization{id:"modular_boots"} run scoreboard players set #type mechanization.data 4

# apply stats
execute if score #armor mechanization.data matches 601.. run scoreboard players set #armor mechanization.data 600
execute if score #armor_toughness mechanization.data matches 401.. run scoreboard players set #armor_toughness mechanization.data 400
execute if score #health mechanization.data matches 51.. run scoreboard players set #health mechanization.data 50

execute store result storage mechanization:temp obj.components."minecraft:attribute_modifiers".modifiers[{type:"minecraft:armor", operation: "add_value"}].amount double 0.01 run scoreboard players get #armor mechanization.data
execute store result storage mechanization:temp obj.components."minecraft:attribute_modifiers".modifiers[{type:"minecraft:armor_toughness", operation: "add_value"}].amount double 0.01 run scoreboard players get #toughness mechanization.data
execute store result storage mechanization:temp obj.tag.mechanization.upgrades.shield int 1 run scoreboard players get #shield mechanization.data
execute store result storage mechanization:temp obj.components."minecraft:attribute_modifiers".modifiers[{type:"minecraft:max_health", operation: "add_value"}].amount double 0.1 run scoreboard players get #health mechanization.data
execute store result storage mechanization:temp obj.components."minecraft:attribute_modifiers".modifiers[{type:"minecraft:movement_speed", operation: "add_value"}].amount double 0.01 run scoreboard players get #speed mechanization.data
execute store result storage mechanization:temp obj.components."minecraft:attribute_modifiers".modifiers[{type:"minecraft:knockback_resistance", operation: "add_value"}].amount double 0.1 run scoreboard players get #knockback mechanization.data

# special effects
data remove storage mechanization:temp obj.components."minecraft:enchantments".levels."minecraft:mending"

execute if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[0] run data modify storage mechanization:temp obj.components."minecraft:lore" insert 1 value '{"text":""}'

execute if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[].components."minecraft:custom_data".mechanization.upgrade{effect:"illuminating"} run data modify storage mechanization:temp obj.components."minecraft:lore" insert 1 value '{"translate":"lore.mechanization.upgrade_illuminating","color":"gray","italic":false}'
execute if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[].components."minecraft:custom_data".mechanization.upgrade{effect:"shield_recharge"} run data modify storage mechanization:temp obj.components."minecraft:lore" insert 1 value '{"translate":"lore.mechanization.shield_recharge","color":"gray","italic":false}'

data modify storage mechanization:temp obj.components."minecraft:custom_model_data" set value {floats:[0]}
data modify storage mechanization:temp obj.components."minecraft:equippable".asset_id set value "mechanization:modular_armor_default"

execute if score #type mechanization.data matches 1 if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[].components."minecraft:custom_data".mechanization.upgrade{effect:"rebreather"} run data modify storage mechanization:temp obj.components."minecraft:custom_model_data" set value {floats:[1]}
execute if score #type mechanization.data matches 1 if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[].components."minecraft:custom_data".mechanization.upgrade{effect:"rebreather"} run data modify storage mechanization:temp obj.components."minecraft:equippable".asset_id set value "mechanization:modular_armor_upgrades_2"
execute if score #type mechanization.data matches 1 if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[].components."minecraft:custom_data".mechanization.upgrade{effect:"night_vision"} run data modify storage mechanization:temp obj.components."minecraft:custom_model_data" set value {floats:[2]}
execute if score #type mechanization.data matches 1 if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[].components."minecraft:custom_data".mechanization.upgrade{effect:"night_vision"} run data modify storage mechanization:temp obj.components."minecraft:equippable".asset_id set value "mechanization:modular_armor_upgrades_1"
execute if score #type mechanization.data matches 1 if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[].components."minecraft:custom_data".mechanization.upgrade{effect:"rebreather"} if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[].components."minecraft:custom_data".mechanization.upgrade{effect:"night_vision"} run data modify storage mechanization:temp obj.components."minecraft:custom_model_data" set value {floats:[3]}
execute if score #type mechanization.data matches 1 if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[].components."minecraft:custom_data".mechanization.upgrade{effect:"rebreather"} if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[].components."minecraft:custom_data".mechanization.upgrade{effect:"night_vision"} run data modify storage mechanization:temp obj.components."minecraft:equippable".asset_id set value "mechanization:modular_armor_upgrades_3"

execute if score #type mechanization.data matches 2 run data remove storage mechanization:temp obj.components."minecraft:glider"
execute if score #type mechanization.data matches 2 if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[{id:"minecraft:elytra"}] run data modify storage mechanization:temp obj.components."minecraft:glider" set value {}
execute if score #type mechanization.data matches 2 if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[].components."minecraft:custom_data".mechanization.upgrade{effect:"jetpack"} run data modify storage mechanization:temp obj.components."minecraft:glider" set value {}

execute if score #type mechanization.data matches 4 if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[].components."minecraft:custom_data".mechanization.upgrade{effect:"slowfall"} run data modify storage mechanization:temp obj.components."minecraft:custom_model_data" set value {floats:[1]}
execute if score #type mechanization.data matches 4 if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[].components."minecraft:custom_data".mechanization.upgrade{effect:"slowfall"} run data modify storage mechanization:temp obj.components."minecraft:equippable".asset_id set value "mechanization:modular_armor_upgrades_1"
execute if score #type mechanization.data matches 4 if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[].components."minecraft:custom_data".mechanization.upgrade{effect:"wall_walk"} run data modify storage mechanization:temp obj.components."minecraft:custom_model_data" set value {floats:[2]}
execute if score #type mechanization.data matches 4 if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[].components."minecraft:custom_data".mechanization.upgrade{effect:"wall_walk"} run data modify storage mechanization:temp obj.components."minecraft:equippable".asset_id set value "mechanization:modular_armor_upgrades_2"
execute if score #type mechanization.data matches 4 if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[].components."minecraft:custom_data".mechanization.upgrade{effect:"slowfall"} if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[].components."minecraft:custom_data".mechanization.upgrade{effect:"wall_walk"} run data modify storage mechanization:temp obj.components."minecraft:custom_model_data" set value {floats:[3]}
execute if score #type mechanization.data matches 4 if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[].components."minecraft:custom_data".mechanization.upgrade{effect:"slowfall"} if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items[].components."minecraft:custom_data".mechanization.upgrade{effect:"wall_walk"} run data modify storage mechanization:temp obj.components."minecraft:equippable".asset_id set value "mechanization:modular_armor_upgrades_3"

# add stats lore
data modify storage mechanization:temp obj.components."minecraft:lore" append value '{"text":""}'

execute if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization{id:"modular_helmet"} run data modify storage mechanization:temp obj.components."minecraft:lore" append value '{"translate":"item.modifiers.head","color":"gray","italic":false}'
execute if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization{id:"modular_chestplate"} run data modify storage mechanization:temp obj.components."minecraft:lore" append value '{"translate":"item.modifiers.chest","color":"gray","italic":false}'
execute if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization{id:"modular_leggings"} run data modify storage mechanization:temp obj.components."minecraft:lore" append value '{"translate":"item.modifiers.legs","color":"gray","italic":false}'
execute if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization{id:"modular_boots"} run data modify storage mechanization:temp obj.components."minecraft:lore" append value '{"translate":"item.modifiers.feet","color":"gray","italic":false}'

scoreboard players operation #value mechanization.data = #armor mechanization.data
scoreboard players operation #armor mechanization.data /= #cons.100 mechanization.data
scoreboard players operation #value mechanization.data %= #cons.100 mechanization.data
execute if score #value mechanization.data matches 0 run data modify block -30000000 0 3202 front_text.messages[0] set value '[{"text":"+","color":"blue","italic":false},{"score":{"name":"#armor","objective":"mechanization.data"}}," ",{"translate":"attribute.name.armor"}]'
execute unless score #value mechanization.data matches 0 run data modify block -30000000 0 3202 front_text.messages[0] set value '[{"text":"+","color":"blue","italic":false},{"score":{"name":"#armor","objective":"mechanization.data"}},".",{"score":{"name":"#value","objective":"mechanization.data"}}," ",{"translate":"attribute.name.armor"}]'
data modify storage mechanization:temp obj.components."minecraft:lore" append from block -30000000 0 3202 front_text.messages[0]

scoreboard players operation #value mechanization.data = #toughness mechanization.data
scoreboard players operation #toughness mechanization.data /= #cons.100 mechanization.data
scoreboard players operation #value mechanization.data %= #cons.100 mechanization.data
execute if score #value mechanization.data matches 0 run data modify block -30000000 0 3202 front_text.messages[0] set value '[{"text":"+","color":"blue","italic":false},{"score":{"name":"#toughness","objective":"mechanization.data"}}," ",{"translate":"attribute.name.armor_toughness"}]'
execute unless score #value mechanization.data matches 0 run data modify block -30000000 0 3202 front_text.messages[0] set value '[{"text":"+","color":"blue","italic":false},{"score":{"name":"#toughness","objective":"mechanization.data"}},".",{"score":{"name":"#value","objective":"mechanization.data"}}," ",{"translate":"attribute.name.armor_toughness"}]'
data modify storage mechanization:temp obj.components."minecraft:lore" append from block -30000000 0 3202 front_text.messages[0]

data modify block -30000000 0 3202 front_text.messages[0] set value '[{"text":"+","color":"blue","italic":false},{"score":{"name":"#shield","objective":"mechanization.data"}}," ",{"translate":"lore.mechanization.shield_capacity"}]'
data modify storage mechanization:temp obj.components."minecraft:lore" append from block -30000000 0 3202 front_text.messages[0]

scoreboard players operation #value mechanization.data = #health mechanization.data
scoreboard players operation #value mechanization.data %= #cons.10 mechanization.data
execute if score #health mechanization.data matches 0 run scoreboard players set #value mechanization.data -1000
scoreboard players operation #health mechanization.data /= #cons.10 mechanization.data
execute if score #value mechanization.data matches 0 run data modify block -30000000 0 3202 front_text.messages[0] set value '[{"text":"+","color":"blue","italic":false},{"score":{"name":"#health","objective":"mechanization.data"}}," ",{"translate":"attribute.name.max_health"}]'
execute if score #value mechanization.data matches 1.. run data modify block -30000000 0 3202 front_text.messages[0] set value '[{"text":"+","color":"blue","italic":false},{"score":{"name":"#health","objective":"mechanization.data"}},".",{"score":{"name":"#value","objective":"mechanization.data"}}," ",{"translate":"attribute.name.max_health"}]'
execute if score #value mechanization.data matches 0.. run data modify storage mechanization:temp obj.components."minecraft:lore" append from block -30000000 0 3202 front_text.messages[0]

scoreboard players operation #value mechanization.data = #speed mechanization.data
scoreboard players operation #value mechanization.data %= #cons.100 mechanization.data
execute if score #speed mechanization.data matches 0 run scoreboard players set #value mechanization.data -1000
scoreboard players operation #speed mechanization.data /= #cons.100 mechanization.data
execute if score #value mechanization.data matches 0 run data modify block -30000000 0 3202 front_text.messages[0] set value '[{"text":"+","color":"blue","italic":false},{"score":{"name":"#speed","objective":"mechanization.data"}}," ",{"translate":"attribute.name.movement_speed"}]'
execute if score #value mechanization.data matches 1..9 run data modify block -30000000 0 3202 front_text.messages[0] set value '[{"text":"+","color":"blue","italic":false},{"score":{"name":"#speed","objective":"mechanization.data"}},".0",{"score":{"name":"#value","objective":"mechanization.data"}}," ",{"translate":"attribute.name.movement_speed"}]'
execute if score #value mechanization.data matches 10.. run data modify block -30000000 0 3202 front_text.messages[0] set value '[{"text":"+","color":"blue","italic":false},{"score":{"name":"#speed","objective":"mechanization.data"}},".",{"score":{"name":"#value","objective":"mechanization.data"}}," ",{"translate":"attribute.name.movement_speed"}]'
execute if score #value mechanization.data matches 0.. run data modify storage mechanization:temp obj.components."minecraft:lore" append from block -30000000 0 3202 front_text.messages[0]

scoreboard players operation #value mechanization.data = #knockback mechanization.data
scoreboard players operation #value mechanization.data %= #cons.10 mechanization.data
execute if score #knockback mechanization.data matches 0 run scoreboard players set #value mechanization.data -1000
scoreboard players operation #knockback mechanization.data /= #cons.10 mechanization.data
execute if score #value mechanization.data matches 0 run data modify block -30000000 0 3202 front_text.messages[0] set value '[{"text":"+","color":"blue","italic":false},{"score":{"name":"#knockback","objective":"mechanization.data"}}," ",{"translate":"attribute.name.knockback_resistance"}]'
execute if score #value mechanization.data matches 1.. run data modify block -30000000 0 3202 front_text.messages[0] set value '[{"text":"+","color":"blue","italic":false},{"score":{"name":"#knockback","objective":"mechanization.data"}},".",{"score":{"name":"#value","objective":"mechanization.data"}}," ",{"translate":"attribute.name.knockback_resistance"}]'
execute if score #value mechanization.data matches 0.. run data modify storage mechanization:temp obj.components."minecraft:lore" append from block -30000000 0 3202 front_text.messages[0]

execute if score #max_storage mechanization.data matches 0 run data remove storage mechanization:temp obj.components."minecraft:lore"[0]
