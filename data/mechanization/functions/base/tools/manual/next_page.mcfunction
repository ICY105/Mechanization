
execute store result score temp_0 mech_data run data get entity @s SelectedItem.tag.manual.page
execute store result score temp_1 mech_data run data get entity @s SelectedItem.tag.manual.page_max
execute if entity @s[tag=mech_manual_open] if score temp_0 mech_data < temp_1 mech_data run scoreboard players add temp_0 mech_data 1
function mechanization:base/tools/manual/set_manual
tag @s add mech_manual_open
