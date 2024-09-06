
execute store result score #storage mechanization.data run data get storage fluid:io output.output_slot.components."minecraft:custom_data".fluid.storage

execute if score #storage mechanization.data matches 0 run data modify storage fluid:io output.output_slot set value {id:"minecraft:bucket", Count:1b}

execute if score #storage mechanization.data matches 1.. run data modify storage fluid:io output.output_slot merge value {id:"minecraft:potion",tag:{CustomModelData:6421106,HideFlags: 38,mechanization:{id:"bucket"}}}
execute if score #storage mechanization.data matches 1.. run data modify storage fluid:io output.output_slot.components."minecraft:potion_contents".custom_color set from storage fluid:io output.output_slot.components."minecraft:custom_data".fluid.color
execute if score #storage mechanization.data matches 1.. run data modify block -30000000 0 3202 front_text.messages[0] set value '{"translate":"item.mechanization.filled_bucket","italic":false,"with":[{"nbt":"output.output_slot.components."minecraft:custom_data".fluid.name","storage":"fluid:io","interpret":true}]}'
execute if score #storage mechanization.data matches 1.. run data modify storage fluid:io output.output_slot.components."minecraft:item_name" set from block -30000000 0 3202 front_text.messages[0]
execute if score #storage mechanization.data matches 1.. run data modify block -30000000 0 3202 front_text.messages[0] set value '{"translate":"lore.mechanization.fluid_amount","italic":false,"color":"gray","with":[{"score":{"name":"#storage","objective":"mechanization.data"}}]}'
execute if score #storage mechanization.data matches 1.. run data modify storage fluid:io output.output_slot.components."minecraft:lore" set value []
execute if score #storage mechanization.data matches 1.. run data modify storage fluid:io output.output_slot.components."minecraft:lore" append from block -30000000 0 3202 front_text.messages[0]
execute if score #storage mechanization.data matches 1.. run data modify storage fluid:io output.output_slot.components."minecraft:lore" append value '[{"text":"\\uee11","font":"mechanization:gui","color":"white","italic":false},{"translate":"lore.mechanization.added_by","color":"blue","italic":false}]'
