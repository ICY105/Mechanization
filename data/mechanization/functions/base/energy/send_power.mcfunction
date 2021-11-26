
#execute if available grid energy > 0
execute if score @s mechanization.grid_energy matches 1.. run function mechanization:base/energy/send_power_2
