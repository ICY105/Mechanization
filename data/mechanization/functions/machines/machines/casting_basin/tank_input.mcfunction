
#check input
scoreboard players set $in_0 mechanization.data -1
execute if score @s mechanization.fluid.0 matches 1.. if data block ~ ~ ~ Items[{Slot:0b}].tag.mechanization{id:"vial"}.liquid.molten run data modify storage mechanization:temp var set from entity @s Item.tag.tank.tag.mechanization.liquid.id
execute if score @s mechanization.fluid.0 matches 1.. if data block ~ ~ ~ Items[{Slot:0b}].tag.mechanization{id:"vial"}.liquid.molten store success score $temp_0 mechanization.data run data modify storage mechanization:temp var set from block ~ ~ ~ Items[{Slot:0b}].tag.mechanization.liquid.id
execute if score @s mechanization.fluid.0 matches 1.. if data block ~ ~ ~ Items[{Slot:0b}].tag.mechanization{id:"vial"}.liquid.molten if score $temp_0 mechanization.data matches 0 run scoreboard players set $in_0 mechanization.data 0

execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:bucket"}] run scoreboard players set $in_0 mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:glass_bottle"}] run scoreboard players set $in_0 mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:0b}].tag.mechanization{id:"vial"} unless data block ~ ~ ~ Items[{Slot:0b}].tag.mechanization.liquid run scoreboard players set $in_0 mechanization.data 0

#init data
execute if score $in_0 mechanization.data matches 0.. run scoreboard players operation $in_0 mechanization.data = @s mechanization.fluid.0
execute if score $in_0 mechanization.data matches 0.. run data modify storage mechanization:temp obj set value {input_item:{},output_item:{},liquid_item:{}}
execute if score $in_0 mechanization.data matches 0.. if data block ~ ~ ~ Items[{Slot:0b}] run data modify storage mechanization:temp obj.input_item set from block ~ ~ ~ Items[{Slot:0b}]
execute if score $in_0 mechanization.data matches 0.. if data block ~ ~ ~ Items[{Slot:18b}] run data modify storage mechanization:temp obj.output_item set from block ~ ~ ~ Items[{Slot:18b}]
execute if score $in_0 mechanization.data matches 0.. if data entity @s Item.tag.tank run data modify storage mechanization:temp obj.liquid_item set from entity @s Item.tag.tank

#run function
scoreboard players set $in_1 mechanization.data 4000
execute if score $in_0 mechanization.data matches 0.. run function mechanization:base/liquids/slot_io

#store data
execute if score $in_0 mechanization.data matches 0.. unless data storage mechanization:temp obj.input_item.id run item replace block ~ ~ ~ container.0 with minecraft:air
execute if score $in_0 mechanization.data matches 0.. run data modify storage mechanization:temp obj.output_item.Slot set value 18b

execute if score $in_0 mechanization.data matches 0.. run scoreboard players operation @s mechanization.fluid.0 = $out_0 mechanization.data
execute if score $in_0 mechanization.data matches 0.. if data storage mechanization:temp obj.input_item.id run data modify block ~ ~ ~ Items append from storage mechanization:temp obj.input_item
execute if score $in_0 mechanization.data matches 0.. if data storage mechanization:temp obj.output_item.id run data modify block ~ ~ ~ Items append from storage mechanization:temp obj.output_item
execute if score $in_0 mechanization.data matches 0.. run data modify entity @s Item.tag.tank set from storage mechanization:temp obj.liquid_item
