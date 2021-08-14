
#vertical
execute store result score $math.in_0 du_data run data get entity @s SelectedItem.tag.mech_gun.recoil_y
function du:math/random
execute if score $math.out_0 du_data matches 1 at @s run tp @s ~ ~ ~ ~ ~-0.5
execute if score $math.out_0 du_data matches 2 at @s run tp @s ~ ~ ~ ~ ~-1
execute if score $math.out_0 du_data matches 3 at @s run tp @s ~ ~ ~ ~ ~-1.5
execute if score $math.out_0 du_data matches 4 at @s run tp @s ~ ~ ~ ~ ~-2
execute if score $math.out_0 du_data matches 5 at @s run tp @s ~ ~ ~ ~ ~-2.5
execute if score $math.out_0 du_data matches 6 at @s run tp @s ~ ~ ~ ~ ~-3
execute if score $math.out_0 du_data matches 7 at @s run tp @s ~ ~ ~ ~ ~-3.5

#horizontal
execute store result score $temp_0 mech_data run data get entity @s SelectedItem.tag.mech_gun.recoil_x
scoreboard players operation $math.in_0 du_data = $temp_0 mech_data
scoreboard players operation $math.in_0 du_data *= $cons.2 du_data
function du:math/random
scoreboard players operation $math.out_0 du_data -= $temp_0 mech_data

execute if score $math.out_0 du_data matches -8 at @s run tp @s ~ ~ ~ ~-4.0 ~
execute if score $math.out_0 du_data matches -7 at @s run tp @s ~ ~ ~ ~-3.5 ~
execute if score $math.out_0 du_data matches -6 at @s run tp @s ~ ~ ~ ~-3.0 ~
execute if score $math.out_0 du_data matches -5 at @s run tp @s ~ ~ ~ ~-2.5 ~
execute if score $math.out_0 du_data matches -4 at @s run tp @s ~ ~ ~ ~-2.0 ~
execute if score $math.out_0 du_data matches -3 at @s run tp @s ~ ~ ~ ~-1.5 ~
execute if score $math.out_0 du_data matches -2 at @s run tp @s ~ ~ ~ ~-1.0 ~
execute if score $math.out_0 du_data matches -1 at @s run tp @s ~ ~ ~ ~-0.5 ~

execute if score $math.out_0 du_data matches 1 at @s run tp @s ~ ~ ~ ~0.5 ~
execute if score $math.out_0 du_data matches 2 at @s run tp @s ~ ~ ~ ~1.0 ~
execute if score $math.out_0 du_data matches 3 at @s run tp @s ~ ~ ~ ~1.5 ~
execute if score $math.out_0 du_data matches 4 at @s run tp @s ~ ~ ~ ~2.0 ~
execute if score $math.out_0 du_data matches 5 at @s run tp @s ~ ~ ~ ~2.5 ~
execute if score $math.out_0 du_data matches 6 at @s run tp @s ~ ~ ~ ~3.0 ~
execute if score $math.out_0 du_data matches 7 at @s run tp @s ~ ~ ~ ~3.5 ~
execute if score $math.out_0 du_data matches 8 at @s run tp @s ~ ~ ~ ~4.0 ~
