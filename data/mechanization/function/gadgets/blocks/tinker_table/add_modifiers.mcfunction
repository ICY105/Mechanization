
# reset item data
data modify storage mechanization:temp obj.components."minecraft:lore" set value []

# add stored item & durability lore
scoreboard players set #lowest_durability mechanization.data 1000000
scoreboard players set #lowest_max_durability mechanization.data 1000000

function mechanization:gadgets/blocks/tinker_table/add_modifiers_lore {index: 0}
function mechanization:gadgets/blocks/tinker_table/add_modifiers_lore {index: 1}
function mechanization:gadgets/blocks/tinker_table/add_modifiers_lore {index: 2}
function mechanization:gadgets/blocks/tinker_table/add_modifiers_lore {index: 3}
function mechanization:gadgets/blocks/tinker_table/add_modifiers_lore {index: 4}
function mechanization:gadgets/blocks/tinker_table/add_modifiers_lore {index: 5}

# durability
execute if score #lowest_durability mechanization.data matches ..0 run scoreboard players set #lowest_durability mechanization 0
execute if score #lowest_durability mechanization.data > #lowest_max_durability mechanization.data run scoreboard players operation #lowest_durability mechanization.data = #lowest_max_durability mechanization.data

scoreboard players add #lowest_max_durability mechanization.data 50
scoreboard players add #lowest_durability mechanization.data 50

execute if score #lowest_durability mechanization.data matches 1000000.. run data modify storage mechanization:temp obj.components."minecraft:unbreakable" set value {show_in_tooltip: 0b}
execute if score #lowest_durability mechanization.data matches 1000000.. run data modify storage mechanization:temp obj.components."minecraft:max_damage" set value 1
execute if score #lowest_durability mechanization.data matches 1000000.. run data modify storage mechanization:temp obj.components."minecraft:damage" set value 0
execute if score #lowest_durability mechanization.data matches 1000000.. run data modify storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.current_durability set value 0

execute if score #lowest_durability mechanization.data matches ..999999 run data remove storage mechanization:temp obj.components."minecraft:unbreakable"
execute if score #lowest_durability mechanization.data matches ..999999 store result storage mechanization:temp obj.components."minecraft:max_damage" int 1 run scoreboard players get #lowest_max_durability mechanization.data
execute if score #lowest_durability mechanization.data matches ..999999 run scoreboard players operation #lowest_max_durability mechanization.data -= #lowest_durability mechanization.data
execute if score #lowest_durability mechanization.data matches ..999999 store result storage mechanization:temp obj.components."minecraft:damage" int 1 run scoreboard players get #lowest_max_durability mechanization.data
execute if score #lowest_durability mechanization.data matches ..999999 store result storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.current_durability int 1 run scoreboard players get #lowest_max_durability mechanization.data

# apply modifier
execute if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades{type:1b} run function mechanization:gadgets/blocks/tinker_table/item_modifiers/modify_energy_saber
execute if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades{type:2b} run function mechanization:gadgets/blocks/tinker_table/item_modifiers/modify_drill
execute if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades{type:3b} run function mechanization:gadgets/blocks/tinker_table/item_modifiers/modify_modular_armor
execute if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades{type:4b} run function mechanization:gadgets/blocks/tinker_table/item_modifiers/modify_firearm

# mech lore
data modify block -30000000 0 3202 front_text.messages[0] set value '[{"text": "\\uee11", "font": "mechanization:gui", "color": "white", "italic": false}, {"translate": "lore.mechanization.added_by", "color": "#c83219", "italic": false}]'
data modify storage mechanization:temp obj.components."minecraft:lore" append from block -30000000 0 3202 front_text.messages[0]
