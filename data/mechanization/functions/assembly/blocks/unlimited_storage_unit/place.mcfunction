
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.ticking", "mechanization.unlimited_storage_unit", "mechanization.mufflable", "smithed.block"], CustomName:'{"translate":"block.mechanization.unlimited_storage_unit"}', item:{id:"minecraft:blast_furnace", tag:{CustomModelData:6425007}, Count:1b}}
setblock ~ ~ ~ minecraft:furnace{CustomName:'{"translate":"block.mechanization.unlimited_storage_unit","color":"dark_red","italic":false}'}

execute if data entity @s SelectedItem.tag.mechanization.stored_item run data modify entity @e[tag=mechanization.new,sort=nearest,limit=1] item.tag.item set from entity @s SelectedItem.tag.mechanization.stored_item
execute if data entity @s SelectedItem.tag.mechanization.stored_item store result score @e[tag=mechanization.new,sort=nearest,limit=1] mechanization.data run data get entity @s SelectedItem.tag.mechanization.stored_count
function mechanization:base/utils/init_machine
