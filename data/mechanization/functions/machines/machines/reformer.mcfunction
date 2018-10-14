data merge entity @s {Fire:32676}

#load scoreboard values
execute unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s ArmorItems[3].tag.mech_power
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s ArmorItems[3].tag.mech_gridid

#main
scoreboard players set temp_0 mech_data 0
execute if score @s mech_power matches 128.. unless block ~ ~ ~ dropper{Items:[{tag:{Unbreakable:1b}}]} store result score temp_0 mech_data run data get block ~ ~ ~ Items[0].tag.Damage
execute if score temp_0 mech_data matches 2.. run scoreboard players remove @s mech_power 128
execute if score temp_0 mech_data matches 2.. run playsound mechanization:machines.reformer block @a[distance=..16] ~ ~ ~ 0.3 1.0
execute if score temp_0 mech_data matches 2.. run scoreboard players remove temp_0 mech_data 1
execute if score temp_0 mech_data matches 2.. if entity @s[tag=mech_upgraded] run scoreboard players remove temp_0 mech_data 1
execute if score temp_0 mech_data matches 1.. store result block ~ ~ ~ Items[0].tag.Damage int 1 run scoreboard players get temp_0 mech_data

scoreboard players set temp_0 mech_data -1
scoreboard players set temp_1 mech_data 0
execute if score @s mech_power matches 128.. if block ~ ~ ~ dropper{Items:[{tag:{Unbreakable:1b, du_durability:1b}}]} store result score temp_0 mech_data run data get block ~ ~ ~ Items[0].tag.durability_max
execute if score temp_0 mech_data matches 1.. store result score temp_1 mech_data run data get block ~ ~ ~ Items[0].tag.AttributeModifiers[0].Amount
execute if score temp_0 mech_data > temp_1 mech_data run scoreboard players remove @s mech_power 128
execute if score temp_0 mech_data > temp_1 mech_data run playsound mechanization:machines.reformer block @a[distance=..16] ~ ~ ~ 0.3 1.0
execute if score temp_0 mech_data > temp_1 mech_data run scoreboard players add temp_1 mech_data 1
execute if score temp_0 mech_data > temp_1 mech_data if entity @s[tag=mech_upgraded] run scoreboard players add temp_1 mech_data 1
execute if score temp_0 mech_data >= temp_1 mech_data store result block ~ ~ ~ Items[0].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get temp_1 mech_data

#store scoreboard values
execute store result entity @s ArmorItems[3].tag.mech_power int 1 run scoreboard players get @s mech_power
execute store result entity @s ArmorItems[3].tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

#cleanup
execute unless block ~ ~ ~ dropper run function give:mech_machines/machine_frame_tier_2
execute unless block ~ ~ ~ dropper run kill @s
