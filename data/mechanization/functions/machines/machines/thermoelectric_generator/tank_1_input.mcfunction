
#check input
scoreboard players set $temp_1 mechanization.data 1000
execute if data block ~ ~ ~ Items[{Slot:1b}].tag.ctc.traits.liquid.temperature store result score $temp_1 mechanization.data run data get block ~ ~ ~ Items[{Slot:1b}].tag.ctc.traits.liquid.temperature

scoreboard players set $in_0 mechanization.data -1
execute unless score @s mechanization.stored_fluid matches 1.. if score $temp_1 mechanization.data matches ..99 run scoreboard players set $in_0 mechanization.data 0
execute if score @s mechanization.stored_fluid matches 1.. if score $temp_1 mechanization.data matches ..99 run data modify storage du:test var set from entity @s Item.tag.tank_1.tag.ctc.traits.liquid.id
execute if score @s mechanization.stored_fluid matches 1.. if score $temp_1 mechanization.data matches ..99 store success score $temp_0 mechanization.data run data modify storage du:test var set from block ~ ~ ~ Items[{Slot:1b}].tag.ctc.traits.liquid.id
execute if score @s mechanization.stored_fluid matches 1.. if score $temp_1 mechanization.data matches ..99 if score $temp_0 mechanization.data matches 0 run scoreboard players set $in_0 mechanization.data 0

execute unless score @s mechanization.stored_fluid matches 1.. if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:water_bucket"}] run scoreboard players set $in_0 mechanization.data 0
execute if score @s mechanization.stored_fluid matches 1.. if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:water_bucket"}] if data entity @s Item.tag.tank.tag.ctc.traits.liquid{id:"water"} run scoreboard players set $in_0 mechanization.data 0
execute unless score @s mechanization.stored_fluid matches 1.. if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:potion",tag:{Potion:"minecraft:water"}}] run scoreboard players set $in_0 mechanization.data 0
execute if score @s mechanization.stored_fluid matches 1.. if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:potion",tag:{Potion:"minecraft:water"}}] if data entity @s Item.tag.tank.tag.ctc.traits.liquid{id:"water"} run scoreboard players set $in_0 mechanization.data 0
execute unless score @s mechanization.stored_fluid matches 1.. if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:powder_snow_bucket"}] run scoreboard players set $in_0 mechanization.data 0
execute if score @s mechanization.stored_fluid matches 1.. if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:powder_snow_bucket"}] if data entity @s Item.tag.tank.tag.ctc.traits.liquid{id:"powder_snow"} run scoreboard players set $in_0 mechanization.data 0

execute if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:bucket"}] run scoreboard players set $in_0 mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:glass_bottle"}] run scoreboard players set $in_0 mechanization.data 0
execute if data block ~ ~ ~ Items[{Slot:1b}].tag{mech_itemid:1108} unless data block ~ ~ ~ Items[{Slot:1b}].tag.ctc.traits.liquid run scoreboard players set $in_0 mechanization.data 0

#init data
execute if score $in_0 mechanization.data matches 0.. run scoreboard players operation $in_0 mechanization.data = @s mech_fluid
execute if score $in_0 mechanization.data matches 0.. run scoreboard players set $in_1 mechanization.data 4000
execute if score $in_0 mechanization.data matches 0.. run data modify storage du:temp obj set value {input_item:{},output_item:{},liquid_item:{}}
execute if score $in_0 mechanization.data matches 0.. if data block ~ ~ ~ Items[{Slot:1b}] run data modify storage du:temp obj.input_item set from block ~ ~ ~ Items[{Slot:1b}]
execute if score $in_0 mechanization.data matches 0.. if data block ~ ~ ~ Items[{Slot:19b}] run data modify storage du:temp obj.output_item set from block ~ ~ ~ Items[{Slot:19b}]
execute if score $in_0 mechanization.data matches 0.. if data entity @s Item.tag.tank_1 run data modify storage du:temp obj.liquid_item set from entity @s Item.tag.tank_1

#run function
execute if score $in_0 mechanization.data matches 0.. run function mechanization:base/liquids/slot_io

#store data
execute if score $in_0 mechanization.data matches 0.. unless data storage du:temp obj.input_item.id run item replace block ~ ~ ~ container.1 with minecraft:air
execute if score $in_0 mechanization.data matches 0.. run data modify storage du:temp obj.output_item.Slot set value 19b

execute if score $in_0 mechanization.data matches 0.. run scoreboard players operation @s mechanization.stored_fluid = $out_0 mech_data
execute if score $in_0 mechanization.data matches 0.. run data modify block ~ ~ ~ Items append from storage du:temp obj.input_item
execute if score $in_0 mechanization.data matches 0.. run data modify block ~ ~ ~ Items append from storage du:temp obj.output_item
execute if score $in_0 mechanization.data matches 0.. run data modify entity @s Item.tag.tank_1 set from storage du:temp obj.liquid_item
