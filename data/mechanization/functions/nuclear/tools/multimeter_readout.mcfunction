
#Centrifuge
execute if entity @s[tag=mech_active,tag=mech_centrifuge] store result score temp_0 mechanization.data run data get entity @s HandItems[0].tag.FuelGrade
scoreboard players set temp_2 mechanization.data 10
scoreboard players operation temp_0 mechanization.data /= temp_2 mech_data
execute if entity @s[tag=mech_centrifuge,tag=mech_active] run tellraw @p [{"score":{"name":"temp_0","objective":"mech_data"},"color":"dark_green"},{"translate":"mech.text.multimeter.refined","color":"dark_green"}]

execute if entity @s[tag=mech_centrifuge,tag=mech_active] store result score temp_0 mechanization.data run data get entity @s HandItems[0].tag.FuelSpent
execute if entity @s[tag=mech_centrifuge,tag=mech_active] store result score temp_1 mechanization.data run data get entity @s HandItems[0].tag.FuelGrade
execute if entity @s[tag=mech_centrifuge,tag=mech_active] if score temp_0 mechanization.data matches 1.. run tellraw @p [{"translate":"mech.text.multimeter.fuel_spent","color":"dark_green"},{"score":{"name":"temp_0","objective":"mech_data"},"color":"dark_aqua"},{"text":"/","color":"dark_aqua"},{"score":{"name":"temp_1","objective":"mech_data"},"color":"dark_aqua"}]

#Reactor
execute if entity @s[tag=mech_fission_reactor] run scoreboard players operation temp_0 mechanization.data = @s du_move_x
scoreboard players set temp_1 mechanization.data 1000
execute if entity @s[tag=mech_fission_reactor] run scoreboard players operation temp_0 mechanization.data /= temp_1 mech_data
execute if entity @s[tag=mech_fission_reactor] run tellraw @p [{"translate":"mech.text.multimeter.temperature","color":"dark_green"},{"score":{"name":"temp_0","objective":"mech_data"},"color":"dark_aqua"},{"text":" °C: ","color":"dark_green"}]
execute if entity @s[tag=mech_fission_reactor] run tellraw @p [{"translate":"mech.text.multimeter.reaction_rate","color":"dark_green"},{"score":{"name":"@s","objective":"du_move_y"},"color":"dark_aqua"}]

execute if entity @s[tag=mech_fission_reactor] store result score temp_0 mechanization.data run data get entity @s HandItems[0].tag.FuelSpent
execute if entity @s[tag=mech_fission_reactor] store result score temp_1 mechanization.data run data get entity @s HandItems[0].tag.FuelGrade
execute if entity @s[tag=mech_fission_reactor] if score temp_0 mechanization.data matches 1.. run tellraw @p [{"translate":"mech.text.multimeter.fuel_spent","color":"dark_green"},{"score":{"name":"temp_0","objective":"mech_data"},"color":"dark_aqua"},{"text":"/","color":"dark_aqua"},{"score":{"name":"temp_1","objective":"mech_data"},"color":"dark_aqua"}]
