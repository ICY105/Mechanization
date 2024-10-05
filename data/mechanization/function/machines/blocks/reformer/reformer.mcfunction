
# repair
function mechanization:base/utils/redstone_active
execute if score #active mechanization.data matches 1 if score @s energy.storage matches 128.. if score @s fluid.storage.0 matches 1.. if items block ~ ~ ~ container.12 * run function mechanization:machines/blocks/reformer/repair

# cleanup
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:base/utils/break_block/break_machine_t2
