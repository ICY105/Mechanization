
# Energy Relay
execute if entity @s[tag=mechanization.energy_relay,scores={mechanization.data=0}] run tellraw @p [{"translate":"mech.text.multimeter.mode","color":"dark_green"},{"translate":"mech.text.multimeter.transmission","color":"dark_aqua"}]
execute if entity @s[tag=mechanization.energy_relay,scores={mechanization.data=1}] run tellraw @p [{"translate":"mech.text.multimeter.mode","color":"dark_green"},{"translate":"mech.text.multimeter.collection","color":"dark_aqua"}]
