
#check input
scoreboard players set $in_0 mech_data -1
execute if data block ~ ~ ~ Items[{Slot:6b}].tag.ctc.traits.liquid{id:"steam"} run scoreboard players set $in_0 mech_data 0
execute if data block ~ ~ ~ Items[{Slot:6b}].tag{mech_itemid:1108} unless data block ~ ~ ~ Items[{Slot:6b}].tag.ctc.traits.liquid run scoreboard players set $in_0 mech_data 0

#init data
execute if score @s du_data matches 1.. unless data entity @s Item.tag.steam_item.id run loot replace block -29999999 0 1601 container.0 loot mechanization:base/liquids/vial_of_steam
execute if score @s du_data matches 1.. unless data entity @s Item.tag.steam_item.id run data modify entity @s Item.tag.steam_item set from block -29999999 0 1601 Items[0]

execute if score $in_0 mech_data matches 0.. run scoreboard players operation $in_0 mech_data = @s du_data
execute if score $in_0 mech_data matches 0.. run scoreboard players set $in_1 mech_data 4000
execute if score $in_0 mech_data matches 0.. run data modify storage du:temp obj set value {input_item:{},output_item:{},liquid_item:{}}
execute if score $in_0 mech_data matches 0.. if data block ~ ~ ~ Items[{Slot:6b}] run data modify storage du:temp obj.input_item set from block ~ ~ ~ Items[{Slot:6b}]
execute if score $in_0 mech_data matches 0.. if data block ~ ~ ~ Items[{Slot:24b}] run data modify storage du:temp obj.output_item set from block ~ ~ ~ Items[{Slot:24b}]
execute if score $in_0 mech_data matches 0.. if data entity @s Item.tag.steam_item run data modify storage du:temp obj.liquid_item set from entity @s Item.tag.steam_item

#run function
execute if score $in_0 mech_data matches 0.. run function mechanization:base/liquids/slot_io

#store data
execute if score $in_0 mech_data matches 0.. unless data storage du:temp obj.input_item.id run item replace block ~ ~ ~ container.6 with minecraft:air
execute if score $in_0 mech_data matches 0.. run data modify storage du:temp obj.output_item.Slot set value 24b

execute if score $in_0 mech_data matches 0.. run scoreboard players operation @s du_data = $out_0 mech_data
execute if score $in_0 mech_data matches 0.. run data modify block ~ ~ ~ Items append from storage du:temp obj.input_item
execute if score $in_0 mech_data matches 0.. run data modify block ~ ~ ~ Items append from storage du:temp obj.output_item
execute if score $in_0 mech_data matches 0.. run data modify entity @s Item.tag.steam_item set from storage du:temp obj.liquid_item
