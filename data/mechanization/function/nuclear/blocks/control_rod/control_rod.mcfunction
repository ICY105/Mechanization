
function mechanization:base/utils/redstone_active

tag @s remove mechanization.active
execute if score #active mechanization.data matches 1.. run tag @s add mechanization.active

execute if entity @s[tag=!mechanization.active] run item modify entity @s contents {type:"minecraft:set_custom_model_data",floats:{values:[0],mode:"replace_all"}}
execute if entity @s[tag=mechanization.active] run item modify entity @s contents {type:"minecraft:set_custom_model_data",floats:{values:[1],mode:"replace_all"}}

# break
execute unless block ~ ~ ~ minecraft:barrier run function mechanization:base/utils/break_block/break_machine
