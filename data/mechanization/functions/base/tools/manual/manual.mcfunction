scoreboard players enable @s mech_manual
execute if entity @s[tag=du_right_click,tag=!du_sneaking] run function mechanization:base/tools/manual/next_page
execute if entity @s[tag=du_left_click,tag=!du_sneaking] run function mechanization:base/tools/manual/prev_page
execute if entity @s[tag=du_right_click,tag=du_sneaking] run function mechanization:base/tools/manual/next_section
execute if entity @s[tag=du_left_click,tag=du_sneaking] run function mechanization:base/tools/manual/prev_section