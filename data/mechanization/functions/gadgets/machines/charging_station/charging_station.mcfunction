
#load scoreboard values
execute unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s HandItems[1].tag.mech_power
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s HandItems[1].tag.mech_gridid

### Main

#configure input
execute if data entity @s ArmorItems[{Count:1b}] run function mechanization:gadgets/machines/charging_station/move_armor 
execute if data entity @s HandItems[0].Count run data merge entity @s {DisabledSlots:4136992}
execute unless data entity @s HandItems[0].Count run data merge entity @s {DisabledSlots:2105376}

#get data
execute store result score temp_0 mech_data run data get entity @s HandItems[0].tag.mech_battery.energy
execute store result score temp_1 mech_data run data get entity @s HandItems[0].tag.mech_battery.max_energy
execute store result score temp_2 mech_data run data get entity @s HandItems[0].tag.mech_battery.models
execute store result score temp_3 mech_data run data get entity @s HandItems[0].tag.mech_battery.base_model

#add energy
execute if score @s mech_power >= $gadgets.cf.charge_speed mech_data if score temp_0 mech_data < temp_1 mech_data run scoreboard players operation temp_0 mech_data += $gadgets.cf.charge_speed mech_data
execute if score @s[tag=mech_upgraded] mech_power >= $gadgets.cf.charge_speed mech_data if score temp_0 mech_data < temp_1 mech_data run scoreboard players operation temp_0 mech_data += $gadgets.cf.charge_speed mech_data

execute if score @s mech_power >= $gadgets.cf.charge_speed mech_data if score temp_0 mech_data < temp_1 mech_data run scoreboard players operation @s mech_power -= $gadgets.cf.charge_speed mech_data
execute if score @s[tag=mech_upgraded] mech_power >= $gadgets.cf.charge_speed mech_data if score temp_0 mech_data < temp_1 mech_data run scoreboard players operation @s mech_power -= $gadgets.cf.charge_speed mech_data

execute if score temp_1 mech_data matches 1.. store result entity @s HandItems[0].tag.mech_battery.energy int 1 run scoreboard players get temp_0 mech_data

#lore
data merge block -29999999 0 1602 {Text1:'[{"translate":"mech.item.portable_battery.lore","color":"gray","italic":false,"with":[{"score":{"name":"temp_0","objective":"mech_data"},"color":"gray"},{"score":{"name":"temp_1","objective":"mech_data"},"color":"gray"}]}]'}
execute if score temp_1 mech_data matches 1.. unless data entity @s HandItems[0].tag.display.Lore[0] run data modify entity @s HandItems[0].tag.display.Lore set value ['{"text":""}']
execute if score temp_1 mech_data matches 1.. run data modify entity @s HandItems[0].tag.display.Lore[0] set from block -29999999 0 1602 Text1

#configure model
scoreboard players operation temp_1 mech_data /= temp_2 mech_data
scoreboard players operation temp_0 mech_data /= temp_1 mech_data
scoreboard players operation temp_3 mech_data += temp_0 mech_data
execute if score temp_1 mech_data matches 1.. if score temp_2 mech_data matches 1.. store result entity @s HandItems[0].tag.CustomModelData int 1 run scoreboard players get temp_3 mech_data

#store scoreboard values
execute store result entity @s HandItems[1].tag.mech_power int 1 run scoreboard players get @s mech_power
execute store result entity @s HandItems[1].tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

### cleanup
execute unless block ~ ~ ~ barrier run kill @s


