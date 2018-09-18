#execute if score @s mech_manual matches 1 store success entity @s SelectedItem.tag.Damage int 401 if entity @s
#execute if score @s mech_manual matches 1 store success entity @s SelectedItem.tag.manual.page int 401 if entity @s
execute if score @s mech_manual matches 1 run scoreboard players set temp_0 mech_data 401
execute if score @s mech_manual matches 1 run function mechanization:base/tools/manual/set_manual

#execute if score @s mech_manual matches 2 store success entity @s SelectedItem.tag.Damage int 402 if entity @s
#execute if score @s mech_manual matches 2 store success entity @s SelectedItem.tag.manual.page int 402 if entity @s
execute if score @s mech_manual matches 2 run scoreboard players set temp_0 mech_data 402
execute if score @s mech_manual matches 2 run function mechanization:base/tools/manual/set_manual

#execute if score @s mech_manual matches 3 store success entity @s SelectedItem.tag.Damage int 403 if entity @s
#execute if score @s mech_manual matches 3 store success entity @s SelectedItem.tag.manual.page int 403 if entity @s
execute if score @s mech_manual matches 3 run scoreboard players set temp_0 mech_data 403
execute if score @s mech_manual matches 3 run function mechanization:base/tools/manual/set_manual

#execute if score @s mech_manual matches 4 store success entity @s SelectedItem.tag.Damage int 412 if entity @s
#execute if score @s mech_manual matches 4 store success entity @s SelectedItem.tag.manual.page int 412 if entity @s
execute if score @s mech_manual matches 4 run scoreboard players set temp_0 mech_data 412
execute if score @s mech_manual matches 4 run function mechanization:base/tools/manual/set_manual

#execute if score @s mech_manual matches 5 store success entity @s SelectedItem.tag.Damage int 420 if entity @s
#execute if score @s mech_manual matches 5 store success entity @s SelectedItem.tag.manual.page int 420 if entity @s
execute if score @s mech_manual matches 5 run scoreboard players set temp_0 mech_data 420
execute if score @s mech_manual matches 5 run function mechanization:base/tools/manual/set_manual

#execute if score @s mech_manual matches 6 store success entity @s SelectedItem.tag.Damage int 431 if entity @s
#execute if score @s mech_manual matches 6 store success entity @s SelectedItem.tag.manual.page int 431 if entity @s
execute if score @s mech_manual matches 6 run scoreboard players set temp_0 mech_data 431
execute if score @s mech_manual matches 6 run function mechanization:base/tools/manual/set_manual

#execute if score @s mech_manual matches 7 store success entity @s SelectedItem.tag.Damage int 438 if entity @s
#execute if score @s mech_manual matches 7 store success entity @s SelectedItem.tag.manual.page int 438 if entity @s
execute if score @s mech_manual matches 7 run scoreboard players set temp_0 mech_data 438
execute if score @s mech_manual matches 7 run function mechanization:base/tools/manual/set_manual

#execute if score @s mech_manual matches 8 store success entity @s SelectedItem.tag.Damage int 448 if entity @s
#execute if score @s mech_manual matches 8 store success entity @s SelectedItem.tag.manual.page int 448 if entity @s
execute if score @s mech_manual matches 8 run scoreboard players set temp_0 mech_data 448
execute if score @s mech_manual matches 8 run function mechanization:base/tools/manual/set_manual

#execute if score @s mech_manual matches 9 store success entity @s SelectedItem.tag.Damage int 475 if entity @s
#execute if score @s mech_manual matches 9 store success entity @s SelectedItem.tag.manual.page int 475 if entity @s
execute if score @s mech_manual matches 9 run scoreboard players set temp_0 mech_data 475
execute if score @s mech_manual matches 9 run function mechanization:base/tools/manual/set_manual

scoreboard players set @s mech_manual 0
scoreboard players enable @s mech_manual