
#storage unit
execute if entity @s[tag=mech_unlimited_storage] run tellraw @p [{"translate":"mech.text.multimeter.storage","color":"dark_green"},{"score":{"name":"@s","objective":"mech_data"},"color":"dark_aqua"}]
