
function energy:v1.6/player/modify_energy_3

#loop over inv
data remove storage energy:temp list[0]
execute unless score #player.energy energy.data matches 0 if data storage energy:temp list[0] run function energy:v1.6/player/modify_energy_2
