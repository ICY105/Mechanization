
scoreboard players set $install mech_data 1

#check for 1.16.2
execute unless score $minecraft.ver du_data matches 162 run scoreboard players set $install mech_data 0
execute unless score $minecraft.ver du_data matches 162 run tellraw @a [{"text":"Error: Mechanization v2.3.2a requires Minecraft +1.16.2. Click [here] to download alternate versions.\n","color":"red","clickEvent":{"action":"open_url","value":"https://github.com/ImCoolYeah105/Mechanization/releases"}}]

#check DU
execute unless score $du.ver load matches 2020104.. run scoreboard players set $install mech_data 0
execute unless score $du.ver load matches 2020104.. run tellraw @a [{"text":"Error: Mechanization requires Datapack Utilities version +2.2.1d. You can download that [here].\n","color":"red","clickEvent":{"action":"open_url","value":"https://github.com/ImCoolYeah105/Datapack-Utilities/releases"}}]

#print install message
execute if score $install mech_data matches 1 run tellraw @a [{"text":"[Loaded Mechanization v2.3.2a]","color":"dark_green"}]

#resourcepack
tellraw @a [{"translate":"Looks like you don't have the resourcepack for Mechanization. You can download that [here].","color":"red","clickEvent":{"action":"open_url","value":"https://github.com/ImCoolYeah105/Mechanization/releases"}}]
