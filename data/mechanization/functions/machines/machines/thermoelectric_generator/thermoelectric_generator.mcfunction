
## load scoreboard values
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.stored_energy matches -2147483648.. store result score @s mechanization.stored_energy run data get entity @s Item.tag.mech_power
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.network_id matches -2147483648.. store result score @s mechanization.network_id run data get entity @s Item.tag.mech_gridid
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.network_id matches -2147483648.. store result score @s mechanization.stored_fluid run data get entity @s Item.tag.mech_fluid
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.network_id matches -2147483648.. store result score @s du_data run data get entity @s Item.tag.du_data

## Main

#ui
execute if data block ~ ~ ~ Items[{Slot:1b}] run function mechanization:machines/machines/thermoelectric_generator/tank_1_input
execute if data block ~ ~ ~ Items[{Slot:6b}] run function mechanization:machines/machines/thermoelectric_generator/tank_2_input

#active
tag @s remove mech_active
execute if score @s mechanization.stored_fluid matches 5.. if score @s du_data matches 5.. run tag @s add mech_active
execute if score @s[tag=mech_upgrade_nether] mechanization.stored_fluid matches 5.. run tag @s add mech_active
execute if score @s[tag=mech_upgrade_ender] du_data matches 5.. run tag @s add mech_active

#gui
function mechanization:machines/machines/thermoelectric_generator/gui

#power
execute if entity @s[tag=mech_active] store result score $temp_0 mechanization.data run data get entity @s Item.tag.tank_1.tag.ctc.traits.liquid.temperature
execute if entity @s[tag=mech_active] store result score $temp_1 mechanization.data run data get entity @s Item.tag.tank_2.tag.ctc.traits.liquid.temperature
execute if score @s[tag=mech_active,tag=mech_upgrade_nether] du_data matches ..4 run scoreboard players set $temp_0 mechanization.data 500
execute if score @s[tag=mech_active,tag=mech_upgrade_ender] mechanization.stored_fluid matches ..4 run scoreboard players set $temp_0 mechanization.data 100

scoreboard players remove $temp_0 mechanization.data 100
scoreboard players operation $temp_1 mechanization.data /= $cons.10 du_data
scoreboard players operation $temp_1 mechanization.data -= $temp_0 mech_data
scoreboard players operation $temp_1 mechanization.data /= $cons.10 du_data

execute if score $temp_1 mechanization.data matches ..0 run scoreboard players set $temp_1 mechanization.data 1
scoreboard players operation $temp_1 mechanization.data *= $machines.cf.thermoelectric.power mech_data
scoreboard players operation $temp_1 mechanization.data /= $cons.100 du_data

execute if entity @s[tag=mech_upgraded] run scoreboard players operation $temp_1 mechanization.data *= $cons.3 du_data
execute if entity @s[tag=mech_upgraded] run scoreboard players operation $temp_1 mechanization.data /= $cons.2 du_data
execute if entity @s[tag=mech_active] run scoreboard players operation @s mechanization.stored_energy += $temp_1 mech_data
execute if entity @s[tag=mech_active] if score @s mechanization.stored_fluid matches 5.. run scoreboard players remove @s mechanization.stored_fluid 5
execute if entity @s[tag=mech_active] if score @s du_data matches 5.. run scoreboard players remove @s du_data 5
execute if entity @s[tag=mech_active] if score @s mechanization.stored_fluid matches 0 run data modify entity @s Item.tag.tank_1 set value {}
execute if entity @s[tag=mech_active] if score @s du_data matches 0 run data modify entity @s Item.tag.tank_2 set value {}

## store scoreboard values
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_power int 1 run scoreboard players get @s mech_power
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_gridid int 1 run scoreboard players get @s mech_gridid
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_water_tank int 1 run scoreboard players get @s mech_fluid
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_steam_tank int 1 run scoreboard players get @s du_data

## cleanup
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:machines/machines/liquid_pipe/remove_adjacent_pipes
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:base/utils/break_machine_t1
