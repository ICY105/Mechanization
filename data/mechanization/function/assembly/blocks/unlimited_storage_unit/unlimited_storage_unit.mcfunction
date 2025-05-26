
# ui
item replace block ~ ~ ~ container.1 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/fill_slot"]

# run IO commands
execute unless score @s mechanization.data matches 2147483580.. if items block ~ ~ ~ container.0 * run function mechanization:assembly/blocks/unlimited_storage_unit/input
execute if score @s mechanization.data matches 1.. run function mechanization:assembly/blocks/unlimited_storage_unit/output
execute if score @s mechanization.data matches 0 unless items block ~ ~ ~ container.2 * if data entity @s item.components."minecraft:custom_data".item run data remove entity @s item.components."minecraft:custom_data".item

# cleanup
execute unless block ~ ~ ~ minecraft:furnace run function mechanization:base/utils/break_block/break_machine_t2

