execute if predicate du:entity/is_sneaking if entity @s[tag=!mech_tut_multimeter] run tellraw @s ["",{"translate":"mech.text.multimeter.id_tutorial","color":"dark_green"}]
execute if predicate du:entity/is_sneaking run tag @s add mech_tut_multimeter

scoreboard players set in_0 mech_data 120
execute anchored eyes positioned ^ ^ ^ run function mechanization:base/tools/multimeter_loop