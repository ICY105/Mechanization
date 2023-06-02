
# Creative cell
execute if entity @s[tag=mechanization.battery.creative] run tellraw @p [{"translate":"text.mechanization.stored_energy","color":"dark_green","with":[{"translate":"text.mechanization.infinite_energy","color":"dark_aqua"}]}]

# Default
execute if entity @s[scores={energy.storage=0..},tag=!mechanization.battery.creative] run tellraw @p [{"translate":"text.mechanization.stored_energy","color":"dark_green","with":[{"score":{"name":"@s","objective":"energy.storage"},"color":"dark_aqua"}]}]

execute if entity @s[tag=mechanization.upgraded,tag=!mechanization.upgraded.nether,tag=!mechanization.upgraded.ender] run tellraw @p [{"translate":"item.mechanization.machine_upgrade","color":"dark_aqua"}]
execute if entity @s[tag=mechanization.upgraded.nether] run tellraw @p [{"translate":"item.mechanization.nether_upgrade","color":"dark_aqua"}]
execute if entity @s[tag=mechanization.upgraded.ender] run tellraw @p [{"translate":"item.mechanization.ender_upgrade","color":"dark_aqua"}]
execute if entity @s[tag=mechanization.muffled] run tellraw @p [{"translate":"item.mechanization.muffler_upgrade","color":"dark_aqua"}]

# run debug
execute if score #debug mechanization.data matches 1 run function mechanization:base/player/multimeter/readout_debug
