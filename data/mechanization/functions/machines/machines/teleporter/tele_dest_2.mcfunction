
#get data
execute store result score temp_0 mech_data in minecraft:overworld run data get block -29999999 0 1600 RecordItem.tag.mech.teleporters[0].uuid

#check data
execute if score temp_0 mech_data = @s mech_data in minecraft:overworld run data modify block -29999999 0 1600 RecordItem.tag.mech.temp append from block -29999999 0 1600 RecordItem.tag.mech.teleporters[0]

#cycle
execute in minecraft:overworld run data modify block -29999999 0 1600 RecordItem.tag.mech.teleporters append from block -29999999 0 1600 RecordItem.tag.mech.teleporters[0]
execute in minecraft:overworld run data remove block -29999999 0 1600 RecordItem.tag.mech.teleporters[0] 

#repeat
scoreboard players remove in_0 mech_data 1
execute if score in_0 mech_data matches 1.. run function mechanization:machines/machines/teleporter/tele_dest_2
