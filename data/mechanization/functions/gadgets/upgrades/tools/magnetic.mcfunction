scoreboard players set in_0 mech_data 8
function mechanization:base/tools/player_energy/use_energy

execute if score out_0 mech_data matches 1 as @e[type=item,distance=..8] run data merge entity @s {PickupDelay:0}
execute if score out_0 mech_data matches 1 as @e[type=item,distance=..8] run tp @s ~ ~0.5 ~
