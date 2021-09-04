
#check input
scoreboard players set $in_0 mech_data -1
execute if data block ~ ~ ~ Items[{Slot:3b}].tag.ctc.traits.liquid{id:"water"} run scoreboard players set $in_0 mech_data 0
execute if data block ~ ~ ~ Items[{Slot:3b,id:"minecraft:water_bucket"}] run scoreboard players set $in_0 mech_data 0
execute if data block ~ ~ ~ Items[{Slot:3b,id:"minecraft:potion"}].tag{Potion:"minecraft:water"} run scoreboard players set $in_0 mech_data 0

execute if data block ~ ~ ~ Items[{Slot:3b,id:"minecraft:bucket"}] run scoreboard players set $in_0 mech_data 0
execute if data block ~ ~ ~ Items[{Slot:3b,id:"minecraft:glass_bottle"}] run scoreboard players set $in_0 mech_data 0
execute if data block ~ ~ ~ Items[{Slot:3b}].tag{mech_itemid:1108} unless data block ~ ~ ~ Items[{Slot:3b}].tag.ctc.traits.liquid run scoreboard players set $in_0 mech_data 0

#init data
execute if score $in_0 mech_data matches 0.. run scoreboard players operation $in_0 mech_data = @s mech_fluid
execute if score $in_0 mech_data matches 0.. run scoreboard players set $in_1 mech_data 4000
execute if score $in_0 mech_data matches 0.. run data modify storage du:temp obj set value {input_item:{},output_item:{},liquid_item:{}}
execute if score $in_0 mech_data matches 0.. if data block ~ ~ ~ Items[{Slot:3b}] run data modify storage du:temp obj.input_item set from block ~ ~ ~ Items[{Slot:3b}]
execute if score $in_0 mech_data matches 0.. if data block ~ ~ ~ Items[{Slot:21b}] run data modify storage du:temp obj.output_item set from block ~ ~ ~ Items[{Slot:21b}]
execute if score $in_0 mech_data matches 0.. if data entity @s Item.tag.water_item run data modify storage du:temp obj.liquid_item set from entity @s Item.tag.water_item

#run function
execute if score $in_0 mech_data matches 0.. run function mechanization:base/liquids/slot_io

#store data
execute if score $in_0 mech_data matches 0.. unless data storage du:temp obj.input_item.id run item replace block ~ ~ ~ container.3 with minecraft:air
execute if score $in_0 mech_data matches 0.. run data modify storage du:temp obj.output_item.Slot set value 21b

execute if score $in_0 mech_data matches 0.. run scoreboard players operation @s mech_fluid = $out_0 mech_data
execute if score $in_0 mech_data matches 0.. if data storage du:temp obj.input_item.id run data modify block ~ ~ ~ Items append from storage du:temp obj.input_item
execute if score $in_0 mech_data matches 0.. if data storage du:temp obj.output_item.id run data modify block ~ ~ ~ Items append from storage du:temp obj.output_item
execute if score $in_0 mech_data matches 0.. run data modify entity @s Item.tag.water_item set from storage du:temp obj.liquid_item
