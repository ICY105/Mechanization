
# ui
item replace block ~ ~ ~ container.1 with minecraft:structure_block{CustomModelData:6421202,HideFlags:63,mechanization:{gui_item:1b},display:{Name:'""'}}

# run IO commands
execute unless score @s mechanization.data matches 2147483580.. if data block ~ ~ ~ Items[{Slot:0b}] run function mechanization:assembly/blocks/unlimited_storage_unit/input
execute if score @s mechanization.data matches 1.. unless data block ~ ~ ~ Items[{Slot:2b,Count:64b}] run function mechanization:assembly/blocks/unlimited_storage_unit/output
execute if score @s mechanization.data matches 0 unless data block ~ ~ ~ Items[{Slot:2b}] if data entity @s Item.tag.item run data remove entity @s Item.tag.item

# cleanup
execute unless block ~ ~ ~ minecraft:furnace run function mechanization:base/utils/break_machine_t2

