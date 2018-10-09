
execute store result score temp_0 mech_data run data get entity @s SelectedItem.tag.manual.page

execute if entity @s[tag=mech_manual_open] if score temp_0 mech_data matches 448..475 run scoreboard players set temp_0 mech_data 476
execute if entity @s[tag=mech_manual_open] if score temp_0 mech_data matches 438..450 run scoreboard players set temp_0 mech_data 451
execute if entity @s[tag=mech_manual_open] if score temp_0 mech_data matches 431..439 run scoreboard players set temp_0 mech_data 440
execute if entity @s[tag=mech_manual_open] if score temp_0 mech_data matches 420..432 run scoreboard players set temp_0 mech_data 432
execute if entity @s[tag=mech_manual_open] if score temp_0 mech_data matches 412..419 run scoreboard players set temp_0 mech_data 420
execute if entity @s[tag=mech_manual_open] if score temp_0 mech_data matches 403..411 run scoreboard players set temp_0 mech_data 412
execute if entity @s[tag=mech_manual_open] if score temp_0 mech_data matches 402 run scoreboard players set temp_0 mech_data 403
execute if entity @s[tag=mech_manual_open] if score temp_0 mech_data matches 401 run scoreboard players set temp_0 mech_data 402

#execute store result entity @s SelectedItem.tag.manual.page int 1 run scoreboard players get temp_0 mech_data
#execute store result entity @s SelectedItem.tag.Damage int 1 run scoreboard players get temp_0 mech_data
function mechanization:base/tools/manual/set_manual

tag @s add mech_manual_open
