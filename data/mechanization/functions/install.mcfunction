
scoreboard players set $install mech_data 1

#check for 1.15
scoreboard players set $install.15 mech_data 0
function mechanization:check_1.15
execute if score $install.15 mech_data matches 0 run scoreboard players set $install mech_data 0
execute if score $install.15 mech_data matches 0 run tellraw @a [{"text":"Error: This version of Mechanization requires Minecraft +1.15. Click [here] to download the latest version for 1.14 (2.1.1).\n","color":"red","clickEvent":{"action":"open_url","value":"https://github.com/ImCoolYeah105/Mechanization/releases/tag/2.1.1"}}]

#check DU
execute unless score $du.ver load matches 2010004.. run scoreboard players set $install mech_data 0
execute unless score $du.ver load matches 2010004.. run tellraw @a [{"text":"Error: Mechanization requires Datapack Utilities version +2.1.0d. You can download that [here].\n","color":"red","clickEvent":{"action":"open_url","value":"https://github.com/ImCoolYeah105/Datapack-Utilities/releases"}}]

#print install message
execute if score $install mech_data matches 1 run tellraw @a [{"text":"[Loaded Mechanization v2.2.0]","color":"dark_green"}]

#resourcepack
tellraw @a [{"translate":"Looks like you don't have the resourcepack for Mechanization. You can download that [here].","color":"red","clickEvent":{"action":"open_url","value":"https://github.com/ImCoolYeah105/Mechanization/releases"}}]
