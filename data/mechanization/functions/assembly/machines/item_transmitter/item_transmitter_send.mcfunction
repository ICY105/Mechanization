
#copy item data
data modify entity @s ArmorItems[3].tag.temp set from block ~ ~ ~ Items
execute in minecraft:overworld run data modify block -29999999 0 1600 RecordItem.tag.mech.temp set from entity @s ArmorItems[3].tag.temp

#setup filter
execute in minecraft:overworld run setblock -29999999 1 1601 green_shulker_box
execute if data entity @s HandItems[0].tag.Enchantments[{}] in minecraft:overworld run data modify block -29999999 1 1601 Items set from entity @s HandItems[0].tag.mech_filter

#run send
scoreboard players operation temp_2 mech_data = @s mech_gridid
execute store result score temp_0 mech_data in minecraft:overworld run data get block -29999999 0 1600 RecordItem.tag.mech.temp
execute if score temp_0 mech_data matches 1.. run function mechanization:assembly/machines/item_transmitter/item_transmitter_send_2

#copy data
execute in minecraft:overworld run data modify entity @s ArmorItems[3].tag.temp set from block -29999999 0 1600 RecordItem.tag.mech.temp
data modify block ~ ~ ~ Items set from entity @s ArmorItems[3].tag.temp
execute in minecraft:overworld run data remove block -29999999 0 1600 RecordItem.tag.mech.temp
