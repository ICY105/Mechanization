
item modify entity @s contents {type:"minecraft:set_custom_model_data",floats:{values:[0],mode:"replace_all"}}
execute if entity @s[tag=mechanization.reactor_core.uranium] run item modify entity @s contents {type:"minecraft:set_custom_model_data",floats:{values:[1],mode:"replace_all"}}
execute if entity @s[tag=mechanization.reactor_core.mox] run item modify entity @s contents {type:"minecraft:set_custom_model_data",floats:{values:[2],mode:"replace_all"}}
execute if entity @s[tag=mechanization.reactor_core.waste] run item modify entity @s contents {type:"minecraft:set_custom_model_data",floats:{values:[3],mode:"replace_all"}}
