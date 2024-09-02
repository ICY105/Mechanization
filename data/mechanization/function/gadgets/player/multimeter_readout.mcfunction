
execute if entity @s[tag=mechanization.charging_station] store result score #storage mechanization.data run data get entity @s item.tag.energy.storage
execute if entity @s[tag=mechanization.charging_station] store result score #max_storage mechanization.data run data get entity @s item.tag.energy.max_storage
execute if entity @s[tag=mechanization.charging_station] if score #storage mechanization.data matches 1.. run tellraw @p [{"translate":"lore.mechanization.portable_battery","color":"dark_green","with":[{"score":{"name":"#storage","objective":"mechanization.data"},"color":"dark_aqua"},{"score":{"name":"#max_storage","objective":"mechanization.data"},"color":"dark_aqua"}]}]
