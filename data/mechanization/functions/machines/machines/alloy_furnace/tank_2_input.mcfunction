
#check input
scoreboard players set $in_0 mech_data -1
execute if data block ~ ~ ~ Items[{Slot:4b}].tag.ctc.traits.liquid.molten run scoreboard players set $in_0 mech_data 0
execute if data block ~ ~ ~ Items[{Slot:4b,id:"minecraft:lava_bucket"}] run scoreboard players set $in_0 mech_data 0

execute if data block ~ ~ ~ Items[{Slot:4b,id:"minecraft:bucket"}] run scoreboard players set $in_0 mech_data 0
execute if data block ~ ~ ~ Items[{Slot:4b,id:"minecraft:glass_bottle"}] run scoreboard players set $in_0 mech_data 0
execute if data block ~ ~ ~ Items[{Slot:4b}].tag{mech_itemid:1108} unless data block ~ ~ ~ Items[{Slot:4b}].tag.ctc.traits.liquid run scoreboard players set $in_0 mech_data 0

#init data
execute if score $in_0 mech_data matches 0.. run scoreboard players operation $in_0 mech_data = @s du_data
execute if score $in_0 mech_data matches 0.. run scoreboard players set $in_1 mech_data 4000
execute if score $in_0 mech_data matches 0.. run data modify storage du:temp obj set value {input_item:{},output_item:{},liquid_item:{}}
execute if score $in_0 mech_data matches 0.. if data block ~ ~ ~ Items[{Slot:4b}] run data modify storage du:temp obj.input_item set from block ~ ~ ~ Items[{Slot:4b}]
execute if score $in_0 mech_data matches 0.. if data block ~ ~ ~ Items[{Slot:22b}] run data modify storage du:temp obj.output_item set from block ~ ~ ~ Items[{Slot:22b}]
execute if score $in_0 mech_data matches 0.. if data entity @s Item.tag.tank_2 run data modify storage du:temp obj.liquid_item set from entity @s Item.tag.tank_2

#run function
execute if score $in_0 mech_data matches 0.. run function mechanization:base/liquids/slot_io

#store data
execute if score $in_0 mech_data matches 0.. unless data storage du:temp obj.input_item.id run item replace block ~ ~ ~ container.4 with minecraft:air
execute if score $in_0 mech_data matches 0.. run data modify storage du:temp obj.output_item.Slot set value 22b

execute if score $in_0 mech_data matches 0.. run scoreboard players operation @s du_data = $out_0 mech_data
execute if score $in_0 mech_data matches 0.. run data modify block ~ ~ ~ Items append from storage du:temp obj.input_item
execute if score $in_0 mech_data matches 0.. run data modify block ~ ~ ~ Items append from storage du:temp obj.output_item
execute if score $in_0 mech_data matches 0.. run data modify entity @s Item.tag.tank_2 set from storage du:temp obj.liquid_item
