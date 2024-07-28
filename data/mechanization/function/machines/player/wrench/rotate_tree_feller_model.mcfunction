
execute store result score #rotation mechanization.data run data get entity @s Rotation[0]

execute if score #rotation mechanization.data matches ..-1 run scoreboard players add #rotation mechanization.data 360
scoreboard players add #rotation mechanization.data 90
execute if score #rotation mechanization.data matches 360.. run scoreboard players remove #rotation mechanization.data 360

execute store result entity @s Rotation[0] float 1 run scoreboard players get #rotation mechanization.data
execute if score #rotation mechanization.data matches 0..89 align xyz run tp @s ~0.5 ~0.01 ~0.3
execute if score #rotation mechanization.data matches 90..179 align xyz run tp @s ~0.7 ~0.01 ~0.5
execute if score #rotation mechanization.data matches 180..269 align xyz run tp @s ~0.5 ~0.01 ~0.7
execute if score #rotation mechanization.data matches 270..359 align xyz run tp @s ~0.3 ~0.01 ~0.5
