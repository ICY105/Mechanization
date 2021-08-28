
#main
scoreboard players set temp_0 mech_data 0
execute if score @s mech_power >= $machines.cf.fisher.power mech_data store result score temp_0 mech_data run clone ~-2 ~-2 ~-2 ~2 ~2 ~2 ~-2 ~-2 ~-2 filtered #mechanization:water force
execute if score temp_0 mech_data matches 120.. run scoreboard players operation @s mech_power -= $machines.cf.fisher.power mech_data
execute if score temp_0 mech_data matches 120.. run loot spawn ~ ~-1 ~ fish minecraft:gameplay/fishing ~ ~1 ~
execute if score temp_0 mech_data matches 120.. run playsound mechanization:machines.fisher block @a[distance=..16] ~ ~ ~
