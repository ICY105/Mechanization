
scoreboard players operation $predicate mech_data = @s mech_gridid

execute if entity @s[tag=mech_copper_cable] run loot spawn ~ ~ ~ loot mechanization:base/copper_cable
execute if entity @s[tag=mech_conductive_cable] run loot spawn ~ ~ ~ loot mechanization:base/conductive_cable
execute if entity @s[tag=mech_super_conductive_cable] run loot spawn ~ ~ ~ loot mechanization:base/super_conductive_cable
setblock ~ ~ ~ minecraft:air replace
kill @s

execute as @e[type=item_frame,tag=mech_cable,predicate=mechanization:matches_gridid,distance=0.5..1.3] run function mechanization:base/machines/cable/break_cable

execute align xyz positioned ~ ~1 ~ as @e[type=#mechanization:valid_block_entities,predicate=mechanization:matches_gridid,tag=!mech_cable,dx=0,dy=0,dz=0] run function mechanization:base/machines/cable/break_machine
execute align xyz positioned ~ ~-1 ~ as @e[type=#mechanization:valid_block_entities,predicate=mechanization:matches_gridid,tag=!mech_cable,dx=0,dy=0,dz=0] run function mechanization:base/machines/cable/break_machine
execute align xyz positioned ~1 ~ ~ as @e[type=#mechanization:valid_block_entities,predicate=mechanization:matches_gridid,tag=!mech_cable,dx=0,dy=0,dz=0] run function mechanization:base/machines/cable/break_machine
execute align xyz positioned ~-1 ~ ~ as @e[type=#mechanization:valid_block_entities,predicate=mechanization:matches_gridid,tag=!mech_cable,dx=0,dy=0,dz=0] run function mechanization:base/machines/cable/break_machine
execute align xyz positioned ~ ~ ~1 as @e[type=#mechanization:valid_block_entities,predicate=mechanization:matches_gridid,tag=!mech_cable,dx=0,dy=0,dz=0] run function mechanization:base/machines/cable/break_machine
execute align xyz positioned ~ ~ ~-1 as @e[type=#mechanization:valid_block_entities,predicate=mechanization:matches_gridid,tag=!mech_cable,dx=0,dy=0,dz=0] run function mechanization:base/machines/cable/break_machine
