
# process recipes
function mechanization:base/utils/redstone_active

execute if score #active mechanization.data matches 1 if score @s mechanization.fluid.0 matches 1.. run function mechanization:machines/machines/liquid_accumulator/collect_liquid_checked
execute if score #active mechanization.data matches 1 unless score @s mechanization.fluid.0 matches 1.. run function mechanization:machines/machines/liquid_accumulator/collect_liquid_unchecked

# ui
execute if data block ~ ~ ~ Items[{Slot:0b}] run function mechanization:machines/machines/liquid_accumulator/tank_input
function mechanization:machines/machines/liquid_accumulator/gui

## cleanup
execute unless block ~ ~ ~ minecraft:dropper run function mechanization:machines/machines/liquid_pipe/remove_adjacent_pipes
execute unless block ~ ~ ~ minecraft:dropper run function mechanization:base/utils/break_machine_t1
