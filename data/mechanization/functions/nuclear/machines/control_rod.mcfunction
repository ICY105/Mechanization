function du:world/blocks/is_active

execute if score out_0 du_data matches 0 store success entity @s ArmorItems[3].tag.CustomModelData int 6423001 if entity @s
execute if score out_0 du_data matches 1..2 store success entity @s ArmorItems[3].tag.CustomModelData int 6423202 if entity @s

execute if score out_0 du_data matches 0 run tag @s remove mech_active
execute if score out_0 du_data matches 1..2 run tag @s add mech_active

execute unless block ~ ~ ~ barrier run kill @s
