
# reset item data
data modify storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades.items set from storage mechanization:temp list
data modify storage mechanization:temp obj.components."minecraft:lore" set value []
execute if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.battery run data modify storage mechanization:temp obj.components."minecraft:custom_data".energy.max_storage set value 0

# apply modifier
execute if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades{type:1b} run function mechanization:gadgets/blocks/tinker_table/item_modifiers/modify_energy_saber
execute if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades{type:2b} run function mechanization:gadgets/blocks/tinker_table/item_modifiers/modify_drill
#execute if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades{type:3b} run function mechanization:gadgets/blocks/tinker_table/item_modifiers/modify_modular_armor
#execute if data storage mechanization:temp obj.components."minecraft:custom_data".mechanization.upgrades{type:4b} run function mechanization:gadgets/blocks/tinker_table/item_modifiers/modify_firearm

# add stored item & durability lore
function mechanization:gadgets/blocks/tinker_table/add_modifiers_lore {index: 0}
function mechanization:gadgets/blocks/tinker_table/add_modifiers_lore {index: 1}
function mechanization:gadgets/blocks/tinker_table/add_modifiers_lore {index: 2}
function mechanization:gadgets/blocks/tinker_table/add_modifiers_lore {index: 3}
function mechanization:gadgets/blocks/tinker_table/add_modifiers_lore {index: 4}
function mechanization:gadgets/blocks/tinker_table/add_modifiers_lore {index: 5}

# mech lore
data modify block -30000000 0 3202 front_text.messages[0] set value '[{"text": "\\uee11", "font": "mechanization:gui", "color": "white", "italic": false}, {"translate": "lore.mechanization.added_by", "color": "#c83219", "italic": false}]'
data modify storage mechanization:temp obj.components."minecraft:lore" append from block -30000000 0 3202 front_text.messages[0]
