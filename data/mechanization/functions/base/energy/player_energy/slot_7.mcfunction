
#get data
execute store result score temp_2 mechanization.data run data get block -29999999 0 1601 Items[7].tag.mech_battery.max_energy
execute store result score temp_3 mechanization.data run data get block -29999999 0 1601 Items[7].tag.mech_battery.base_model
execute store result score temp_4 mechanization.data run data get block -29999999 0 1601 Items[7].tag.mech_battery.models

#change energy
scoreboard players operation temp_1 mechanization.data -= temp_0 mech_data
scoreboard players set temp_0 mechanization.data 0

execute if score temp_1 mechanization.data matches ..-1 run scoreboard players operation temp_0 mechanization.data -= temp_1 mech_data
execute if score temp_1 mechanization.data matches ..-1 run scoreboard players set temp_1 mechanization.data 0

#store data
execute store result block -29999999 0 1601 Items[7].tag.mech_battery.energy int 1 run scoreboard players get temp_1 mech_data

#model & lore
data merge block -29999999 0 1602 {Text1:'[{"translate":"mech.item.portable_battery.lore","color":"gray","italic":false,"with":[{"score":{"name":"temp_1","objective":"mech_data"},"color":"gray"},{"score":{"name":"temp_2","objective":"mech_data"},"color":"gray"}]}]'}
data modify block -29999999 0 1601 Items[7].tag.display.Lore[0] set from block -29999999 0 1602 Text1

scoreboard players operation temp_2 mechanization.data /= temp_4 mech_data
scoreboard players operation temp_1 mechanization.data /= temp_2 mech_data
execute unless score temp_3 mechanization.data matches 0 run scoreboard players operation temp_3 mechanization.data += temp_1 mech_data
execute unless score temp_3 mechanization.data matches 0 if score temp_2 mechanization.data matches 1.. store result block -29999999 0 1601 Items[7].tag.CustomModelData int 1 run scoreboard players get temp_3 mech_data
