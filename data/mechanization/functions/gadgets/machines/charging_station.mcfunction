
#load scoreboard values
execute unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s ArmorItems[3].tag.mech_power
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s ArmorItems[3].tag.mech_gridid

#main
execute store result score temp_0 mech_data run data get entity @s HandItems[0].tag.Energy
execute if score temp_0 mech_data matches 1..64256 if score @s mech_power matches 256.. run scoreboard players add temp_0 mech_data 256
execute if score temp_0 mech_data matches 1..64256 if score @s mech_power matches 256.. store result entity @s HandItems[0].tag.Energy int 1 run scoreboard players get temp_0 mech_data
execute if score temp_0 mech_data matches 1..64256 if score @s mech_power matches 256.. run scoreboard players remove @s mech_power 256
execute if entity @s[tag=mech_upgraded] if score temp_0 mech_data matches 1..64000 if score @s mech_power matches 256.. run scoreboard players add temp_0 mech_data 256
execute if entity @s[tag=mech_upgraded] if score temp_0 mech_data matches 1..64256 if score @s mech_power matches 256.. store result entity @s HandItems[0].tag.Energy int 1 run scoreboard players get temp_0 mech_data
execute if entity @s[tag=mech_upgraded] if score temp_0 mech_data matches 1..64256 if score @s mech_power matches 256.. run scoreboard players remove @s mech_power 256

execute if score temp_0 mech_data matches 1..256 store result entity @s HandItems[0].tag.Damage int 13 if entity @s
execute if score temp_0 mech_data matches 256..8000 store result entity @s HandItems[0].tag.Damage int 14 if entity @s
execute if score temp_0 mech_data matches 8000..16000 store result entity @s HandItems[0].tag.Damage int 15 if entity @s
execute if score temp_0 mech_data matches 16000..24000 store result entity @s HandItems[0].tag.Damage int 16 if entity @s
execute if score temp_0 mech_data matches 24000..32000 store result entity @s HandItems[0].tag.Damage int 17 if entity @s
execute if score temp_0 mech_data matches 32000..40000 store result entity @s HandItems[0].tag.Damage int 18 if entity @s
execute if score temp_0 mech_data matches 40000..48000 store result entity @s HandItems[0].tag.Damage int 19 if entity @s
execute if score temp_0 mech_data matches 48000..64000 store result entity @s HandItems[0].tag.Damage int 20 if entity @s
execute if score temp_0 mech_data matches 64001.. store result entity @s HandItems[0].tag.Damage int 21 if entity @s

#store scoreboard values
execute store result entity @s ArmorItems[3].tag.mech_power int 1 run scoreboard players get @s mech_power
execute store result entity @s ArmorItems[3].tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

#cleanup
execute unless block ~ ~ ~ barrier run kill @s