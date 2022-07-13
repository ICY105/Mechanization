
execute rotated ~ 0 run tp @s ~ ~1 ~ ~ ~
scoreboard players operation @s mechanization.data = #range mechanization.data
scoreboard players operation @s mechanization.data *= #cons.2 mechanization.data
scoreboard players operation @s player_action.uuid.0 = #uuid mechanization.data

item replace entity @s armor.head from block -30000000 0 3201 container.0
execute store result score @s mechanization.weaponheat run data get entity @s ArmorItems[3].tag.AttributeModifiers[{AttributeName:"minecraft:generic.attack_damage"}].Amount 15

tag @s remove mechanization.new
