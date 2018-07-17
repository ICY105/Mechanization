#Creative cell
execute as @e[scores={mech_power=0..},distance=..0.5,tag=mech_storage_creative] at @s run tellraw @p ["",{"translate":"mech.text.multimeter.energy","color":"dark_green"},{"translate":"mech.text.multimeter.infinite","color":"dark_aqua"}]

#Default
execute as @e[scores={mech_power=0..},distance=..0.5,tag=!mech_storage_creative] at @s run tellraw @p ["",{"translate":"mech.text.multimeter.energy","color":"dark_green"},{"score":{"name":"@s","objective":"mech_power"},"color":"dark_aqua"},{"text":" kJ","color":"dark_aqua"}]
execute as @e[scores={mech_power=0..},distance=..0.5,tag=mech_upgraded] at @s run tellraw @p ["",{"translate":"mech.text.multimeter.upgraded","color":"dark_aqua"}]
execute if entity @s[tag=mech_operator] as @e[scores={mech_power=0..},distance=..0.5] at @s run tellraw @p[tag=mech_operator] ["",{"translate":"mech.text.multimeter.grid","color":"dark_green"},{"score":{"name":"@s","objective":"mech_gridid"},"color":"dark_aqua"}]

#Relay
execute as @e[tag=mech_energy_relay,distance=..0.5,scores={mech_data=0}] at @s run tellraw @p ["",{"translate":"mech.text.multimeter.mode","color":"dark_green"},{"translate":"mech.text.multimeter.transmission","color":"dark_aqua"}]
execute as @e[tag=mech_energy_relay,distance=..0.5,scores={mech_data=1}] at @s run tellraw @p ["",{"translate":"mech.text.multimeter.mode","color":"dark_green"},{"translate":"mech.text.multimeter.collection","color":"dark_aqua"}]
execute as @e[tag=mech_energy_relay,distance=..0.5,scores={mech_data=2}] at @s run tellraw @p ["",{"translate":"mech.text.multimeter.mode","color":"dark_green"},{"translate":"mech.text.multimeter.import","color":"dark_aqua"}]
execute as @e[tag=mech_energy_relay,distance=..0.5,scores={mech_data=3}] at @s run tellraw @p ["",{"translate":"mech.text.multimeter.mode","color":"dark_green"},{"translate":"mech.text.multimeter.export","color":"dark_aqua"}]
