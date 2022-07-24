
# Summon Entity & Init
summon minecraft:glow_item_frame ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.unlimited_storage_unit", "mechanization.mufflable", "smithed.block"], CustomName:'{"translate":"mech.block.unlimited_storage_unit"}', Item:{id:"minecraft:blast_furnace", tag:{CustomModelData:6425007}, Count:1b}, ItemRotation:0, Invisible:1b, Invulnerable:1b, Fixed:1b, Silent:1b}
execute if data entity @s SelectedItem.tag.mechanization.stored_item run data modify entity @e[tag=mechanization.new,sort=nearest,limit=1] Item.tag.item set from entity @s SelectedItem.tag.mechanization.stored_item
execute if data entity @s SelectedItem.tag.mechanization.stored_item store result score @e[tag=mechanization.new,sort=nearest,limit=1] mechanization.data run data get entity @s SelectedItem.tag.mechanization.stored_count
setblock ~ ~ ~ minecraft:furnace{CustomName:'{"translate":"mech.block.unlimited_storage_unit","color":"dark_red","italic":false}'}
tag @s remove mechanization.new
