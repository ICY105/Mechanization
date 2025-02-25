
execute rotated ~ 0 run tp @s ~ ~1 ~ ~ ~
scoreboard players set @s mechanization.time 0
scoreboard players operation @s mechanization.data = #range mechanization.data
scoreboard players operation @s mechanization.data *= #cons.2 mechanization.data
scoreboard players operation @s player_action.uuid.0 = #uuid mechanization.data

item replace entity @s container.0 from block -30000000 0 3201 container.0
execute store result score @s mechanization.weaponheat run data get entity @s item.components."minecraft:attribute_modifiers".modifiers[{type:"minecraft:attack_damage", operation: "add_value"}].amount 15

# setup transformations
data merge entity @s {teleport_duration:2,start_interpolation:0,interpolation_duration:2,transformation:{translation:[0.0f,0.4f,0.0f], right_rotation:[0.0f, 0.707106f, 0.707106f, 0.0f]}}

# tags
tag @s remove mechanization.new
