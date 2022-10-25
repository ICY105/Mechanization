
tp @s ^ ^ ^2 ~ ~

scoreboard players operation @s mechanization.weaponheat = #damage mechanization.data
scoreboard players operation @s mechanization.firerate = #velocity mechanization.data
scoreboard players operation @s mechanization.data = #range mechanization.data
execute if score #bouncy mechanization.data matches 1 run tag @s add mechanization.bouncy
execute if score #sonic mechanization.data matches 1 run tag @s add mechanization.sonic

tag @s remove mechanization.new
