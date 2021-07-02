
scoreboard players operation @s[scores={mech_power=-10000..}] mech_gridid = $base.temp_0 mech_data
execute if entity @s[scores={mech_power=-10000..}] run title @p actionbar ["",{"translate":"mech.text.multimeter.idlock","color":"dark_green"},{"score":{"name":"@s","objective":"mech_gridid"},"color":"dark_aqua"}]
