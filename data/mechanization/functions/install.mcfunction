
execute if score du_ver du_data matches 2000101.. run scoreboard players set install mech_data 0
execute if score install mech_data matches 0 run tellraw @a [{"text":"[Loaded Mechanization v2.1.0c]","color":"dark_green"}]
execute if score install mech_data matches 1 run tellraw @a [{"text":"Mechanization requires Datapack Utilities version +2.0.1a. You can download that [here].","color":"dark_red","clickEvent":{"action":"open_url","value":"https://github.com/ImCoolYeah105/Datapack-Utilities/releases"}}]

execute if score install mech_data matches 1.. run schedule function mechanization:install 5s

#resourcepack
tellraw @a [{"translate":"Looks like you don't have the resourcepack for Mechanization. You can download that [here].","color":"red","clickEvent":{"action":"open_url","value":"https://github.com/ImCoolYeah105/Mechanization/releases"}}]
