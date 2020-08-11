
scoreboard players set $install mech_data 1

#check for 1.15
function mechanization:check_version
execute unless score $install.ver mech_data matches 16 run scoreboard players set $install mech_data 0
execute unless score $install.ver mech_data matches 16 run tellraw @a [{"text":"Error: Mechanization v2.3.0a requires Minecraft 1.16.x. Click [here] to download alternate versions.\n","color":"red","clickEvent":{"action":"open_url","value":"https://github.com/ImCoolYeah105/Mechanization/releases"}}]

#check DU
execute unless score $du.ver load matches 2020001.. run scoreboard players set $install mech_data 0
execute unless score $du.ver load matches 2020001.. run tellraw @a [{"text":"Error: Mechanization requires Datapack Utilities version +2.2.0a. You can download that [here].\n","color":"red","clickEvent":{"action":"open_url","value":"https://github.com/ImCoolYeah105/Datapack-Utilities/releases"}}]

#print install message
execute if score $install mech_data matches 1 run tellraw @a [{"text":"[Loaded Mechanization v2.3.0a]","color":"dark_green"}]

#resourcepack
tellraw @a [{"translate":"Looks like you don't have the resourcepack for Mechanization. You can download that [here].","color":"red","clickEvent":{"action":"open_url","value":"https://github.com/ImCoolYeah105/Mechanization/releases"}}]
