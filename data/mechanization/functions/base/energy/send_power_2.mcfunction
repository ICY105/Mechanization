
#determine if machine power or grid power is higher
scoreboard players operation $in_0 mechanization.data = @s mech_power
execute if score $in_0 mechanization.data > @s mechanization.grid_energy run scoreboard players operation $in_0 mechanization.data = @s mechanization.grid_energy

#set predicate
scoreboard players operation $predicate mechanization.data = @s mech_gridid

#transfer to machines
scoreboard players set $out_0 mechanization.data 0
execute if score $in_0 mechanization.data matches 1.. as @e[type=#mechanization:valid_block_entities,predicate=mechanization:matches_gridid,tag=mech_receiver,scores={mech_power=..2000},sort=nearest] run function mechanization:base/energy/send_power_3
scoreboard players operation $in_0 mechanization.data -= $out_0 mech_data
scoreboard players operation @s mechanization.stored_energy -= $out_0 mech_data
scoreboard players operation @s mechanization.grid_energy -= $out_0 mech_data

#transfer to storage
scoreboard players set $out_0 mechanization.data 0
execute if score $in_0 mechanization.data matches 1.. if entity @s[tag=!mech_power_storage] as @e[type=#mechanization:valid_block_entities,predicate=mechanization:matches_gridid,tag=mech_power_storage,sort=nearest] if score @s mechanization.stored_energy < @s mechanization.storage_capacity run function mechanization:base/energy/send_power_3
scoreboard players operation $in_0 mechanization.data -= $out_0 mech_data
scoreboard players operation @s mechanization.stored_energy -= $out_0 mech_data
scoreboard players operation @s mechanization.grid_energy -= $out_0 mech_data

#set grid power
scoreboard players operation @e[type=#mechanization:valid_block_entities,predicate=mechanization:matches_gridid] mechanization.grid_energy = @s mechanization.grid_energy
