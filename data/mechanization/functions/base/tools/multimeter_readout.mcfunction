#Creative cell
execute if entity @s[scores={mech_power=0..},tag=mech_battery_creative] run tellraw @p [{"translate":"mech.text.multimeter.energy","color":"dark_green","with":[{"translate":"mech.text.multimeter.infinite","color":"dark_aqua"}]}]

#Default
execute if entity @s[scores={mech_power=0..},tag=!mech_battery_creative] run tellraw @p [{"translate":"mech.text.multimeter.energy","color":"dark_green","with":[{"score":{"name":"@s","objective":"mech_power"},"color":"dark_aqua"}]}]
execute if score @s mech_gridid = @p mech_gridid run tellraw @p [{"translate":"mech.text.multimeter.grid","color":"dark_green"},{"score":{"name":"@s","objective":"mech_gridid"},"color":"dark_aqua"}]
execute if entity @s[tag=mech_upgraded,tag=!mech_upgrade_nether,tag=!mech_upgrade_ender] run tellraw @p [{"translate":"mech.item.machine_upgrade","color":"dark_aqua"}]
execute if entity @s[tag=mech_upgrade_nether] run tellraw @p [{"translate":"mech.item.nether_upgrade","color":"dark_aqua"}]
execute if entity @s[tag=mech_upgrade_ender] run tellraw @p [{"translate":"mech.item.ender_upgrade","color":"dark_aqua"}]

#Relay
execute if entity @s[tag=mech_energy_relay,scores={mech_data=0}] run tellraw @p [{"translate":"mech.text.multimeter.mode","color":"dark_green"},{"translate":"mech.text.multimeter.transmission","color":"dark_aqua"}]
execute if entity @s[tag=mech_energy_relay,scores={mech_data=1}] run tellraw @p [{"translate":"mech.text.multimeter.mode","color":"dark_green"},{"translate":"mech.text.multimeter.collection","color":"dark_aqua"}]
execute if entity @s[tag=mech_energy_relay,scores={mech_data=2}] run tellraw @p [{"translate":"mech.text.multimeter.mode","color":"dark_green"},{"translate":"mech.text.multimeter.import","color":"dark_aqua"}]
execute if entity @s[tag=mech_energy_relay,scores={mech_data=3}] run tellraw @p [{"translate":"mech.text.multimeter.mode","color":"dark_green"},{"translate":"mech.text.multimeter.export","color":"dark_aqua"}]
