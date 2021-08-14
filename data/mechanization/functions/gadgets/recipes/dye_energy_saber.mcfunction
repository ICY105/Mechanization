
data modify storage du:temp obj set from block ~ ~ ~ Items[{tag:{mech_itemid:4100}}]
data modify storage du:temp obj.Slot set value 16
data modify block ~ ~ ~ Items append from storage du:temp obj

execute if data block ~ ~ ~ Items[{id:"minecraft:white_dye"}] run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424909
execute if data block ~ ~ ~ Items[{id:"minecraft:orange_dye"}] run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424910
execute if data block ~ ~ ~ Items[{id:"minecraft:magenta_dye"}] run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424911
execute if data block ~ ~ ~ Items[{id:"minecraft:light_blue_dye"}] run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424912
execute if data block ~ ~ ~ Items[{id:"minecraft:yellow_dye"}] run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424913
execute if data block ~ ~ ~ Items[{id:"minecraft:lime_dye"}] run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424914
execute if data block ~ ~ ~ Items[{id:"minecraft:pink_dye"}] run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424915
execute if data block ~ ~ ~ Items[{id:"minecraft:gray_dye"}] run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424916
execute if data block ~ ~ ~ Items[{id:"minecraft:light_gray_dye"}] run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424917
execute if data block ~ ~ ~ Items[{id:"minecraft:cyan_dye"}] run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424918
execute if data block ~ ~ ~ Items[{id:"minecraft:purple_dye"}] run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424919
execute if data block ~ ~ ~ Items[{id:"minecraft:blue_dye"}] run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424920
execute if data block ~ ~ ~ Items[{id:"minecraft:brown_dye"}] run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424921
execute if data block ~ ~ ~ Items[{id:"minecraft:green_dye"}] run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424922
execute if data block ~ ~ ~ Items[{id:"minecraft:red_dye"}] run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424923
execute if data block ~ ~ ~ Items[{id:"minecraft:black_dye"}] run data modify block ~ ~ ~ Items[{Slot:16b}].tag.CustomModelData set value 6424924
