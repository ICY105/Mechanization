
# Creative cell
execute if entity @s[tag=mechanization.battery.creative] run tellraw @p [{"translate":"mech.text.multimeter.energy","color":"dark_green","with":[{"translate":"mech.text.multimeter.infinite","color":"dark_aqua"}]}]

# Default
execute if entity @s[scores={energy.storage=0..},tag=!mechanization.battery.creative] run tellraw @p [{"translate":"mech.text.multimeter.energy","color":"dark_green","with":[{"score":{"name":"@s","objective":"energy.storage"},"color":"dark_aqua"}]}]

execute if entity @s[tag=mechanization.upgraded,tag=!mechanization.upgraded.nether,tag=!mechanization.upgraded.ender] run tellraw @p [{"translate":"mech.item.machine_upgrade","color":"dark_aqua"}]
execute if entity @s[tag=mechanization.upgraded.nether] run tellraw @p [{"translate":"mech.item.nether_upgrade","color":"dark_aqua"}]
execute if entity @s[tag=mechanization.upgraded.ender] run tellraw @p [{"translate":"mech.item.ender_upgrade","color":"dark_aqua"}]
execute if entity @s[tag=mechanization.muffled] run tellraw @p [{"translate":"mech.item.muffler_upgrade","color":"dark_aqua"}]

# Energy Relay
execute if entity @s[tag=mechanization.energy_relay,scores={mechanization.data=0}] run tellraw @p [{"translate":"mech.text.multimeter.mode","color":"dark_green"},{"translate":"mech.text.multimeter.transmission","color":"dark_aqua"}]
execute if entity @s[tag=mechanization.energy_relay,scores={mechanization.data=0}] run tellraw @p [{"translate":"mech.text.multimeter.mode","color":"dark_green"},{"translate":"mech.text.multimeter.collection","color":"dark_aqua"}]
