execute at @e[tag=du_spawn_chunks] run summon area_effect_cloud ~ ~ ~ {Tags:["mech_loader_marker","mech_new_loader"],Duration:2000000000}

scoreboard players set @s mech_power 0
scoreboard players operation @s du_uuid = incr_id du_uuid
scoreboard players operation @e[tag=mech_new_loader] du_uuid = @s du_uuid
scoreboard players add incr_id du_uuid 1

execute store result score @e[tag=mech_new_loader] mech_x run data get entity @s Pos[0]
execute store result score @e[tag=mech_new_loader] mech_z run data get entity @s Pos[2]
execute store result score @e[tag=mech_new_loader] mech_y run data get entity @s Dimension
scoreboard players set @e[tag=mech_new_loader] mech_data 6

tag @e[tag=mech_new_loader,scores={mech_y=1..}] add mech_dimensional
tag @e[tag=mech_new_loader,scores={mech_y=..-1}] add mech_dimensional

tag @e[tag=mech_new_loader] remove mech_new_loader