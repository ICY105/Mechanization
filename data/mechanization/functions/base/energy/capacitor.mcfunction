
# $in_0 mech_data: max power transfer
# $in_1 mech_data: max output buffer
# $in_2 mech_data: max battery energy
# $in_3 mech_data: range (4,8,12,16,20,24,28,32)
# $in_4 mech_data: 0 for no effects, 1 for effects

scoreboard players operation $predicate mech_data = @s mech_gridid

### Receive Energy

#setup
scoreboard players operation $temp_0 mech_data = $in_2 mech_data
scoreboard players operation $temp_0 mech_data -= @s mech_power
execute if score $temp_0 mech_data > $in_0 mech_data run scoreboard players operation $temp_0 mech_data = $in_0 mech_data
scoreboard players operation $temp_2 mech_data = $temp_0 mech_data

#pull energy from generators
execute if score $in_3 mech_data matches 4 if score $temp_0 mech_data matches 1.. as @e[distance=..4,tag=mech_transmitter,predicate=mechanization:base/valid_transmitter,sort=nearest] at @s run function mechanization:base/energy/receive
execute if score $in_3 mech_data matches 8 if score $temp_0 mech_data matches 1.. as @e[distance=..8,tag=mech_transmitter,predicate=mechanization:base/valid_transmitter,sort=nearest] at @s run function mechanization:base/energy/receive
execute if score $in_3 mech_data matches 12 if score $temp_0 mech_data matches 1.. as @e[distance=..12,tag=mech_transmitter,predicate=mechanization:base/valid_transmitter,sort=nearest] at @s run function mechanization:base/energy/receive
execute if score $in_3 mech_data matches 16 if score $temp_0 mech_data matches 1.. as @e[distance=..16,tag=mech_transmitter,predicate=mechanization:base/valid_transmitter,sort=nearest] at @s run function mechanization:base/energy/receive
execute if score $in_3 mech_data matches 20 if score $temp_0 mech_data matches 1.. as @e[distance=..20,tag=mech_transmitter,predicate=mechanization:base/valid_transmitter,sort=nearest] at @s run function mechanization:base/energy/receive
execute if score $in_3 mech_data matches 24 if score $temp_0 mech_data matches 1.. as @e[distance=..24,tag=mech_transmitter,predicate=mechanization:base/valid_transmitter,sort=nearest] at @s run function mechanization:base/energy/receive
execute if score $in_3 mech_data matches 28 if score $temp_0 mech_data matches 1.. as @e[distance=..28,tag=mech_transmitter,predicate=mechanization:base/valid_transmitter,sort=nearest] at @s run function mechanization:base/energy/receive
execute if score $in_3 mech_data matches 32 if score $temp_0 mech_data matches 1.. as @e[distance=..32,tag=mech_transmitter,predicate=mechanization:base/valid_transmitter,sort=nearest] at @s run function mechanization:base/energy/receive

#pull energy from batteries
execute if score $in_3 mech_data matches 4 if score $temp_0 mech_data matches 1.. if predicate mechanization:base/valid_pull_capacitor as @e[distance=..4,tag=mech_power_storage,predicate=mechanization:base/valid_get_battery,sort=nearest] at @s run function mechanization:base/energy/receive
execute if score $in_3 mech_data matches 8 if score $temp_0 mech_data matches 1.. if predicate mechanization:base/valid_pull_capacitor as @e[distance=..8,tag=mech_power_storage,predicate=mechanization:base/valid_get_battery,sort=nearest] at @s run function mechanization:base/energy/receive
execute if score $in_3 mech_data matches 12 if score $temp_0 mech_data matches 1.. if predicate mechanization:base/valid_pull_capacitor as @e[distance=..12,tag=mech_power_storage,predicate=mechanization:base/valid_get_battery,sort=nearest] at @s run function mechanization:base/energy/receive
execute if score $in_3 mech_data matches 16 if score $temp_0 mech_data matches 1.. if predicate mechanization:base/valid_pull_capacitor as @e[distance=..16,tag=mech_power_storage,predicate=mechanization:base/valid_get_battery,sort=nearest] at @s run function mechanization:base/energy/receive
execute if score $in_3 mech_data matches 20 if score $temp_0 mech_data matches 1.. if predicate mechanization:base/valid_pull_capacitor as @e[distance=..20,tag=mech_power_storage,predicate=mechanization:base/valid_get_battery,sort=nearest] at @s run function mechanization:base/energy/receive
execute if score $in_3 mech_data matches 24 if score $temp_0 mech_data matches 1.. if predicate mechanization:base/valid_pull_capacitor as @e[distance=..24,tag=mech_power_storage,predicate=mechanization:base/valid_get_battery,sort=nearest] at @s run function mechanization:base/energy/receive
execute if score $in_3 mech_data matches 28 if score $temp_0 mech_data matches 1.. if predicate mechanization:base/valid_pull_capacitor as @e[distance=..28,tag=mech_power_storage,predicate=mechanization:base/valid_get_battery,sort=nearest] at @s run function mechanization:base/energy/receive
execute if score $in_3 mech_data matches 32 if score $temp_0 mech_data matches 1.. if predicate mechanization:base/valid_pull_capacitor as @e[distance=..32,tag=mech_power_storage,predicate=mechanization:base/valid_get_battery,sort=nearest] at @s run function mechanization:base/energy/receive

#calc difference
execute if score $in_0 mech_data matches 1 if score $temp_0 mech_data < $temp_2 mech_data run playsound mechanization:base.energy_transfer block @a ~ ~ ~ 0.15 1.0
scoreboard players operation $temp_2 mech_data -= $temp_0 mech_data
scoreboard players operation @s mech_power += $temp_2 mech_data

### Send Energy

#setup
scoreboard players operation $temp_0 mech_data = $in_0 mech_data
execute if score @s mech_power < $temp_0 mech_data run scoreboard players operation $temp_0 mech_data = @s mech_power
scoreboard players operation $temp_2 mech_data = $temp_0 mech_data

#send energy to machines
execute if score $in_3 mech_data matches 4 if score $temp_0 mech_data matches 1.. as @e[distance=..4,tag=mech_receiver,predicate=mechanization:matches_gridid,sort=nearest] if score @s mech_power < $in_1 mech_data at @s run function mechanization:base/energy/transmit
execute if score $in_3 mech_data matches 8 if score $temp_0 mech_data matches 1.. as @e[distance=..8,tag=mech_receiver,predicate=mechanization:matches_gridid,sort=nearest] if score @s mech_power < $in_1 mech_data at @s run function mechanization:base/energy/transmit
execute if score $in_3 mech_data matches 12 if score $temp_0 mech_data matches 1.. as @e[distance=..12,tag=mech_receiver,predicate=mechanization:matches_gridid,sort=nearest] if score @s mech_power < $in_1 mech_data at @s run function mechanization:base/energy/transmit
execute if score $in_3 mech_data matches 16 if score $temp_0 mech_data matches 1.. as @e[distance=..16,tag=mech_receiver,predicate=mechanization:matches_gridid,sort=nearest] if score @s mech_power < $in_1 mech_data at @s run function mechanization:base/energy/transmit
execute if score $in_3 mech_data matches 20 if score $temp_0 mech_data matches 1.. as @e[distance=..20,tag=mech_receiver,predicate=mechanization:matches_gridid,sort=nearest] if score @s mech_power < $in_1 mech_data at @s run function mechanization:base/energy/transmit
execute if score $in_3 mech_data matches 24 if score $temp_0 mech_data matches 1.. as @e[distance=..24,tag=mech_receiver,predicate=mechanization:matches_gridid,sort=nearest] if score @s mech_power < $in_1 mech_data at @s run function mechanization:base/energy/transmit
execute if score $in_3 mech_data matches 28 if score $temp_0 mech_data matches 1.. as @e[distance=..28,tag=mech_receiver,predicate=mechanization:matches_gridid,sort=nearest] if score @s mech_power < $in_1 mech_data at @s run function mechanization:base/energy/transmit
execute if score $in_3 mech_data matches 32 if score $temp_0 mech_data matches 1.. as @e[distance=..32,tag=mech_receiver,predicate=mechanization:matches_gridid,sort=nearest] if score @s mech_power < $in_1 mech_data at @s run function mechanization:base/energy/transmit

#calc difference
execute if score $in_0 mech_data matches 1 if score $temp_0 mech_data < $temp_2 mech_data run playsound mechanization:base.energy_transfer block @a ~ ~ ~ 0.15 1.0
scoreboard players operation $temp_2 mech_data -= $temp_0 mech_data
scoreboard players operation @s mech_power -= $temp_2 mech_data
 