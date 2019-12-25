
execute store result score temp_0 mech_data run data get storage du:temp list[0].dimension
execute store result score temp_1 mech_data run data get storage du:temp list[0].uuid

data modify entity @s CustomName set from storage du:temp list[0].Name

execute if score temp_0 mech_data matches 0 run tellraw @a[distance=..0.25] [{"selector":"@s","color":"aqua","clickEvent":{"action":"suggest_command","value":"/trigger mech_tele set "}},{"text":" ID: ","color":"dark_green"},{"score":{"name":"temp_1","objective":"mech_data"},"clickEvent":{"action":"suggest_command","value":"/trigger mech_tele set "},"color":"dark_green"}]
execute if score temp_0 mech_data matches 1 run tellraw @a[distance=..0.25] [{"selector":"@s","color":"aqua","color":"dark_purple","clickEvent":{"action":"suggest_command","value":"/trigger mech_tele set "}},{"text":" ID: ","color":"dark_green"},{"score":{"name":"temp_1","objective":"mech_data"},"clickEvent":{"action":"suggest_command","value":"/trigger mech_tele set "},"color":"dark_green"}]
execute if score temp_0 mech_data matches -1 run tellraw @a[distance=..0.25] [{"selector":"@s","color":"aqua","color":"dark_red","clickEvent":{"action":"suggest_command","value":"/trigger mech_tele set "}},{"text":" ID: ","color":"dark_green"},{"score":{"name":"temp_1","objective":"mech_data"},"clickEvent":{"action":"suggest_command","value":"/trigger mech_tele set "},"color":"dark_green"}]

scoreboard players remove in_0 mech_data 1
data remove storage du:temp list[0]
execute if score in_0 mech_data matches 1.. run function mechanization:machines/machines/teleporter/dial_2
kill @s