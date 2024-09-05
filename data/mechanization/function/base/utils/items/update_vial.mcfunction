
execute store result score #storage mechanization.data run data get storage fluid:io output.output_slot.tag.fluid.storage

execute if score #storage mechanization.data matches 0 run data modify storage fluid:io output.output_slot.tag merge value {CustomPotionColor:16777215,display:{Name:'{"translate":"item.mechanization.vial","italic":false}',Lore:['[{"text":"\\uee11","font":"mechanization:gui","color":"white","italic":false},{"translate":"lore.mechanization.added_by","color":"blue","italic":false}]']}}

execute if score #storage mechanization.data matches 1.. run data modify storage fluid:io output.output_slot.tag.CustomPotionColor set from storage fluid:io output.output_slot.tag.fluid.color
execute if score #storage mechanization.data matches 1.. run data modify block -30000000 0 3202 front_text.messages[0] set value '{"translate":"item.mechanization.filled_vial","italic":false,"with":[{"nbt":"output.output_slot.tag.fluid.name","storage":"fluid:io","interpret":true}]}'
execute if score #storage mechanization.data matches 1.. run data modify storage fluid:io output.output_slot.tag.display.Name set from block -30000000 0 3202 front_text.messages[0]
execute if score #storage mechanization.data matches 1.. run data modify block -30000000 0 3202 front_text.messages[0] set value '{"translate":"lore.mechanization.fluid_amount","italic":false,"color":"gray","with":[{"score":{"name":"#storage","objective":"mechanization.data"}}]}'
execute if score #storage mechanization.data matches 1.. run data modify storage fluid:io output.output_slot.tag.display.Lore set value []
execute if score #storage mechanization.data matches 1.. run data modify storage fluid:io output.output_slot.tag.display.Lore append from block -30000000 0 3202 front_text.messages[0]
execute if score #storage mechanization.data matches 1.. run data modify storage fluid:io output.output_slot.tag.display.Lore append value '[{"text":"\\uee11","font":"mechanization:gui","color":"white","italic":false},{"translate":"lore.mechanization.added_by","color":"blue","italic":false}]'
