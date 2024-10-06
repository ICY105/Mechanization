
# main
function mechanization:base/utils/redstone_active
execute if score #active mechanization.data matches 1 if score @s energy.storage matches 160.. positioned ^ ^ ^1 run function mechanization:machines/blocks/tree_feller/tree_feller_process

# cleanup
execute unless block ~ ~ ~ minecraft:barrier run function mechanization:base/utils/break_block/break_machine_t1
