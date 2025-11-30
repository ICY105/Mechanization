
item modify entity @s contents {"function": "minecraft:set_components","components": {"minecraft:custom_model_data": {"floats":[0]}}}
execute if entity @s[tag=mechanization.reactor_core.uranium] run item modify entity @s contents {"function": "minecraft:set_components","components": {"minecraft:custom_model_data": {"floats":[1]}}}
execute if entity @s[tag=mechanization.reactor_core.mox] run item modify entity @s contents {"function": "minecraft:set_components","components": {"minecraft:custom_model_data": {"floats":[2]}}}
execute if entity @s[tag=mechanization.reactor_core.waste] run item modify entity @s contents {"function": "minecraft:set_components","components": {"minecraft:custom_model_data": {"floats":[3]}}}
