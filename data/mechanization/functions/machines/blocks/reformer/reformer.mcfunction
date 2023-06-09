
# ui
function mechanization:machines/blocks/reformer/gui

# repair
function mechanization:base/utils/redstone_active
execute if score #active mechanization.data matches 1 if score @s energy.storage matches 128.. if score @s fluid.storage.0 matches 1.. if data block ~ ~ ~ Items[{Slot:3b}] unless data block ~ ~ ~ Items[{Slot:3b}].tag.Unbreakable run function mechanization:machines/blocks/reformer/repair

# cleanup
execute unless block ~ ~ ~ minecraft:dropper run function mechanization:base/utils/break_block/break_machine_t2
