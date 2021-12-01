
scoreboard players set $install mechanization.data 0

#check for 1.17
execute store result score $minecraft.version mechanization.data run data get entity @p DataVersion
execute unless score $minecraft.version mechanization.data matches 2850.. run scoreboard players set $install mechanization.data -1
execute if score $install mechanization.data matches -1 run tellraw @a [{"text":"Error: Mechanization v"},{"score":{"name":"$mech.ver.major","objective":"load.status"}},{"text":","},{"score":{"name":"$mech.ver.minor","objective":"load.status"}},{"text":","},{"score":{"name":"$mech.ver.fix","objective":"load.status"}},{"text":" requires Minecraft 1.18.X. Click [here] to download alternate versions.","color":"red","clickEvent":{"action":"open_url","value":"https://github.com/ImCoolYeah105/Mechanization/releases"}}]

#check DU
execute if score $install mechanization.data matches 0 unless score $du.ver.major load.status matches 2 run scoreboard players set $install mechanization.data -2
execute if score $install mechanization.data matches 0 unless score $du.ver.minor load.status matches 4 run scoreboard players set $install mechanization.data -2
execute if score $install mechanization.data matches 0 unless score $du.ver.fix load.status matches 1.. run scoreboard players set $install mechanization.data -2
execute if score $install mechanization.data matches -2 run tellraw @a [{"text":"Error: Mechanization requires Datapack Utilities version +2.4.1. You can download that [here].","color":"red","clickEvent":{"action":"open_url","value":"https://github.com/ImCoolYeah105/Datapack-Utilities/releases"}}]

#check for realms
execute if score $install mechanization.data matches 0 run scoreboard players set $install mechanization.data -3
execute if score $install mechanization.data matches -3 unless predicate mechanization:not_realms run scoreboard players set $install mechanization.data 0
execute if score $install mechanization.data matches -3 run tellraw @a [{"text":"Error: Mechanization is not compatible with Minecraft: Realms. You will experience major issues if you continue.","color":"red"}]

#mark as installed
execute if score $install mechanization.data matches 0 run scoreboard players set $install mechanization.data 1

#resourcepack
tellraw @a [{"translate":"Looks like you don't have the resourcepack for Mechanization. You can download that [here].","color":"red","clickEvent":{"action":"open_url","value":"https://github.com/ImCoolYeah105/Mechanization/releases"}}]
