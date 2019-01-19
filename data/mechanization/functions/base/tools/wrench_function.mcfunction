
#mechanization devices
tag @s[tag=mech_energy_relay] remove mech_receiver
tag @s[tag=mech_energy_relay] remove mech_transmitter 
execute as @s[tag=mech_energy_relay] run scoreboard players add @s mech_data 1
execute as @s[tag=mech_energy_relay,scores={mech_data=4..}] run scoreboard players set @s mech_data 0

tag @s[tag=mech_energy_relay,scores={mech_data=0}] add mech_receiver
tag @s[tag=mech_energy_relay,scores={mech_data=1..2}] add mech_transmitter
tag @s[tag=mech_energy_relay,scores={mech_data=3}] add mech_receiver
execute as @s[tag=mech_energy_relay,scores={mech_data=0}] run title @p actionbar ["",{"translate":"mech.text.multimeter.mode","color":"dark_aqua","bold":false},{"translate":"mech.text.multimeter.transmission","color":"dark_aqua","bold":false}]
execute as @s[tag=mech_energy_relay,scores={mech_data=1}] run title @p actionbar ["",{"translate":"mech.text.multimeter.mode","color":"dark_aqua","bold":false},{"translate":"mech.text.multimeter.collection","color":"dark_aqua","bold":false}]
execute as @s[tag=mech_energy_relay,scores={mech_data=2}] run title @p actionbar ["",{"translate":"mech.text.multimeter.mode","color":"dark_aqua","bold":false},{"translate":"mech.text.multimeter.import","color":"dark_aqua","bold":false}]
execute as @s[tag=mech_energy_relay,scores={mech_data=3}] run title @p actionbar ["",{"translate":"mech.text.multimeter.mode","color":"dark_aqua","bold":false},{"translate":"mech.text.multimeter.export","color":"dark_aqua","bold":false}]
