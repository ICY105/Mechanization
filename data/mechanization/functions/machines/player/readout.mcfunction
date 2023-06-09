
# Energy Relay
execute if entity @s[tag=mechanization.energy_relay,scores={mechanization.data=0}] run tellraw @p [{"translate":"text.mechanization.machine_mode","color":"dark_green"},{"translate":"text.mechanization.transmission","color":"dark_aqua"}]
execute if entity @s[tag=mechanization.energy_relay,scores={mechanization.data=1}] run tellraw @p [{"translate":"text.mechanization.machine_mode","color":"dark_green"},{"translate":"text.mechanization.collection","color":"dark_aqua"}]
