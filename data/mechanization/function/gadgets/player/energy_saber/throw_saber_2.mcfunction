
execute rotated ~ 0 run tp @s ~ ~1 ~ ~ ~
scoreboard players set @s mechanization.time 0
scoreboard players operation @s mechanization.data = #range mechanization.data
scoreboard players operation @s mechanization.data *= #cons.2 mechanization.data
scoreboard players operation @s player_action.uuid.0 = #uuid mechanization.data

item replace entity @s container.0 from block -30000000 0 3201 container.0
execute store result score @s mechanization.weaponheat run data get entity @s item.tag.AttributeModifiers[{AttributeName:"minecraft:generic.attack_damage"}].Amount 15
execute if data entity @s item.tag.mechanization.upgrades.items[].tag.mechanization.upgrade{effect:"throwing_speed"} run tag @s add mechanization.speed

# setup transformations
data modify entity @s transformation merge value {right_rotation:[0.0f, 0.707106f, 0.707106f, 0.0f]}
data merge entity @s {start_interpolation:0, interpolation_duration:100}

# tags
tag @s remove mechanization.new
