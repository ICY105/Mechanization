
#storage unit
execute if entity @s[tag=mechanization.unlimited_storage_unit] run tellraw @p [{"translate":"mech.text.multimeter.storage","color":"dark_green"},{"score":{"name":"@s","objective":"mechanization.data"},"color":"dark_aqua"}]
