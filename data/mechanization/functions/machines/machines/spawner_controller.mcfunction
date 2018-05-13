
#load scoreboard values
execute unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s ArmorItems[3].tag.mech_power
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s ArmorItems[3].tag.mech_gridid

#main
execute if entity @s[tag=mech_active,scores={mech_power=..319}] run data merge block ~ ~ ~ {RequiredPlayerRange: 16s, MaxSpawnDelay: 800s, MinSpawnDelay: 200s, Delay: 600s}
execute if entity @s[tag=!mech_active,tag=mech_upgraded,scores={mech_power=320..}] run data merge block ~ ~ ~ {RequiredPlayerRange: 32s, MaxSpawnDelay: 301s, MinSpawnDelay: 300s, Delay: 300s}
execute if entity @s[tag=!mech_active,tag=mech_upgraded,scores={mech_power=320..}] run data merge block ~ ~ ~ {RequiredPlayerRange: 32s, MaxSpawnDelay: 151s, MinSpawnDelay: 150s, Delay: 150s}

tag @s[scores={mech_power=..319}] remove mech_active
tag @s[scores={mech_power=320..}] add mech_active

scoreboard players remove @s[tag=mech_active] mech_power 320

#store scoreboard values
execute store result entity @s ArmorItems[3].tag.mech_power int 1 run scoreboard players get @s mech_power
execute store result entity @s ArmorItems[3].tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

#cleanup
execute unless block ~ ~ ~ mob_spawner run function give:mech_machines/machine_frame_tier_3
execute unless block ~ ~ ~ mob_spawner run kill @s
