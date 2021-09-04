
#check input
scoreboard players set $in_0 mech_data -1
execute if data block ~ ~ ~ Items[{Slot:1b}].tag.ctc.traits.liquid.molten run scoreboard players set $in_0 mech_data 0
execute if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:lava_bucket"}] run scoreboard players set $in_0 mech_data 0

execute if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:bucket"}] run scoreboard players set $in_0 mech_data 0
execute if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:glass_bottle"}] run scoreboard players set $in_0 mech_data 0
execute if data block ~ ~ ~ Items[{Slot:1b}].tag{mech_itemid:1108} unless data block ~ ~ ~ Items[{Slot:1b}].tag.ctc.traits.liquid run scoreboard players set $in_0 mech_data 0

#init data
execute if score $in_0 mech_data matches 0.. run scoreboard players operation $in_0 mech_data = @s mech_fluid
execute if score $in_0 mech_data matches 0.. run scoreboard players set $in_1 mech_data 4000
execute if score $in_0 mech_data matches 0.. run data modify storage du:temp obj set value {input_item:{},output_item:{},liquid_item:{}}
execute if score $in_0 mech_data matches 0.. if data block ~ ~ ~ Items[{Slot:1b}] run data modify storage du:temp obj.input_item set from block ~ ~ ~ Items[{Slot:1b}]
execute if score $in_0 mech_data matches 0.. if data block ~ ~ ~ Items[{Slot:19b}] run data modify storage du:temp obj.output_item set from block ~ ~ ~ Items[{Slot:19b}]
execute if score $in_0 mech_data matches 0.. if data entity @s Item.tag.tank_1 run data modify storage du:temp obj.liquid_item set from entity @s Item.tag.tank_1

#run function
execute if score $in_0 mech_data matches 0.. run function mechanization:base/liquids/slot_io

#store data
execute if score $in_0 mech_data matches 0.. unless data storage du:temp obj.input_item.id run item replace block ~ ~ ~ container.1 with minecraft:air
execute if score $in_0 mech_data matches 0.. run data modify storage du:temp obj.output_item.Slot set value 19b

execute if score $in_0 mech_data matches 0.. run scoreboard players operation @s mech_fluid = $out_0 mech_data
execute if score $in_0 mech_data matches 0.. if data storage du:temp obj.input_item.id run data modify block ~ ~ ~ Items append from storage du:temp obj.input_item
execute if score $in_0 mech_data matches 0.. if data storage du:temp obj.output_item.id run data modify block ~ ~ ~ Items append from storage du:temp obj.output_item
execute if score $in_0 mech_data matches 0.. run data modify entity @s Item.tag.tank_1 set from storage du:temp obj.liquid_item
