#Creative cell
execute if entity @s[scores={mech_power=0..},tag=mech_battery_creative] run tellraw @p [{"translate":"mech.text.multimeter.energy","color":"dark_green","with":[{"translate":"mech.text.multimeter.infinite","color":"dark_aqua"}]}]

#Default
execute if entity @s[tag=!EF_Use,scores={mech_power=0..},tag=!mech_battery_creative] run tellraw @p [{"translate":"mech.text.multimeter.energy","color":"dark_green","with":[{"score":{"name":"@s","objective":"mech_power"},"color":"dark_aqua"}]}]
execute if entity @s[tag=EF_Use,scores={EF_kJ=0..},tag=!mech_battery_creative] run tellraw @p [{"translate":"mech.text.multimeter.energy","color":"aqua","with":[ [ {"score":{"name":"@s","objective":"EF_kJ"},"color":"yellow"},{"text":"/","color":"aqua"},{"score":{"name":"@s","objective":"EF_kJmax"},"color":"yellow"} ] ]}]

execute if entity @s[tag=mech_upgraded,tag=!mech_upgrade_nether,tag=!mech_upgrade_ender] run tellraw @p [{"translate":"mech.item.machine_upgrade","color":"dark_aqua"}]
execute if entity @s[tag=mech_upgrade_nether] run tellraw @p [{"translate":"mech.item.nether_upgrade","color":"dark_aqua"}]
execute if entity @s[tag=mech_upgrade_ender] run tellraw @p [{"translate":"mech.item.ender_upgrade","color":"dark_aqua"}]

#Relay
execute if entity @s[tag=mech_energy_relay,scores={mech_data=0}] run tellraw @p [{"translate":"mech.text.multimeter.mode","color":"dark_green"},{"translate":"mech.text.multimeter.transmission","color":"dark_aqua"}]
execute if entity @s[tag=mech_energy_relay,scores={mech_data=1}] run tellraw @p [{"translate":"mech.text.multimeter.mode","color":"dark_green"},{"translate":"mech.text.multimeter.collection","color":"dark_aqua"}]
