

execute store result score temp_0 mech_data run data get storage du:temp obj.valid[0].dimension
execute store result score temp_1 mech_data run data get storage du:temp obj.valid[0].uuid

execute if score temp_0 mech_data matches 0 run tellraw @a[distance=..0.5] [ {"nbt":"obj.valid[0].Name","storage":"du:temp","interpret":true,"color":"aqua","clickEvent":{"action":"suggest_command","value":"/trigger mech_tele set "}},{"text":" ID: ","color":"dark_green"},{"score":{"name":"temp_1","objective":"mech_data"},"clickEvent":{"action":"suggest_command","value":"/trigger mech_tele set "},"color":"dark_green"}]
execute if score temp_0 mech_data matches 1 run tellraw @a[distance=..0.5] [ {"nbt":"obj.valid[0].Name","storage":"du:temp","interpret":true,"color":"dark_purple","clickEvent":{"action":"suggest_command","value":"/trigger mech_tele set "}},{"text":" ID: ","color":"dark_green"},{"score":{"name":"temp_1","objective":"mech_data"},"clickEvent":{"action":"suggest_command","value":"/trigger mech_tele set "},"color":"dark_green"}]
execute if score temp_0 mech_data matches -1 run tellraw @a[distance=..0.5] [{"nbt":"obj.valid[0].Name","storage":"du:temp","interpret":true,"color":"dark_red","clickEvent":{"action":"suggest_command","value":"/trigger mech_tele set "}},{"text":" ID: ","color":"dark_green"},{"score":{"name":"temp_1","objective":"mech_data"},"clickEvent":{"action":"suggest_command","value":"/trigger mech_tele set "},"color":"dark_green"}]

#loop
data remove storage du:temp obj.valid[0]
execute if data storage du:temp obj.valid[0] run function mechanization:machines/machines/teleporter/dial_2
