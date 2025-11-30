
# Reactor Core
execute if entity @s[tag=mechanization.reactor_core] run scoreboard players operation #temp_0 mechanization.data = @s mechanization.time
execute if entity @s[tag=mechanization.reactor_core] run scoreboard players operation #temp_0 mechanization.data *= #cons.100000 mechanization.data

execute if entity @s[tag=mechanization.reactor_core] run scoreboard players operation #temp_1 mechanization.data = #temp_0 mechanization.data
execute if entity @s[tag=mechanization.reactor_core] store result score #temp_2 mechanization.data run data get entity @s item.components."minecraft:bundle_contents"[0].components."minecraft:custom_data".mechanization.fuel
execute if entity @s[tag=mechanization.reactor_core] run scoreboard players operation #temp_1 mechanization.data -= #temp_2 mechanization.data
execute if entity @s[tag=mechanization.reactor_core] run scoreboard players operation #temp_1 mechanization.data *= #cons.100 mechanization.data
execute if entity @s[tag=mechanization.reactor_core] run scoreboard players operation #temp_1 mechanization.data /= #temp_0 mechanization.data
execute if entity @s[tag=mechanization.reactor_core] run tellraw @p [{"translate":"text.mechanization.reactor_temperature","color":"dark_green", "with":[{"score":{"name":"@s","objective":"mechanization.data"},"color":"dark_aqua"},{"text":"1000","color":"dark_aqua"}]}]
execute if entity @s[tag=mechanization.reactor_core] run tellraw @p [{"translate":"text.mechanization.reactor_fuel","color":"dark_green", "with":[{"score":{"name":"#temp_1","objective":"mechanization.data"},"color":"dark_aqua"}]}]
execute if entity @s[tag=mechanization.reactor_core] run tellraw @p [{"translate":"text.mechanization.reactor_flux","color":"dark_green", "with":[{"score":{"name":"@s","objective":"mechanization.fluid.in"},"color":"dark_aqua"}]}]