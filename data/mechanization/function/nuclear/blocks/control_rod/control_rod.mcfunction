
function mechanization:base/utils/redstone_active

tag @s remove mechanization.active
execute if score #active mechanization.data matches 1.. run tag @s add mechanization.active

execute if entity @s[tag=!mechanization.active] run item modify entity @s contents {"function": "minecraft:set_components","components": {"minecraft:custom_model_data": {"floats":[0]}}}
execute if entity @s[tag=mechanization.active] run item modify entity @s contents {"function": "minecraft:set_components","components": {"minecraft:custom_model_data": {"floats":[1]}}}

# break
execute unless block ~ ~ ~ minecraft:barrier run function mechanization:base/utils/break_block/break_machine
