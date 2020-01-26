
#copy item data
data modify storage du:temp list set from block ~ ~ ~ Items

#setup filter
execute in minecraft:overworld run setblock -29999999 1 1601 green_shulker_box
execute if data entity @s HandItems[0].tag.Enchantments[{id:"mech:filter"}] in minecraft:overworld run data modify block -29999999 1 1601 Items set from entity @s HandItems[0].tag.mech_filter

#run send
scoreboard players operation temp_2 mech_data = @s mech_gridid
execute store result score temp_0 mech_data run data get storage du:temp list
execute if score temp_0 mech_data matches 1.. run function mechanization:assembly/machines/item_transmitter/item_transmitter_send_2

#copy data
data modify block ~ ~ ~ Items set from storage du:temp list
