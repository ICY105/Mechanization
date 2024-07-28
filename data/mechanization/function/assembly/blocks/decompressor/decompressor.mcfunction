
# main
function mechanization:base/utils/redstone_active
execute if score @s energy.storage matches 144.. if data block ~ ~ ~ Items[0] run data modify storage mechanization:temp list set from block ~ ~ ~ Items
execute if score #active mechanization.data matches 1 if data block ~ ~ ~ Items[0] run function mechanization:assembly/blocks/decompressor/check_recipes

# cleanup
execute unless block ~ ~ ~ minecraft:dropper run function mechanization:base/utils/break_block/break_machine_t2
