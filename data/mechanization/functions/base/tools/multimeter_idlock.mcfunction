scoreboard players operation @e[scores={mech_power=-10000..},distance=..0.5] mech_gridid = temp_0 mech_data
execute if entity @e[scores={mech_power=-10000..},distance=..0.5] run title @p actionbar ["",{"translate":"mech.text.multimeter.idlock","color":"dark_green"},{"score":{"name":"@e[scores={mech_power=-10000..},distance=..0.5]","objective":"mech_gridid"},"color":"dark_aqua"}]
