
execute if block ~ ~ ~ #mechanization:neutron_reflector run tp @s ^ ^ ^-0.005
execute at @s if block ~ ~ ~ #mechanization:neutron_reflector run function mechanization:nuclear/blocks/reactor_core/neutron/interact_reflector_backup
