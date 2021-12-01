
scoreboard players add @s mech_data 1
execute if score @s mech_data matches 6 run scoreboard players set @s mech_data 0
tag @s remove mech_active

execute if score @s mech_data matches 0 run data merge entity @s {ItemRotation:2}
execute if score @s mech_data matches 1 run data merge entity @s {ItemRotation:4}
execute if score @s mech_data matches 2 run data merge entity @s {ItemRotation:6}
execute if score @s mech_data matches 3 run data merge entity @s {ItemRotation:0}

execute if score @s[tag=mech_super_piston] mech_data matches 0..3 run data modify entity @s Item.tag.CustomModelData set value 6422020
execute if score @s[tag=mech_super_piston] mech_data matches 4 run data modify entity @s Item.tag.CustomModelData set value 6422913
execute if score @s[tag=mech_super_piston] mech_data matches 5 run data modify entity @s Item.tag.CustomModelData set value 6422915

execute if score @s[tag=mech_super_sticky_piston] mech_data matches 0..3 run data modify entity @s Item.tag.CustomModelData set value 6422021
execute if score @s[tag=mech_super_sticky_piston] mech_data matches 4 run data modify entity @s Item.tag.CustomModelData set value 6422918
execute if score @s[tag=mech_super_sticky_piston] mech_data matches 5 run data modify entity @s Item.tag.CustomModelData set value 6422920
