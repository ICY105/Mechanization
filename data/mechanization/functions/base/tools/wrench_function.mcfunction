
#rotate
execute if entity @s[tag=mech_rotatable] run function mechanization:base/tools/wrench_rotate_machine

#energy relay
tag @s[tag=mech_energy_relay] remove mech_receiver
tag @s[tag=mech_energy_relay] remove mech_transmitter 
execute as @s[tag=mech_energy_relay] run scoreboard players add @s mechanization.data 1
execute as @s[tag=mech_energy_relay,scores={mech_data=2..}] run scoreboard players set @s mechanization.data 0

tag @s[tag=mech_energy_relay,scores={mech_data=0}] add mech_receiver
tag @s[tag=mech_energy_relay,scores={mech_data=1}] add mech_transmitter
execute as @s[tag=mech_energy_relay,scores={mech_data=0}] run title @p actionbar [{"translate":"mech.text.multimeter.mode","color":"dark_aqua","bold":false},{"translate":"mech.text.multimeter.transmission","color":"dark_aqua","bold":false}]
execute as @s[tag=mech_energy_relay,scores={mech_data=1}] run title @p actionbar [{"translate":"mech.text.multimeter.mode","color":"dark_aqua","bold":false},{"translate":"mech.text.multimeter.collection","color":"dark_aqua","bold":false}]
