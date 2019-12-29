
#get data
scoreboard players set temp_3 mech_data 0
scoreboard players operation temp_3 mech_data = @s[tag=!mech_storageq] mech_power

scoreboard players set temp_4 mech_data 0
execute if entity @s[tag=mech_upgraded] run scoreboard players set temp_4 mech_data 1
execute if entity @s[tag=mech_upgrade_nether] run scoreboard players set temp_4 mech_data 2
execute if entity @s[tag=mech_upgrade_ender] run scoreboard players set temp_4 mech_data 3

#Batteries
execute if entity @s[tag=mech_storage1] run loot spawn ~ ~ ~ loot mechanization:base/tier_1_battery
execute if entity @s[tag=mech_storage2] run loot spawn ~ ~ ~ loot mechanization:base/tier_2_battery
execute if entity @s[tag=mech_storage3] run loot spawn ~ ~ ~ loot mechanization:base/tier_3_battery
execute if entity @s[tag=mech_storageq] run loot spawn ~ ~ ~ loot mechanization:base/quantum_battery
execute if entity @s[tag=mech_power_storage] at @s run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_power_storage]

#Energy Relay
execute if entity @s[tag=mech_energy_relay] run loot spawn ~ ~ ~ loot mechanization:base/energy_relay
execute if entity @s[tag=mech_energy_relay] at @s run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_energy_relay]

#Machine Crafter
execute if entity @s[tag=mech_machine_crafter] run loot spawn ~ ~ ~ loot mechanization:base/machine_crafting_table
execute if entity @s[tag=mech_machine_crafter] at @s run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mech_machine_crafter]

#drop items 1
data remove block -29999999 0 1601 Items
execute if block ~ ~ ~ #mechanization:inv run data modify block -29999999 0 1601 Items set from block ~ ~ ~ Items
execute if block ~ ~ ~ #mechanization:inv run data remove block -29999999 0 1601 Items[{tag:{du_gui:1b}}]

function #mechanization:wrench_break

#drop items 2
execute if data block -29999999 0 1601 Items if entity @e[type=item,distance=..0.5] run loot spawn ~ ~ ~ mine -29999999 0 1601 minecraft:air{drop_contents:true}

#store data to item
execute if score temp_3 mech_data matches 1.. store result entity @e[type=item,sort=nearest,limit=1,distance=..0.5] Item.tag.mech_energy int 1 run scoreboard players get temp_3 mech_data
execute if score temp_3 mech_data matches 1.. run data merge block -29999999 0 1602 {Text1:'[{"translate":"mech.text.multimeter.energy","color":"gray","italic":false,"with":[{"score":{"name":"temp_3","objective":"mech_data"},"color":"gray"}]}]'}
execute if score temp_3 mech_data matches 1.. as @e[type=item,sort=nearest,limit=1,distance=..0.5] run data modify entity @s Item.tag.display.Lore append from block -29999999 0 1602 Text1

execute if score temp_4 mech_data matches 1 as @e[type=item,sort=nearest,limit=1,distance=..0.5] run data modify entity @s Item.tag.display.Lore append value "{\"translate\":\"mech.item.machine_upgrade\",\"color\":\"gray\",\"italic\":false}"
execute if score temp_4 mech_data matches 2 as @e[type=item,sort=nearest,limit=1,distance=..0.5] run data modify entity @s Item.tag.display.Lore append value "{\"translate\":\"mech.item.nether_upgrade\",\"color\":\"gray\",\"italic\":false}"
execute if score temp_4 mech_data matches 3 as @e[type=item,sort=nearest,limit=1,distance=..0.5] run data modify entity @s Item.tag.display.Lore append value "{\"translate\":\"mech.item.ender_upgrade\",\"color\":\"gray\",\"italic\":false}"
execute if score temp_4 mech_data matches 1.. store result entity @e[type=item,sort=nearest,limit=1,distance=..0.5] Item.tag.mech_upgrade int 1 run scoreboard players get temp_4 mech_data
