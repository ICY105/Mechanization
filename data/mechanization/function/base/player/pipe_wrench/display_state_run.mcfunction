
tag @s add mechanization
tag @s add mechanization.fluid_display
schedule function mechanization:base/player/pipe_wrench/update_display_entity 1t append

# modify display state entity
data merge entity @s {brightness:{sky:15,block:15}}
execute if score #state mechanization.data matches 0 run item replace entity @s contents with minecraft:blast_furnace[minecraft:item_model="mechanization:base/gui/fluid_off"]
execute if score #state mechanization.data matches 1 run item replace entity @s contents with minecraft:blast_furnace[minecraft:item_model="mechanization:base/gui/fluid_input"]
execute if score #state mechanization.data matches 2 run item replace entity @s contents with minecraft:blast_furnace[minecraft:item_model="mechanization:base/gui/fluid_output"]
execute if score #state mechanization.data matches 3 run item replace entity @s contents with minecraft:blast_furnace[minecraft:item_model="mechanization:base/gui/fluid_output_2"]

execute if score #side mechanization.data matches 0 run data merge entity @s {transformation:{translation:[0f, 0.02f, 0f]}}
execute if score #side mechanization.data matches 1 run data merge entity @s {transformation:{left_rotation:[1f, 0f, 0f, 0f], translation:[0f, -0.02f, 0f]}}

execute if score #side mechanization.data matches 3 run data merge entity @s {transformation:{left_rotation:[0.7f, 0f, 0f, 0.7f], right_rotation:[1f, 0f, 0f, 0f], translation:[0f, 0f, -0.02f]}}
execute if score #side mechanization.data matches 2 run data merge entity @s {transformation:{left_rotation:[0.7f, 0f, 0f, 0.7f], translation:[0f, 0f, 0.02f]}}
execute if score #side mechanization.data matches 5 run data merge entity @s {transformation:{left_rotation:[0.7f, 0f, 0f, 0.7f], right_rotation:[0f, 0f, -0.7f, 0.7f], translation:[0.02f, 0f, 0f]}}
execute if score #side mechanization.data matches 4 run data merge entity @s {transformation:{left_rotation:[0.7f, 0f, 0f, 0.7f], right_rotation:[0f, 0f, 0.7f, 0.7f], translation:[-0.02f, 0f, 0f]}}
