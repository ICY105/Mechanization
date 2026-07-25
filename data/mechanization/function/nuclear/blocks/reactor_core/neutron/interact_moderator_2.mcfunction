
# get from lookup table
function mechanization:nuclear/math/m.get_data_entry with storage mechanization:temp io.get_data_entry

# process fast_scattering
scoreboard players operation #quantity mechanization.data = #quantity_fast mechanization.data
scoreboard players operation #chance mechanization.data = #fast_scattering.chance mechanization.data
function mechanization:nuclear/blocks/reactor_core/neutron/comput_neutron_interaction

scoreboard players operation #quantity_fast mechanization.data -= #out mechanization.data
scoreboard players operation #quantity_thermal mechanization.data += #out mechanization.data

# process fast_capture
scoreboard players operation #quantity mechanization.data = #quantity_fast mechanization.data
scoreboard players operation #chance mechanization.data = #fast_capture.chance mechanization.data
function mechanization:nuclear/blocks/reactor_core/neutron/comput_neutron_interaction

scoreboard players operation #quantity_fast mechanization.data -= #out mechanization.data

# process thermal_capture
scoreboard players operation #quantity mechanization.data = #quantity_thermal mechanization.data
scoreboard players operation #chance mechanization.data = #thermal_capture.chance mechanization.data
function mechanization:nuclear/blocks/reactor_core/neutron/comput_neutron_interaction

scoreboard players operation #quantity_thermal mechanization.data -= #out mechanization.data

# loop
execute if score #quantity_fast mechanization.data matches 0 if score #quantity_thermal mechanization.data matches 0 run scoreboard players remove #loop mechanization.data 0

scoreboard players remove #loop mechanization.data 1
execute if score #loop mechanization.data matches 1.. run function mechanization:nuclear/blocks/reactor_core/neutron/interact_moderator_2
