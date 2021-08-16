
#damage
scoreboard players set $temp_0 mech_data 50
#fire rate
scoreboard players set $temp_1 mech_data 10
#velocity
scoreboard players set $temp_2 mech_data 6
#heat
scoreboard players set $temp_3 mech_data 100
#energy
scoreboard players set $temp_4 mech_data 128
#count
scoreboard players set $temp_5 mech_data 1
#bouncy
scoreboard players set $temp_6 mech_data 1
#model
scoreboard players set $temp_7 mech_data 6424925

#chambers
execute if data storage du:temp list[{Slot:14b}].tag{mech_itemid:4206} run scoreboard players set $temp_0 mech_data 250
execute if data storage du:temp list[{Slot:14b}].tag{mech_itemid:4206} run scoreboard players set $temp_1 mech_data 50
execute if data storage du:temp list[{Slot:14b}].tag{mech_itemid:4206} run scoreboard players add $temp_7 mech_data 1

execute if data storage du:temp list[{Slot:14b}].tag{mech_itemid:4207} run scoreboard players set $temp_0 mech_data 10
execute if data storage du:temp list[{Slot:14b}].tag{mech_itemid:4207} run scoreboard players set $temp_1 mech_data 2
execute if data storage du:temp list[{Slot:14b}].tag{mech_itemid:4207} run scoreboard players add $temp_7 mech_data 2

#pump
execute if data storage du:temp list[{Slot:13b}].tag{mech_itemid:4211} run scoreboard players operation $temp_0 mech_data *= $cons.2 du_data
execute if data storage du:temp list[{Slot:13b}].tag{mech_itemid:4211} run scoreboard players operation $temp_1 mech_data *= $cons.2 du_data

execute if data storage du:temp list[{Slot:13b}].tag{mech_itemid:4212} run scoreboard players operation $temp_0 mech_data /= $cons.2 du_data
execute if data storage du:temp list[{Slot:13b}].tag{mech_itemid:4212} run scoreboard players operation $temp_1 mech_data /= $cons.2 du_data

#heat sink
execute if data storage du:temp list[{Slot:12b}].tag{mech_itemid:4216} run scoreboard players set $temp_3 mech_data 85
execute if data storage du:temp list[{Slot:12b}].tag{mech_itemid:4216} run scoreboard players set $temp_4 mech_data 192

execute if data storage du:temp list[{Slot:12b}].tag{mech_itemid:4217} run scoreboard players set $temp_3 mech_data 115
execute if data storage du:temp list[{Slot:12b}].tag{mech_itemid:4217} run scoreboard players set $temp_4 mech_data 64

#barrels
execute if data storage du:temp list[{Slot:15b}].tag{mech_itemid:4201} run scoreboard players operation $temp_1 mech_data *= $cons.5 du_data
execute if data storage du:temp list[{Slot:15b}].tag{mech_itemid:4201} run scoreboard players set $temp_2 mech_data 4
execute if data storage du:temp list[{Slot:15b}].tag{mech_itemid:4201} run scoreboard players set $temp_5 mech_data 9
execute if data storage du:temp list[{Slot:15b}].tag{mech_itemid:4201} run scoreboard players set $temp_6 mech_data 0
execute if data storage du:temp list[{Slot:15b}].tag{mech_itemid:4201} run scoreboard players add $temp_7 mech_data 3

execute if data storage du:temp list[{Slot:15b}].tag{mech_itemid:4202} run scoreboard players set $temp_2 mech_data 10
execute if data storage du:temp list[{Slot:15b}].tag{mech_itemid:4202} run scoreboard players set $temp_6 mech_data 0
execute if data storage du:temp list[{Slot:15b}].tag{mech_itemid:4202} run scoreboard players add $temp_7 mech_data 6

#modify
scoreboard players operation $temp_3 mech_data *= $temp_1 mech_data
scoreboard players operation $temp_3 mech_data /= $cons.10 du_data
execute if score $temp_3 mech_data matches ..25 run scoreboard players set $temp_3 mech_data 25

scoreboard players operation $temp_4 mech_data *= $temp_1 mech_data
scoreboard players operation $temp_4 mech_data /= $cons.16 du_data

#store data
execute store result storage du:temp obj.tag.mech_gun.damage int 1 run scoreboard players get $temp_0 mech_data
execute store result storage du:temp obj.tag.mech_gun.fire_rate int 1 run scoreboard players get $temp_1 mech_data
execute store result storage du:temp obj.tag.mech_gun.velocity int 1 run scoreboard players get $temp_2 mech_data
execute store result storage du:temp obj.tag.mech_gun.heat int 1 run scoreboard players get $temp_3 mech_data
execute store result storage du:temp obj.tag.mech_gun.energy int 1 run scoreboard players get $temp_4 mech_data
execute store result storage du:temp obj.tag.mech_gun.count int 1 run scoreboard players get $temp_5 mech_data
execute store result storage du:temp obj.tag.mech_gun.bouncy int 1 run scoreboard players get $temp_6 mech_data
execute store result storage du:temp obj.tag.CustomModelData int 1 run scoreboard players get $temp_7 mech_data

#display data
scoreboard players operation $temp_0 mech_data /= $cons.10 du_data
execute if score $temp_0 mech_data matches 0 run scoreboard players set $temp_0 mech_data 1
data modify block -29999999 0 1602 Text1 set value '[{"text":" ","color":"dark_green","italic":"false"},{"score":{"name":"$temp_0","objective":"mech_data"}}," ",{"translate":"mech.lore.damage"}]'
data modify storage du:temp obj.tag.display.Lore append from block -29999999 0 1602 Text1
data modify block -29999999 0 1602 Text1 set value '[{"text":" ","color":"dark_green","italic":"false"},{"score":{"name":"$temp_1","objective":"mech_data"}}," ",{"translate":"mech.lore.fire_rate"}]'
data modify storage du:temp obj.tag.display.Lore append from block -29999999 0 1602 Text1
data modify block -29999999 0 1602 Text1 set value '[{"text":" ","color":"dark_green","italic":"false"},{"score":{"name":"$temp_2","objective":"mech_data"}}," ",{"translate":"mech.lore.velocity"}]'
data modify storage du:temp obj.tag.display.Lore append from block -29999999 0 1602 Text1
execute if score $temp_5 mech_data matches 2.. run data modify block -29999999 0 1602 Text1 set value '[{"text":" ","color":"dark_green","italic":"false"},{"score":{"name":"$temp_5","objective":"mech_data"}}," ",{"translate":"mech.lore.shot_count"}]'
execute if score $temp_5 mech_data matches 2.. run data modify storage du:temp obj.tag.display.Lore append from block -29999999 0 1602 Text1
data modify block -29999999 0 1602 Text1 set value '[{"text":" ","color":"dark_green","italic":"false"},{"score":{"name":"$temp_3","objective":"mech_data"}}," ",{"translate":"mech.lore.heat"}]'
data modify storage du:temp obj.tag.display.Lore append from block -29999999 0 1602 Text1
data modify block -29999999 0 1602 Text1 set value '[{"text":" ","color":"dark_green","italic":"false"},{"score":{"name":"$temp_4","objective":"mech_data"}}," ",{"translate":"mech.lore.energy"}]'
data modify storage du:temp obj.tag.display.Lore append from block -29999999 0 1602 Text1
execute if score $temp_6 mech_data matches 1 run data modify block -29999999 0 1602 Text1 set value '[{"translate":"mech.lore.bouncy","color":"dark_green","italic":"false"}]'
data modify storage du:temp obj.tag.display.Lore append value '[{"translate":"mech.lore.added_by","color":"blue","italic":false}]'
