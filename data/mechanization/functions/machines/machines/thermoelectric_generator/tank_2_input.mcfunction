
#check input
scoreboard players set $temp_1 mechanization.data -1000
execute if data block ~ ~ ~ Items[{Slot:6b}].tag.ctc.traits.liquid.temperature store result score $temp_1 mechanization.data run data get block ~ ~ ~ Items[{Slot:6b}].tag.ctc.traits.liquid.temperature

scoreboard players set $in_0 mechanization.data -1
execute unless score @s du_data matches 1.. if score $temp_1 mechanization.data matches 100.. run scoreboard players set $in_0 mechanization.data 0
execute if score @s du_data matches 1.. if score $temp_1 mechanization.data matches 100.. run data modify storage du:test var set from entity @s Item.tag.tank_2.tag.ctc.traits.liquid.id
execute if score @s du_data matches 1.. if score $temp_1 mechanization.data matches 100.. store success score $temp_0 mechanization.data run data modify storage du:test var set from block ~ ~ ~ Items[{Slot:6b}].tag.ctc.traits.liquid.id
execute if score @s du_data matches 1.. if score $temp_1 mechanization.data matches 100.. if score $temp_0 mechanization.data matches 0 run scoreboard players set $in_0 mechanization.data 0

execute unless score @s du_data matches 1.. if data block ~ ~ ~ Items[{Slot:6b,id:"minecraft:lava_bucket"}] run scoreboard players set $in_0 mechanization.data 0
execute if score @s du_data matches 1.. if data block ~ ~ ~ Items[{Slot:6b,id:"minecraft:lava_bucket"}] if data entity @s Item.tag.tank_2.tag.ctc.traits.liquid{id:"lava"} run scoreboard players set $in_0 mechanization.data 0

execute if data block ~ ~ ~ Items[{Slot:6b,id:"minecraft:bucket"}] run scoreboard players set $in_0 mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:6b,id:"minecraft:glass_bottle"}] run scoreboard players set $in_0 mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:6b}].tag{mech_itemid:1108} unless data block ~ ~ ~ Items[{Slot:6b}].tag.ctc.traits.liquid run scoreboard players set $in_0 mechanization.data 0

#init data
execute if score $in_0 mechanization.data matches 0.. run scoreboard players operation $in_0 mechanization.data = @s du_data
execute if score $in_0 mechanization.data matches 0.. run scoreboard players set $in_1 mechanization.data 4000
execute if score $in_0 mechanization.data matches 0.. run data modify storage du:temp obj set value {input_item:{},output_item:{},liquid_item:{}}
execute if score $in_0 mechanization.data matches 0.. if data block ~ ~ ~ Items[{Slot:6b}] run data modify storage du:temp obj.input_item set from block ~ ~ ~ Items[{Slot:6b}]
execute if score $in_0 mechanization.data matches 0.. if data block ~ ~ ~ Items[{Slot:24b}] run data modify storage du:temp obj.output_item set from block ~ ~ ~ Items[{Slot:24b}]
execute if score $in_0 mechanization.data matches 0.. if data entity @s Item.tag.tank_2 run data modify storage du:temp obj.liquid_item set from entity @s Item.tag.tank_2

#run function
execute if score $in_0 mechanization.data matches 0.. run function mechanization:base/liquids/slot_io

#store data
execute if score $in_0 mechanization.data matches 0.. unless data storage du:temp obj.input_item.id run item replace block ~ ~ ~ container.6 with minecraft:air
execute if score $in_0 mechanization.data matches 0.. run data modify storage du:temp obj.output_item.Slot set value 24b

execute if score $in_0 mechanization.data matches 0.. run scoreboard players operation @s du_data = $out_0 mech_data
execute if score $in_0 mechanization.data matches 0.. run data modify block ~ ~ ~ Items append from storage du:temp obj.input_item
execute if score $in_0 mechanization.data matches 0.. run data modify block ~ ~ ~ Items append from storage du:temp obj.output_item
execute if score $in_0 mechanization.data matches 0.. run data modify entity @s Item.tag.tank_2 set from storage du:temp obj.liquid_item
