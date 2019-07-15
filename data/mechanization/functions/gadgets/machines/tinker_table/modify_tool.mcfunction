
execute if block ~ ~ ~ barrel{Items:[ {tag:{OreDict:["upgradeAutoSmelt"]}} ]} run data modify block ~ ~ ~ Items[{Slot:17b}].tag.du_auto_smelt set value 1b
execute if block ~ ~ ~ barrel{Items:[ {tag:{OreDict:["upgradeTrash"]}} ]} run data modify block ~ ~ ~ Items[{Slot:17b}].tag.du_trash set value 1b

scoreboard players set temp_0 mech_data 0
execute if block ~ ~ ~ barrel{Items:[ {Slot:11b,tag:{mech_itemid:4209}} ]} run scoreboard players add temp_0 mech_data 32000
execute if block ~ ~ ~ barrel{Items:[ {Slot:12b,tag:{mech_itemid:4209}} ]} run scoreboard players add temp_0 mech_data 32000
execute if block ~ ~ ~ barrel{Items:[ {Slot:13b,tag:{mech_itemid:4209}} ]} run scoreboard players add temp_0 mech_data 32000
execute if block ~ ~ ~ barrel{Items:[ {Slot:14b,tag:{mech_itemid:4209}} ]} run scoreboard players add temp_0 mech_data 32000
execute if block ~ ~ ~ barrel{Items:[ {Slot:15b,tag:{mech_itemid:4209}} ]} run scoreboard players add temp_0 mech_data 32000
execute if score temp_0 mech_data matches 1.. run data modify block ~ ~ ~ Items[{Slot:17b}].tag.mech_battery set value {models:0,base_model:0,max_energy:0,energy:0}
execute if score temp_0 mech_data matches 1.. store result block ~ ~ ~ Items[{Slot:17b}].tag.mech_battery.max_energy int 1 run scoreboard players get temp_0 mech_data
