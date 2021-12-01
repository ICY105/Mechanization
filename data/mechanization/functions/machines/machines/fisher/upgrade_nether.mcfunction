
#main
scoreboard players set temp_0 mechanization.data 0
execute if score @s mechanization.stored_energy >= $machines.cf.fisher.power mechanization.data store result score temp_0 mechanization.data run clone ~-2 ~-2 ~-2 ~2 ~2 ~2 ~-2 ~-2 ~-2 filtered #mechanization:water force
execute if score temp_0 mechanization.data matches 120.. run scoreboard players operation @s mechanization.stored_energy -= $machines.cf.fisher.power mech_data
execute if score temp_0 mechanization.data matches 120.. run loot spawn ~ ~-1 ~ loot mechanization:gameplay/fishing
execute if score temp_0 mechanization.data matches 120.. run loot spawn ~ ~-1 ~ loot mechanization:gameplay/fishing
execute if score temp_0 mechanization.data matches 120.. if entity @s[tag=!mech_muffler] run playsound mechanization:machines.fisher block @a[distance=..16] ~ ~ ~
