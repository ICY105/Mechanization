
#check input
scoreboard players set $in_0 mech_data -1
execute unless score @s mech_fluid matches 1.. run scoreboard players set $in_0 mech_data 0
execute if score @s mech_fluid matches 1.. if data block ~ ~ ~ Items[{Slot:0b}].tag{mech_itemid:1108}.ctc.traits.liquid run data modify storage du:test var set from entity @s Item.tag.tank.tag.ctc.traits.liquid.id
execute if score @s mech_fluid matches 1.. if data block ~ ~ ~ Items[{Slot:0b}].tag{mech_itemid:1108}.ctc.traits.liquid store success score $temp_0 mech_data run data modify storage du:test var set from block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits.liquid.id
execute if score @s mech_fluid matches 1.. if data block ~ ~ ~ Items[{Slot:0b}].tag{mech_itemid:1108}.ctc.traits.liquid if score $temp_0 mech_data matches 0 run scoreboard players set $in_0 mech_data 0

execute if score @s mech_fluid matches 1.. if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:water_bucket"}] if data entity @s Item.tag.tank.tag.ctc.traits.liquid{id:"water"} run scoreboard players set $in_0 mech_data 0
execute if score @s mech_fluid matches 1.. if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:potion",tag:{Potion:"minecraft:water"}}] if data entity @s Item.tag.tank.tag.ctc.traits.liquid{id:"water"} run scoreboard players set $in_0 mech_data 0
execute if score @s mech_fluid matches 1.. if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:lava_bucket"}] if data entity @s Item.tag.tank.tag.ctc.traits.liquid{id:"lava"} run scoreboard players set $in_0 mech_data 0
execute if score @s mech_fluid matches 1.. if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:milk_bucket"}] if data entity @s Item.tag.tank.tag.ctc.traits.liquid{id:"milk"} run scoreboard players set $in_0 mech_data 0
execute if score @s mech_fluid matches 1.. if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:powder_snow_bucket"}] if data entity @s Item.tag.tank.tag.ctc.traits.liquid{id:"powder_snow"} run scoreboard players set $in_0 mech_data 0
execute if score @s mech_fluid matches 1.. if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:honey_bottle"}] if data entity @s Item.tag.tank.tag.ctc.traits.liquid{id:"honey"} run scoreboard players set $in_0 mech_data 0
execute if score @s mech_fluid matches 1.. if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:mushroom_stew"}] if data entity @s Item.tag.tank.tag.ctc.traits.liquid{id:"mushroom_stew"} run scoreboard players set $in_0 mech_data 0
execute if score @s mech_fluid matches 1.. if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:rabbit_stew"}] if data entity @s Item.tag.tank.tag.ctc.traits.liquid{id:"rabbit_stew"} run scoreboard players set $in_0 mech_data 0
execute if score @s mech_fluid matches 1.. if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:beetroot_soup"}] if data entity @s Item.tag.tank.tag.ctc.traits.liquid{id:"beetroot_soup"} run scoreboard players set $in_0 mech_data 0

execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:bucket"}] run scoreboard players set $in_0 mech_data 0
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:glass_bottle"}] run scoreboard players set $in_0 mech_data 0
execute if data block ~ ~ ~ Items[{Slot:0b}].tag{mech_itemid:1108} unless data block ~ ~ ~ Items[{Slot:0b}].tag.ctc.traits.liquid run scoreboard players set $in_0 mech_data 0

#init data
execute if score $in_0 mech_data matches 0.. run scoreboard players operation $in_0 mech_data = @s mech_fluid
execute if score $in_0 mech_data matches 0.. run data modify storage du:temp obj set value {input_item:{},output_item:{},liquid_item:{}}
execute if score $in_0 mech_data matches 0.. if data block ~ ~ ~ Items[{Slot:0b}] run data modify storage du:temp obj.input_item set from block ~ ~ ~ Items[{Slot:0b}]
execute if score $in_0 mech_data matches 0.. if data block ~ ~ ~ Items[{Slot:6b}] run data modify storage du:temp obj.output_item set from block ~ ~ ~ Items[{Slot:6b}]
execute if score $in_0 mech_data matches 0.. if data entity @s Item.tag.tank run data modify storage du:temp obj.liquid_item set from entity @s Item.tag.tank

#run function
execute if score $in_0 mech_data matches 0.. run function mechanization:base/liquids/slot_io

#store data
execute if score $in_0 mech_data matches 0.. unless data storage du:temp obj.input_item.id run item replace block ~ ~ ~ container.0 with minecraft:air
execute if score $in_0 mech_data matches 0.. run data modify storage du:temp obj.output_item.Slot set value 6b

execute if score $in_0 mech_data matches 0.. run scoreboard players operation @s mech_fluid = $out_0 mech_data
execute if score $in_0 mech_data matches 0.. run data modify block ~ ~ ~ Items append from storage du:temp obj.input_item
execute if score $in_0 mech_data matches 0.. run data modify block ~ ~ ~ Items append from storage du:temp obj.output_item
execute if score $in_0 mech_data matches 0.. run data modify entity @s Item.tag.tank set from storage du:temp obj.liquid_item
