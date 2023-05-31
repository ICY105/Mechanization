
#check input
scoreboard players set $in_0 mechanization.data -1
execute if data block ~ ~ ~ Items[{Slot:6b}].tag.mechanization.liquid{id:"steam"} run scoreboard players set $in_0 mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:6b}].tag.mechanization{id:"vial"} unless data block ~ ~ ~ Items[{Slot:6b}].tag.mechanization.liquid run scoreboard players set $in_0 mechanization.data 0

#init data
execute if score $in_0 mechanization.data matches 0.. run scoreboard players operation $in_0 mechanization.data = @s mechanization.fluid.1
execute if score $in_0 mechanization.data matches 0.. run scoreboard players set $in_1 mechanization.data 4000
execute if score $in_0 mechanization.data matches 0.. run data modify storage mechanization:temp obj set value {input_item:{},output_item:{},liquid_item:{}}
execute if score $in_0 mechanization.data matches 0.. if data block ~ ~ ~ Items[{Slot:6b}] run data modify storage mechanization:temp obj.input_item set from block ~ ~ ~ Items[{Slot:6b}]
execute if score $in_0 mechanization.data matches 0.. if data block ~ ~ ~ Items[{Slot:24b}] run data modify storage mechanization:temp obj.output_item set from block ~ ~ ~ Items[{Slot:24b}]
execute if score $in_0 mechanization.data matches 0.. if data entity @s Item.tag.steam_item run data modify storage mechanization:temp obj.liquid_item set from entity @s Item.tag.steam_item

#run function
scoreboard players set $in_1 mechanization.data 4000
execute if score $in_0 mechanization.data matches 0.. run function mechanization:base/liquids/slot_io

#store data
execute if score $in_0 mechanization.data matches 0.. unless data storage mechanization:temp obj.input_item.id run item replace block ~ ~ ~ container.6 with minecraft:air
execute if score $in_0 mechanization.data matches 0.. run data modify storage mechanization:temp obj.output_item.Slot set value 24b

execute if score $in_0 mechanization.data matches 0.. run scoreboard players operation @s mechanization.fluid.1 = $out_0 mechanization.data
execute if score $in_0 mechanization.data matches 0.. if data storage mechanization:temp obj.input_item.id run data modify block ~ ~ ~ Items append from storage mechanization:temp obj.input_item
execute if score $in_0 mechanization.data matches 0.. if data storage mechanization:temp obj.output_item.id run data modify block ~ ~ ~ Items append from storage mechanization:temp obj.output_item
execute if score $in_0 mechanization.data matches 0.. run data modify entity @s Item.tag.steam_item set from storage mechanization:temp obj.liquid_item
