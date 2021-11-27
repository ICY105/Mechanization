
execute if score $base.cf.backup mech_data matches 1 unless score @s mech_data matches 0.. store result score @s mech_data run data get entity @s Item.tag.mech_data
execute if score $base.cf.backup mech_data matches 1 unless score @s mech_gridid matches 0.. store result score @s mech_gridid run data get entity @s Item.tag.mech_gridid

execute if score $base.cf.backup mech_data matches 1 store result entity @s Item.tag.mech_data int 1 run scoreboard players get @s mech_data
execute if score $base.cf.backup mech_data matches 1 store result entity @s Item.tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

execute unless block ~ ~ ~ minecraft:moving_piston run function mechanization:base/machines/cable/break
