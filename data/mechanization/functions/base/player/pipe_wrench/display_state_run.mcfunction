
tag @s add mechanization
tag @s add mechanization.fluid_display
schedule function mechanization:base/player/pipe_wrench/update_display_entity 1t append

# modify display state entity
execute if score #state mechanization.data matches 0 run data merge entity @s {item:{id:"minecraft:blast_furnace",Count:1b,tag:{CustomModelData:6421900}},brightness:{sky:15,block:15}}
execute if score #state mechanization.data matches 1 run data merge entity @s {item:{id:"minecraft:blast_furnace",Count:1b,tag:{CustomModelData:6421901}},brightness:{sky:15,block:15}}
execute if score #state mechanization.data matches 2 run data merge entity @s {item:{id:"minecraft:blast_furnace",Count:1b,tag:{CustomModelData:6421902}},brightness:{sky:15,block:15}}
execute if score #state mechanization.data matches 3 run data merge entity @s {item:{id:"minecraft:blast_furnace",Count:1b,tag:{CustomModelData:6421903}},brightness:{sky:15,block:15}}

execute if score #side mechanization.data matches 0 run tp @s ~ ~0.02 ~ 0 0
execute if score #side mechanization.data matches 1 run tp @s ~ ~-0.02 ~ 0 0
execute if score #side mechanization.data matches 1 run data merge entity @s {Rotation:[0.0f,180.0f]}
execute if score #side mechanization.data matches 3 run tp @s ~ ~ ~-0.02 180 90
execute if score #side mechanization.data matches 2 run tp @s ~ ~ ~0.02 0 90
execute if score #side mechanization.data matches 5 run tp @s ~0.02 ~ ~ 270 90
execute if score #side mechanization.data matches 4 run tp @s ~-0.02 ~ ~ 90 90
