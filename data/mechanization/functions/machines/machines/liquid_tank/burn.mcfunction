
scoreboard players remove @s mechanization.stored_fluid 1000
execute if score @s mechanization.stored_fluid matches ..0 run scoreboard players set @s mechanization.stored_fluid 0
execute if score @s mechanization.stored_fluid matches ..0 run data remove entity @s Item.tag.tank
fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:fire replace #du:air
