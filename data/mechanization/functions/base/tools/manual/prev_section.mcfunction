
execute store result score temp_0 mech_data run data get entity @s SelectedItem.tag.manual.page

execute if entity @s[tag=mech_manual_open] if score temp_0 mech_data matches 402 run scoreboard players set temp_0 mech_data 401
execute if entity @s[tag=mech_manual_open] if score temp_0 mech_data matches 403 run scoreboard players set temp_0 mech_data 402
execute if entity @s[tag=mech_manual_open] if score temp_0 mech_data matches 404..412 run scoreboard players set temp_0 mech_data 403
execute if entity @s[tag=mech_manual_open] if score temp_0 mech_data matches 413..420 run scoreboard players set temp_0 mech_data 412
execute if entity @s[tag=mech_manual_open] if score temp_0 mech_data matches 421..431 run scoreboard players set temp_0 mech_data 420
execute if entity @s[tag=mech_manual_open] if score temp_0 mech_data matches 432..438 run scoreboard players set temp_0 mech_data 431
execute if entity @s[tag=mech_manual_open] if score temp_0 mech_data matches 439..448 run scoreboard players set temp_0 mech_data 438
execute if entity @s[tag=mech_manual_open] if score temp_0 mech_data matches 449..475 run scoreboard players set temp_0 mech_data 448
execute if entity @s[tag=mech_manual_open] if score temp_0 mech_data matches 476.. run scoreboard players set temp_0 mech_data 475

#execute store result entity @s SelectedItem.tag.manual.page int 1 run scoreboard players get temp_0 mech_data
#execute store result entity @s SelectedItem.tag.Damage int 1 run scoreboard players get temp_0 mech_data
function mechanization:base/tools/manual/set_manual

tag @s add mech_manual_open
