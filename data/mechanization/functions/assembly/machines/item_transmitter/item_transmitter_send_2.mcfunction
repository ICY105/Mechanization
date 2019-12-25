
#check valid
execute in minecraft:overworld run data modify block -29999999 0 1601 Items set value []
execute in minecraft:overworld run data modify block -29999999 0 1601 Items append from block -29999999 0 1600 RecordItem.tag.mech.temp[0]

#send item
scoreboard players set temp_1 mech_data 0
execute in minecraft:overworld unless data block -29999999 0 1601 Items[{tag:{du_gui:1b}}] store result score temp_1 mech_data run loot insert -29999999 1 1601 mine -29999999 0 1601 minecraft:air{drop_contents:true}

execute if entity @s[tag=!mech_upgraded] if score temp_1 mech_data matches 1.. as @e[tag=mech_item_receiver,tag=mech_active,sort=nearest,distance=..16] if score @s mech_gridid = temp_2 mech_data at @s if score temp_1 mech_data matches 1.. run function mechanization:assembly/machines/item_transmitter/insert_item
execute if entity @s[tag=mech_upgraded,tag=!mech_upgrade_nether,tag=!mech_upgrade_ender] if score temp_1 mech_data matches 1.. as @e[tag=mech_item_receiver,tag=mech_active,sort=nearest,distance=0.1..] if score @s mech_gridid = temp_2 mech_data at @s if score temp_1 mech_data matches 1.. run function mechanization:assembly/machines/item_transmitter/insert_item
execute if entity @s[tag=mech_upgrade_nether] if score temp_1 mech_data matches 1.. as @e[tag=mech_item_receiver,tag=mech_active,sort=nearest] if score @s mech_gridid = temp_2 mech_data at @s if score temp_1 mech_data matches 1.. run function mechanization:assembly/machines/item_transmitter/insert_item
execute if entity @s[tag=mech_upgrade_ender] if score temp_1 mech_data matches 1.. as @e[tag=mech_item_receiver,tag=mech_active,sort=nearest] if score @s mech_gridid = temp_2 mech_data at @s if score temp_1 mech_data matches 1.. run function mechanization:assembly/machines/item_transmitter/insert_item

#loop/remove data
execute if score temp_1 mech_data matches 0.. in minecraft:overworld run data modify block -29999999 0 1600 RecordItem.tag.mech.temp append from block -29999999 0 1600 RecordItem.tag.mech.temp[0]
execute in minecraft:overworld run data remove block -29999999 0 1600 RecordItem.tag.mech.temp[0]

#loop
scoreboard players remove temp_0 mech_data 1
execute if score temp_1 mech_data matches 1.. run scoreboard players set temp_0 mech_data 0
execute if score temp_0 mech_data matches 1.. run function mechanization:assembly/machines/item_transmitter/item_transmitter_send_2

