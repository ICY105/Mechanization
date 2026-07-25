
execute if score @s mechanization.data matches 2000.. run scoreboard players set @s mechanization.data 2000
execute store result storage mechanization:temp io.get_data_entry.temperature int 0.1 run scoreboard players get @s mechanization.data

function mechanization:nuclear/math/m.get_data_entry with storage mechanization:temp io.get_data_entry
function mechanization:nuclear/math/m.get_data_entry_fission with storage mechanization:temp io.get_data_entry

# process fast_fission
scoreboard players operation #quantity mechanization.data = #quantity_fast mechanization.data
scoreboard players operation #chance mechanization.data = #fast_fission.chance mechanization.data
function mechanization:nuclear/blocks/reactor_core/neutron/comput_neutron_interaction

scoreboard players operation #quantity_fast mechanization.data -= #out mechanization.data
scoreboard players operation @s mechanization.data += #out mechanization.data
scoreboard players operation #out mechanization.data *= #cons.3 mechanization.data
scoreboard players operation @s mechanization.fluid.in += #out mechanization.data

# process thermal_fission
scoreboard players operation #quantity mechanization.data = #quantity_thermal mechanization.data
scoreboard players operation #chance mechanization.data = #thermal_fission.chance mechanization.data
function mechanization:nuclear/blocks/reactor_core/neutron/comput_neutron_interaction

scoreboard players operation #quantity_thermal mechanization.data -= #out mechanization.data
scoreboard players operation @s mechanization.data += #out mechanization.data
scoreboard players operation #out mechanization.data *= #cons.3 mechanization.data
scoreboard players operation @s mechanization.fluid.in += #out mechanization.data

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
execute if score #loop mechanization.data matches 1.. run function mechanization:nuclear/blocks/reactor_core/neutron/interact_reactor_core_2
