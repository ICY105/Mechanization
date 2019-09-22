execute if entity @s[tag=!mech_tut_multimeter,tag=du_sneaking] run tellraw @s ["",{"translate":"mech.text.multimeter.id_tutorial","color":"dark_green"}]
tag @s[tag=du_sneaking] add mech_tut_multimeter

scoreboard players set in_0 mech_data 120
execute positioned ~ ~1.61 ~ run function mechanization:base/tools/multimeter_loop