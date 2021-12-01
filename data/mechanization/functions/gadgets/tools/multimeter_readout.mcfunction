
execute if entity @s[tag=mech_charging_station] store result score temp_0 mech_data run data get entity @s HandItems[0].tag.mech_battery.energy
execute if entity @s[tag=mech_charging_station] store result score temp_1 mech_data run data get entity @s HandItems[0].tag.mech_battery.max_energy
execute if entity @s[tag=mech_charging_station] if score temp_0 mech_data matches 1.. run tellraw @p [{"translate":"mech.item.portable_battery.lore","color":"dark_green","with":[{"score":{"name":"temp_0","objective":"mech_data"},"color":"dark_aqua"},{"score":{"name":"temp_1","objective":"mech_data"},"color":"dark_aqua"}]}]
