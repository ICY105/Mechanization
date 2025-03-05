
scoreboard players set #direction mechanization.data 0
execute if entity @s[y_rotation=-45..45] run scoreboard players set #direction mechanization.data 1

execute if entity @s[y_rotation=-135..-45] run scoreboard players set #direction mechanization.data 2
execute if entity @s[y_rotation=45..135] run scoreboard players set #direction mechanization.data 3

execute if entity @s[x_rotation=-90..-45] run scoreboard players set #direction mechanization.data 4
execute if entity @s[x_rotation=45..90] run scoreboard players set #direction mechanization.data 5

execute if score #direction mechanization.data matches 0..1 rotated 0 0 run function mechanization:gadgets/player/drill/mine_area_2
execute if score #direction mechanization.data matches 2..3 rotated 90 0 run function mechanization:gadgets/player/drill/mine_area_2
execute if score #direction mechanization.data matches 4..5 rotated 0 90 run function mechanization:gadgets/player/drill/mine_area_2