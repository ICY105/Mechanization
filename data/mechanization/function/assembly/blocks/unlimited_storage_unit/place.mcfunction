
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.ticking", "mechanization.unlimited_storage_unit", "smithed.block"], CustomName:'{"translate":"block.mechanization.unlimited_storage_unit"}', item:{id:"minecraft:blast_furnace",  components:{"minecraft:item_model":"mechanization:assembly/block/storage_unit"}, Count:1b}}
setblock ~ ~ ~ minecraft:furnace{CustomName:'{"translate":"block.mechanization.unlimited_storage_unit","italic":false}'}

execute if data entity @s SelectedItem.components."minecraft:custom_data".mechanization.stored_item run data modify entity @n[tag=mechanization.new] item.components."minecraft:custom_data".item set from entity @s SelectedItem.components."minecraft:custom_data".mechanization.stored_item
execute if data entity @s SelectedItem.components."minecraft:custom_data".mechanization.stored_item store result score @n[tag=mechanization.new] mechanization.data run data get entity @s SelectedItem.components."minecraft:custom_data".mechanization.stored_count
function mechanization:base/utils/init_machine
