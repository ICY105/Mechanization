
#Add to rate, then check for control rode
execute positioned ~ ~-1 ~ store success score temp_0 mech_data if entity @e[tag=mech_control_rod,tag=mech_active,distance=..1]
scoreboard players add @s[tag=mech_uranium] du_move_y 3
scoreboard players add @s[tag=mech_plutonium] du_move_y 2
execute if entity @s[tag=mech_uranium] if score temp_0 mech_data matches 1 run scoreboard players remove @s du_move_y 7
execute if entity @s[tag=mech_plutonium] if score temp_0 mech_data matches 1 run scoreboard players remove @s du_move_y 6
execute if score @s du_move_y matches ..-16 run scoreboard players set @s du_move_y -16
execute if score @s du_move_y matches 64.. run scoreboard players set @s du_move_y 64

#Get Fuel grade, add rate multiplier, add to current heat
execute store result score temp_0 mech_data run data get entity @s HandItems[0].tag.FuelGrade
scoreboard players set temp_1 mech_data 16
scoreboard players operation temp_0 mech_data *= temp_1 mech_data
scoreboard players operation temp_0 mech_data *= @s du_move_y
scoreboard players operation @s du_move_x += temp_0 mech_data

#Process Cooling
scoreboard players set temp_2 mech_data 0
execute if score @s du_move_x matches 100000.. run function mechanization:nuclear/machines/fission_reactor/cooling/start
execute if score temp_2 mech_data matches 1.. run playsound mechanization:nuclear.steam_boil block @a[distance=..16] ~ ~1 ~ 1.5

#Add Power to Turbine
scoreboard players operation heat_0 mech_data *= $nuclear.cf.fission_modifier mech_data
scoreboard players operation heat_0 mech_data /= $cons.100 du_data

scoreboard players set temp_0 mech_data 400
scoreboard players operation heat_0 mech_data /= temp_0 mech_data

execute if score heat_0 mech_data matches 10.. store result score temp_0 mech_data if entity @e[tag=mech_turbine,scores={mech_power=..2000},distance=..5]
execute if score heat_0 mech_data matches 10.. if score temp_0 mech_data matches 1.. run scoreboard players operation heat_0 mech_data /= temp_0 mech_data

execute if score heat_0 mech_data > $nuclear.cf.turbine_power mech_data run scoreboard players operation heat_0 mech_data = $nuclear.cf.turbine_power mech_data
execute if score heat_0 mech_data matches 10.. if score temp_0 mech_data matches 1.. run scoreboard players operation @e[tag=mech_turbine,scores={mech_power=..2000},distance=..5] mech_power += heat_0 mech_data
execute if score heat_0 mech_data matches 10.. if score temp_0 mech_data matches 1.. run tag @e[tag=mech_turbine,scores={mech_power=..2000},distance=..5] add mech_active
execute if score heat_0 mech_data matches 10.. if score temp_0 mech_data matches 1.. run playsound mechanization:nuclear.steam_turbine_active block @a[distance=..16] ~ ~2 ~ 2

#reduce fuel durability
execute store result score temp_0 mech_data run data get entity @s HandItems[0].tag.FuelGrade
execute store result score temp_1 mech_data run data get entity @s HandItems[0].tag.FuelSpent
execute if score temp_0 mech_data < temp_1 mech_data run loot replace entity @s weapon.mainhand loot mechanization:nuclear/spent_fuel_cell
scoreboard players add temp_1 mech_data 1
execute store result entity @s HandItems[0].tag.FuelSpent int 1 run scoreboard players get temp_1 mech_data

#Cleanup
scoreboard players set @s[scores={du_move_x=..20000}] du_move_x 20000
execute if score $nuclear.config.small_explosion mech_data matches 0 if score @s du_move_x matches 2000000.. run function mechanization:nuclear/machines/fission_reactor/explode
execute if score $nuclear.config.small_explosion mech_data matches 1 if score @s du_move_x matches 2000000.. run function mechanization:nuclear/machines/fission_reactor/explode_small
playsound mechanization:nuclear.fission_reactor_active block @a[distance=..16] ~ ~1 ~ 0.5
