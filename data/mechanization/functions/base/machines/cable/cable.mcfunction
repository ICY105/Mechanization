
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.data matches 0.. store result score @s mechanization.data run data get entity @s Item.tag.mech_data
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.network_id matches 0.. store result score @s mechanization.network_id run data get entity @s Item.tag.mech_gridid

execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_data int 1 run scoreboard players get @s mech_data
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

execute unless block ~ ~ ~ minecraft:moving_piston run function mechanization:base/machines/cable/break
