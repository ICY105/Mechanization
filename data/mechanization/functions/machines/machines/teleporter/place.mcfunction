scoreboard players operation @s du_uuid = incr_id du_uuid
scoreboard players add incr_id du_uuid 1

scoreboard players operation temp_0 mech_data = @s du_uuid
execute store result score temp_1 mech_data run data get entity @s Pos[0]
execute store result score temp_2 mech_data run data get entity @s Pos[1]
execute store result score temp_3 mech_data run data get entity @s Pos[2]
execute store result score temp_4 mech_data run data get entity @s Dimension
execute store result score temp_5 mech_data run data get entity @s mech_gridid



execute at @e[tag=du_spawn_chunks] run summon area_effect_cloud ~ ~ ~ {Tags:["mech_tele","mech_tele_new"],Duration:2000000000}
execute as @e[tag=mech_tele_new] run scoreboard players operation @s du_uuid = temp_0 mech_data
execute as @e[tag=mech_tele_new] run scoreboard players operation @s mech_x = temp_1 mech_data
execute as @e[tag=mech_tele_new] run scoreboard players operation @s mech_y = temp_2 mech_data
execute as @e[tag=mech_tele_new] run scoreboard players operation @s mech_z = temp_3 mech_data
execute as @e[tag=mech_tele_new] run scoreboard players operation @s mech_data = temp_4 mech_data
execute as @e[tag=mech_tele_new] run scoreboard players operation @s mech_gridid = temp_5 mech_data
tag @e[tag=mech_tele_new] remove mech_tele_new
