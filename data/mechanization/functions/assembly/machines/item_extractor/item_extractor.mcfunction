
# main
execute unless block ~ ~ ~ minecraft:moving_piston run function mechanization:assembly/machines/item_extractor/break

function mechanization:base/utils/redstone_active
execute if score #active mechanization.data matches 1 positioned ^ ^ ^-0.5 align xyz positioned ~0.5 ~0.9 ~0.5 if block ~ ~ ~ #mechanization:inv run function mechanization:assembly/machines/item_extractor/move_item
