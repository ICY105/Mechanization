
scoreboard players remove @s mechanization.fluid.0 1000
execute if score @s mechanization.fluid.0 matches ..0 run scoreboard players set @s mechanization.fluid.0 0
execute if score @s mechanization.fluid.0 matches ..0 run data remove entity @s Item.tag.tank
fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:fire replace #du:air
