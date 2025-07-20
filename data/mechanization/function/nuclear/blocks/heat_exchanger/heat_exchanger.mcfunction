
# run if has fluids
execute if score @s fluid.storage.0 matches 1.. if score @s fluid.storage.1 matches 1.. run function mechanization:nuclear/blocks/heat_exchanger/exchange

# cleanup
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:base/utils/break_block/break_machine_t1
