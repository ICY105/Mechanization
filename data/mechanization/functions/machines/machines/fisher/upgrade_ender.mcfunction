
#main
scoreboard players set temp_0 mech_data 0
execute if score @s mech_power matches 240.. store result score temp_0 mech_data run clone ~-2 ~-2 ~-2 ~2 ~2 ~2 ~-2 ~-2 ~-2 filtered #mechanization:water force
execute if score temp_0 mech_data matches 120.. run scoreboard players remove @s mech_power 240
execute if score temp_0 mech_data matches 120.. run loot spawn ~ ~-1 ~ fish mechanization:gameplay/fishing ~ ~1 ~ minecraft:fishing_rod{Enchantments:[{lvl:3,id:"minecraft:luck_of_the_sea"}]}
execute if score temp_0 mech_data matches 120.. run playsound mechanization:machines.fisher block @a[distance=..16] ~ ~ ~
