
scoreboard players remove @s mech_fluid 1000
execute if score @s mech_fluid matches ..0 run scoreboard players set @s mech_fluid 0
execute if score @s mech_fluid matches ..0 run data remove entity @s Item.tag.tank
fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:fire replace #du:air
