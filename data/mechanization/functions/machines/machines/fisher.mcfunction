
#load scoreboard values
execute unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s ArmorItems[3].tag.mech_power
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s ArmorItems[3].tag.mech_gridid

#main
scoreboard players set temp_0 mech_data 0
execute if score @s mech_power matches 240.. store result score temp_0 mech_data run clone ~-2 ~-2 ~-2 ~2 ~2 ~2 ~-2 ~-2 ~-2 filtered water force
execute if score temp_0 mech_data matches 124 run scoreboard players remove @s mech_power 240
execute if score temp_0 mech_data matches 124 run summon bat ~ ~-1 ~ {Health:1.0f,NoAI:1,Silent:1,DeathLootTable:"minecraft:gameplay/fishing",ActiveEffects:[{Id:14,Amplifier:0,Duration:200,ShowParticles:0b},{Id:20,Amplifier:0,Duration:200,ShowParticles:0b}]}
execute if score temp_0 mech_data matches 124 if entity @s[tag=mech_upgraded] run summon bat ~ ~-1 ~ {Health:1.0f,NoAI:1,Silent:1,DeathLootTable:"minecraft:gameplay/fishing",ActiveEffects:[{Id:14,Amplifier:0,Duration:200,ShowParticles:0b},{Id:20,Amplifier:0,Duration:200,ShowParticles:0b}]}
execute if score temp_0 mech_data matches 124 run playsound mechanization:machines.fisher block @a[distance=..16] ~ ~ ~

#store scoreboard values
execute store result entity @s ArmorItems[3].tag.mech_power int 1 run scoreboard players get @s mech_power
execute store result entity @s ArmorItems[3].tag.mech_gridid int 1 run scoreboard players get @s mech_gridid


#cleanup
execute at @s unless block ~ ~ ~ barrier run kill @s
