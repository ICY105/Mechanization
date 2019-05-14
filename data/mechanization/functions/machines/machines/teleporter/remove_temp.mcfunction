

scoreboard players remove in_0 mech_data 1
execute in minecraft:overworld run data remove block -29999999 0 1600 RecordItem.tag.mech.temp[0]
execute if score in_0 mech_data matches 1.. run function mechanization:machines/machines/teleporter/remove_temp