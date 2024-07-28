
# process recipes
function mechanization:base/utils/redstone_active

execute if score #active mechanization.data matches 1 if score @s fluid.storage.0 matches 1.. run function mechanization:machines/blocks/liquid_accumulator/collect_liquid_checked
execute if score #active mechanization.data matches 1 unless score @s fluid.storage.0 matches 1.. run function mechanization:machines/blocks/liquid_accumulator/collect_liquid_unchecked

# ui
function mechanization:machines/blocks/liquid_accumulator/gui

## cleanup
execute unless block ~ ~ ~ minecraft:dropper run function mechanization:base/utils/break_block/break_machine_t1
