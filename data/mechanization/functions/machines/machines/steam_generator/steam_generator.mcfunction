
## load scoreboard values
execute unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s Item.tag.mech_power
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s Item.tag.mech_gridid
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_fluid run data get entity @s Item.tag.mech_fluid
execute unless score @s mech_gridid matches -2147483648.. store result score @s du_data run data get entity @s Item.tag.du_data

## Main

execute if score @s mech_data matches 1.. run scoreboard players remove @s mech_data 1

#ui
execute if data block ~ ~ ~ Items[{Slot:3b}] run function mechanization:machines/machines/steam_generator/water_tank_input
execute if data block ~ ~ ~ Items[{Slot:6b}] run function mechanization:machines/machines/steam_generator/steam_tank_input
execute unless score @s mech_data matches 1.. unless score @s du_data matches 3900.. if score @s mech_fluid matches 1.. if data block ~ ~ ~ Items[{Slot:10b}] run function mechanization:machines/machines/steam_generator/add_fuel

function mechanization:machines/machines/steam_generator/gui

#generate heat
scoreboard players set $temp_0 mech_data 12
execute if entity @s[tag=mech_upgraded] run scoreboard players add $temp_0 mech_data 6
execute if entity @s[tag=mech_upgrade_ender] run scoreboard players add $temp_0 mech_data 6
execute if entity @s[tag=mech_upgrade_nether] run scoreboard players add $temp_0 mech_data 30
execute if entity @s[tag=mech_upgrade_nether] run scoreboard players remove @s du_data 3

#convert water + heat into steam
execute if score @s mech_data matches 1.. if score @s mech_fluid matches 1.. run scoreboard players operation @s du_data += $temp_0 mech_data
execute if score @s mech_data matches 1.. if score @s mech_fluid matches 1.. run scoreboard players operation @s mech_fluid -= $temp_0 mech_data
execute if score @s mech_data matches 1.. if score @s mech_fluid matches ..-1 run scoreboard players set @s mech_fluid 0
execute if score @s mech_data matches 1.. if score @s du_data matches 4001.. run scoreboard players set @s du_data 4000

#convert steam into power
scoreboard players operation $temp_0 mech_data += $temp_0 mech_data
execute if score @s du_data matches 2000.. run scoreboard players operation $temp_1 mech_data = @s du_data
execute if score @s du_data matches 2000.. run scoreboard players remove $temp_1 mech_data 2000
execute if score @s du_data matches 2000.. if score $temp_1 mech_data > $temp_0 mech_data run scoreboard players operation $temp_1 mech_data = $temp_0 mech_data
execute if score @s du_data matches 2000.. if score @s mech_power matches ..2000 run scoreboard players operation @s mech_power += $temp_1 mech_data
execute if score @s du_data matches 2000.. run scoreboard players operation @s du_data -= $temp_1 mech_data

#leak steam if no fuel
execute if score @s mech_data matches 0 if score @s du_data matches 10.. run scoreboard players remove @s du_data 10

#model
execute if score @s mech_data matches 0 store success entity @s Item.tag.CustomModelData int 6422001 if entity @s
execute if score @s mech_data matches 1.. store success entity @s Item.tag.CustomModelData int 6422902 if entity @s

execute if score @s du_data matches 1.. unless data entity @s Item.tag.steam_item.id run loot replace block -29999999 0 1601 container.0 loot mechanization:base/liquids/vial_of_steam
execute if score @s du_data matches 1.. unless data entity @s Item.tag.steam_item.id run data modify entity @s Item.tag.steam_item set from block -29999999 0 1601 Items[0]

## store scoreboard values
execute store result entity @s Item.tag.mech_power int 1 run scoreboard players get @s mech_power
execute store result entity @s Item.tag.mech_gridid int 1 run scoreboard players get @s mech_gridid
execute store result entity @s Item.tag.mech_water_tank int 1 run scoreboard players get @s mech_fluid
execute store result entity @s Item.tag.mech_steam_tank int 1 run scoreboard players get @s du_data

## cleanup
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:machines/machines/liquid_pipe/remove_adjacent_pipes
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:base/utils/break_machine_t1
