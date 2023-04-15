
scoreboard players set #install mechanization.data 0

# check for 1.19.4
execute store result score #minecraft.version mechanization.data run data get entity @p DataVersion
execute unless score #minecraft.version mechanization.data matches 3337.. run scoreboard players set #install mechanization.data -1
execute if score #install mechanization.data matches -1 run tellraw @a [{"text":"Error: Mechanization v"},{"score":{"name":"#mech.ver.major","objective":"load.status"}},{"text":","},{"score":{"name":"#mech.ver.minor","objective":"load.status"}},{"text":","},{"score":{"name":"#mech.ver.fix","objective":"load.status"}},{"text":" requires Minecraft +1.19.4 - Click [here] to download alternate versions.","color":"red","clickEvent":{"action":"open_url","value":"https://github.com/ImCoolYeah105/Mechanization/releases"}}]

# check for realms
execute if score #install mechanization.data matches 0 run scoreboard players set #install mechanization.data -2
execute if score #install mechanization.data matches -2 unless predicate mechanization:not_realms run scoreboard players set #install mechanization.data 0
execute if score #install mechanization.data matches -2 run tellraw @a [{"text":"Error: Mechanization is not compatible with Minecraft: Realms. You will experience major issues if you continue.","color":"red"}]

# mark as installed
execute if score #install mechanization.data matches 0 run scoreboard players set #install mechanization.data 1

# resourcepack
tellraw @a [{"translate":"text.mechanization.resourcepack","color":"red","clickEvent":{"action":"open_url","value":"https://github.com/ImCoolYeah105/Mechanization/releases"},"fallback":"Looks like you don't have the Mechanization Resourcepack. You can download that [here]."}]
