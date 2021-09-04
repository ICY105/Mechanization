
summon area_effect_cloud ~ ~ ~ {Tags:["mech_bullet","mech_new_bullet","global.ignore"],Duration:50}
tp @e[type=area_effect_cloud,tag=mech_new_bullet] ^ ^ ^2 ~ ~

scoreboard players operation @e[type=area_effect_cloud,tag=mech_new_bullet] mech_weaponheat = temp_1 mech_data
scoreboard players operation @e[type=area_effect_cloud,tag=mech_new_bullet] mech_data = temp_2 mech_data
execute if score temp_3 mech_data matches 1 run tag @e[type=area_effect_cloud,tag=mech_new_bullet] add mech_bouncy

tag @e[type=area_effect_cloud,tag=mech_new_bullet] remove mech_new_bullet
