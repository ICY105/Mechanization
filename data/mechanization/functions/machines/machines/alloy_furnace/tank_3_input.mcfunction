
#check input
scoreboard players set $in_0 mechanization.data -1
execute if data block ~ ~ ~ Items[{Slot:7b,id:"minecraft:bucket"}] run scoreboard players set $in_0 mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:7b,id:"minecraft:glass_bottle"}] run scoreboard players set $in_0 mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:7b}].tag.mechanization{id:"vial"} unless data block ~ ~ ~ Items[{Slot:7b}].tag.mechanization.liquid.id run scoreboard players set $in_0 mechanization.data 0

#init data
execute if score $in_0 mechanization.data matches 0.. run scoreboard players operation $in_0 mechanization.data = @s mechanization.fluid.2
execute if score $in_0 mechanization.data matches 0.. run scoreboard players set $in_1 mechanization.data 4000
execute if score $in_0 mechanization.data matches 0.. run data modify storage mechanization:temp obj set value {input_item:{},output_item:{},liquid_item:{}}
execute if score $in_0 mechanization.data matches 0.. if data block ~ ~ ~ Items[{Slot:7b}] run data modify storage mechanization:temp obj.input_item set from block ~ ~ ~ Items[{Slot:7b}]
execute if score $in_0 mechanization.data matches 0.. if data block ~ ~ ~ Items[{Slot:25b}] run data modify storage mechanization:temp obj.output_item set from block ~ ~ ~ Items[{Slot:25b}]
execute if score $in_0 mechanization.data matches 0.. if data entity @s Item.tag.tank_3 run data modify storage mechanization:temp obj.liquid_item set from entity @s Item.tag.tank_3

#run function
scoreboard players set $in_1 mechanization.data 4000
execute if score $in_0 mechanization.data matches 0.. run function mechanization:base/liquids/slot_io

#store data
execute if score $in_0 mechanization.data matches 0.. unless data storage mechanization:temp obj.input_item.id run item replace block ~ ~ ~ container.7 with minecraft:air
execute if score $in_0 mechanization.data matches 0.. run data modify storage mechanization:temp obj.output_item.Slot set value 25b

execute if score $in_0 mechanization.data matches 0.. run scoreboard players operation @s mechanization.fluid.2 = $out_0 mechanization.data
execute if score $in_0 mechanization.data matches 0.. if data storage mechanization:temp obj.input_item.id run data modify block ~ ~ ~ Items append from storage mechanization:temp obj.input_item
execute if score $in_0 mechanization.data matches 0.. if data storage mechanization:temp obj.output_item.id run data modify block ~ ~ ~ Items append from storage mechanization:temp obj.output_item
execute if score $in_0 mechanization.data matches 0.. run data modify entity @s Item.tag.tank_3 set from storage mechanization:temp obj.liquid_item
