#Creative cell
execute as @e[scores={mech_power=0..},distance=..0.5,tag=mech_storage_creative] at @s run tellraw @p ["",{"text":"Energy Stored: ","color":"dark_green"},{"text":"Infinite","color":"dark_aqua"}]

#Default
execute as @e[scores={mech_power=0..},distance=..0.5,tag=!mech_storage_creative] at @s run tellraw @p ["",{"text":"Energy Stored: ","color":"dark_green"},{"score":{"name":"@s","objective":"mech_power"},"color":"dark_aqua"},{"text":" kJ","color":"dark_aqua"}]
execute as @e[scores={mech_power=0..},distance=..0.5,tag=mech_upgraded] at @s run tellraw @p ["",{"text":"Machine is upgraded.","color":"dark_aqua"}]
execute if entity @s[tag=mech_operator] as @e[scores={mech_power=0..},distance=..0.5] at @s run tellraw @p[tag=mech_operator] ["",{"text":"Grid ID: ","color":"dark_green"},{"score":{"name":"@s","objective":"mech_gridid"},"color":"dark_aqua"}]

#Relay
execute as @e[tag=mech_energy_relay,distance=..0.5,scores={mech_data=0}] at @s run tellraw @p ["",{"text":"Current Mode: ","color":"dark_green"},{"text":"Transmission","color":"dark_aqua"}]
execute as @e[tag=mech_energy_relay,distance=..0.5,scores={mech_data=1}] at @s run tellraw @p ["",{"text":"Current Mode: ","color":"dark_green"},{"text":"Collection","color":"dark_aqua"}]
execute as @e[tag=mech_energy_relay,distance=..0.5,scores={mech_data=2}] at @s run tellraw @p ["",{"text":"Current Mode: ","color":"dark_green"},{"text":"Import","color":"dark_aqua"}]
execute as @e[tag=mech_energy_relay,distance=..0.5,scores={mech_data=3}] at @s run tellraw @p ["",{"text":"Current Mode: ","color":"dark_green"},{"text":"Export","color":"dark_aqua"}]
