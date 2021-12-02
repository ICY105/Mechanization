
#get data
scoreboard players set $base.temp_0 mech_data 0
scoreboard players operation $base.temp_0 mech_data = @s[tag=!mech_battery_qu] mech_power

scoreboard players set $base.temp_1 mech_data 0
execute if entity @s[tag=mech_upgraded] run scoreboard players set $base.temp_1 mech_data 1
execute if entity @s[tag=mech_upgrade_nether] run scoreboard players set $base.temp_1 mech_data 2
execute if entity @s[tag=mech_upgrade_ender] run scoreboard players set $base.temp_1 mech_data 3

#Batteries
execute if entity @s[tag=mech_battery1] run loot spawn ~ ~ ~ loot mechanization:base/tier_1_battery
execute if entity @s[tag=mech_battery2] run loot spawn ~ ~ ~ loot mechanization:base/tier_2_battery
execute if entity @s[tag=mech_battery3] run loot spawn ~ ~ ~ loot mechanization:base/tier_3_battery
#execute if entity @s[tag=mech_battery_qu] run loot spawn ~ ~ ~ loot mechanization:base/quantum_battery
execute if entity @s[tag=mech_battery_qu] run loot spawn ~ ~ ~ loot mechanization:base/tier_3_battery

#execute if entity @s[tag=mech_capacitor1] run loot spawn ~ ~ ~ loot mechanization:base/tier_1_capacitor
#execute if entity @s[tag=mech_capacitor2] run loot spawn ~ ~ ~ loot mechanization:base/tier_2_capacitor
#execute if entity @s[tag=mech_capacitor3] run loot spawn ~ ~ ~ loot mechanization:base/tier_3_capacitor
execute if entity @s[tag=mech_capacitor1] run loot spawn ~ ~ ~ loot mechanization:base/tier_1_battery
execute if entity @s[tag=mech_capacitor2] run loot spawn ~ ~ ~ loot mechanization:base/tier_2_battery
execute if entity @s[tag=mech_capacitor3] run loot spawn ~ ~ ~ loot mechanization:base/tier_3_battery

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

#Cable
execute if entity @s[tag=mech_cable] at @s run function mechanization:base/machines/cable/break

#resource blocks
execute if entity @s[tag=mech_t1_machine_frame] at @s run loot spawn ~ ~ ~ loot mechanization:base/tier_1_machine_frame
execute if entity @s[tag=mech_t2_machine_frame] at @s run loot spawn ~ ~ ~ loot mechanization:base/tier_2_machine_frame
execute if entity @s[tag=mech_t3_machine_frame] at @s run loot spawn ~ ~ ~ loot mechanization:base/tier_3_machine_frame
execute if entity @s[tag=mech_crystal_block] at @s run loot spawn ~ ~ ~ loot mechanization:base/crystal_composite_block
execute if entity @s[tag=mech_tin] at @s run loot spawn ~ ~ ~ loot mechanization:base/tin_block
execute if entity @s[tag=mech_raw_tin] at @s run loot spawn ~ ~ ~ loot mechanization:base/tin_raw_block
execute if entity @s[tag=mech_titanium] at @s run loot spawn ~ ~ ~ loot mechanization:base/titanium_block
execute if entity @s[tag=mech_raw_titanium] at @s run loot spawn ~ ~ ~ loot mechanization:base/titanium_raw_block
execute if entity @s[tag=mech_steel] at @s run loot spawn ~ ~ ~ loot mechanization:base/steel_block
execute if entity @s[tag=mech_raw_steel] at @s run loot spawn ~ ~ ~ loot mechanization:base/steel_raw_block
execute if entity @s[tag=mech_structural] at @s run loot spawn ~ ~ ~ loot mechanization:base/structural_block
execute if entity @s[tag=mech_raw_structural] at @s run loot spawn ~ ~ ~ loot mechanization:base/structural_raw_block
execute if entity @s[tag=mech_conductive] at @s run loot spawn ~ ~ ~ loot mechanization:base/conductive_block
execute if entity @s[tag=mech_raw_conductive] at @s run loot spawn ~ ~ ~ loot mechanization:base/conductive_raw_block
execute if entity @s[tag=mech_titanium_steel] at @s run loot spawn ~ ~ ~ loot mechanization:base/titanium_steel_block
execute if entity @s[tag=mech_raw_titanium_steel] at @s run loot spawn ~ ~ ~ loot mechanization:base/titanium_steel_raw_block
execute if entity @s[tag=mech_reinforced_structural] at @s run loot spawn ~ ~ ~ loot mechanization:base/reinforced_structural_block
execute if entity @s[tag=mech_raw_reinforced_structural] at @s run loot spawn ~ ~ ~ loot mechanization:base/reinforced_structural_raw_block
execute if entity @s[tag=mech_super_conductive] at @s run loot spawn ~ ~ ~ loot mechanization:base/super_conductive_block
execute if entity @s[tag=mech_raw_super_conductive] at @s run loot spawn ~ ~ ~ loot mechanization:base/super_conductive_raw_block
execute if entity @s[tag=mech_ender] at @s run loot spawn ~ ~ ~ loot mechanization:base/ender_block
execute if entity @s[tag=mech_raw_ender] at @s run loot spawn ~ ~ ~ loot mechanization:base/ender_raw_block
execute if entity @s[tag=mech_nether] at @s run loot spawn ~ ~ ~ loot mechanization:base/nether_block
execute if entity @s[tag=mech_raw_nether] at @s run loot spawn ~ ~ ~ loot mechanization:base/nether_raw_block
execute if entity @s[tag=mech_uranium] at @s run loot spawn ~ ~ ~ loot mechanization:base/uranium_block
execute if entity @s[tag=mech_raw_uranium] at @s run loot spawn ~ ~ ~ loot mechanization:base/uranium_raw_block
execute if entity @s[tag=mech_plutonium] at @s run loot spawn ~ ~ ~ loot mechanization:base/plutonium_block
execute if entity @s[tag=mech_raw_plutonium] at @s run loot spawn ~ ~ ~ loot mechanization:base/plutonium_raw_block
execute if entity @s[tag=mech_resource_block] at @s run setblock ~ ~ ~ minecraft:air replace
execute if entity @s[tag=mech_resource_block] at @s run kill @s


#drop items 1
data remove block -29999999 0 1601 Items
execute if block ~ ~ ~ #mechanization:inv run data modify block -29999999 0 1601 Items set from block ~ ~ ~ Items
execute if block ~ ~ ~ #mechanization:inv run data remove block -29999999 0 1601 Items[{tag:{du_gui:1b}}]

function #mechanization:wrench_break

#break adjacent cables
execute if block ~ ~ ~ #du:air if entity @s[tag=mech_cable_init,tag=mech_receiver] at @s run function mechanization:base/machines/cable/remove_adjacent_cable
execute if block ~ ~ ~ #du:air if entity @s[tag=mech_cable_init,tag=mech_transmitter] at @s run function mechanization:base/machines/cable/remove_adjacent_cable
execute if block ~ ~ ~ #du:air if entity @s[tag=mech_cable_init,tag=mech_power_storage] at @s run function mechanization:base/machines/cable/remove_adjacent_cable

#store data to item
execute if score $base.temp_0 mech_data matches 1.. store result entity @e[type=item,sort=nearest,limit=1,distance=..0.5] Item.tag.mech_energy int 1 run scoreboard players get $base.temp_0 mech_data
execute if score $base.temp_0 mech_data matches 1.. run data merge block -29999999 0 1602 {Text1:'[{"translate":"mech.text.multimeter.energy","color":"gray","italic":false,"with":[{"score":{"name":"$base.temp_0","objective":"mech_data"},"color":"gray"}]}]'}
execute if score $base.temp_0 mech_data matches 1.. as @e[type=item,sort=nearest,limit=1,distance=..0.5] run data modify entity @s Item.tag.display.Lore append from block -29999999 0 1602 Text1

execute if score $base.temp_1 mech_data matches 1 as @e[type=item,sort=nearest,limit=1,distance=..0.5] run data modify entity @s Item.tag.display.Lore append value "{\"translate\":\"mech.item.machine_upgrade\",\"color\":\"gray\",\"italic\":false}"
execute if score $base.temp_1 mech_data matches 2 as @e[type=item,sort=nearest,limit=1,distance=..0.5] run data modify entity @s Item.tag.display.Lore append value "{\"translate\":\"mech.item.nether_upgrade\",\"color\":\"gray\",\"italic\":false}"
execute if score $base.temp_1 mech_data matches 3 as @e[type=item,sort=nearest,limit=1,distance=..0.5] run data modify entity @s Item.tag.display.Lore append value "{\"translate\":\"mech.item.ender_upgrade\",\"color\":\"gray\",\"italic\":false}"
execute if score $base.temp_1 mech_data matches 1.. store result entity @e[type=item,sort=nearest,limit=1,distance=..0.5] Item.tag.mech_upgrade int 1 run scoreboard players get $base.temp_1 mech_data

#drop items 2
execute if data block -29999999 0 1601 Items if entity @e[type=item,distance=..0.5] run loot spawn ~ ~ ~ mine -29999999 0 1601 minecraft:air{drop_contents:true}
