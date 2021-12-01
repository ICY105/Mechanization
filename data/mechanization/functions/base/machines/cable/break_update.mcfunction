
scoreboard players operation @s mechanization.network_id = $temp_2 mech_data
execute as @e[type=item_frame,tag=mech_cable,distance=0.5..1.3,predicate=mechanization:matches_gridid] at @s align xyz positioned ~0.5 ~ ~0.5 run function mechanization:base/machines/cable/break_update

execute align xyz positioned ~ ~1 ~ as @e[type=#mechanization:valid_block_entities,predicate=mechanization:matches_gridid,tag=!mech_cable,dx=0,dy=0,dz=0] at @s align xyz positioned ~0.5 ~ ~0.5 run function mechanization:base/machines/cable/break_update
execute align xyz positioned ~ ~-1 ~ as @e[type=#mechanization:valid_block_entities,predicate=mechanization:matches_gridid,tag=!mech_cable,dx=0,dy=0,dz=0] at @s align xyz positioned ~0.5 ~ ~0.5 run function mechanization:base/machines/cable/break_update
execute align xyz positioned ~1 ~ ~ as @e[type=#mechanization:valid_block_entities,predicate=mechanization:matches_gridid,tag=!mech_cable,dx=0,dy=0,dz=0] at @s align xyz positioned ~0.5 ~ ~0.5 run function mechanization:base/machines/cable/break_update
execute align xyz positioned ~-1 ~ ~ as @e[type=#mechanization:valid_block_entities,predicate=mechanization:matches_gridid,tag=!mech_cable,dx=0,dy=0,dz=0] at @s align xyz positioned ~0.5 ~ ~0.5 run function mechanization:base/machines/cable/break_update
execute align xyz positioned ~ ~ ~1 as @e[type=#mechanization:valid_block_entities,predicate=mechanization:matches_gridid,tag=!mech_cable,dx=0,dy=0,dz=0] at @s align xyz positioned ~0.5 ~ ~0.5 run function mechanization:base/machines/cable/break_update
execute align xyz positioned ~ ~ ~-1 as @e[type=#mechanization:valid_block_entities,predicate=mechanization:matches_gridid,tag=!mech_cable,dx=0,dy=0,dz=0] at @s align xyz positioned ~0.5 ~ ~0.5 run function mechanization:base/machines/cable/break_update
