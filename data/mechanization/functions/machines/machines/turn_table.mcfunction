data merge entity @s {Fire:32676}

function du:world/blocks/is_active
execute if score out_0 du_data matches 1..2 if entity @s[tag=!mech_active] positioned ~ ~1 ~ run function mechanization:base/tools/wrench_run
execute if score out_0 du_data matches 1..2 run tag @s add mech_active
execute if score out_0 du_data matches 0 run tag @s remove mech_active

execute unless block ~ ~ ~ barrier run kill @s