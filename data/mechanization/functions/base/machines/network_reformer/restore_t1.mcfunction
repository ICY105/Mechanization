execute store result score temp_0 mech_data run data get entity @s ArmorItems[3].tag.Damage

execute if score temp_0 mech_data matches 1 run scoreboard players set @s mech_power 0
execute if score temp_0 mech_data matches 2 run scoreboard players set @s mech_power 7143
execute if score temp_0 mech_data matches 3 run scoreboard players set @s mech_power 21428
execute if score temp_0 mech_data matches 4 run scoreboard players set @s mech_power 35714
execute if score temp_0 mech_data matches 5 run scoreboard players set @s mech_power 49999
execute if score temp_0 mech_data matches 6 run scoreboard players set @s mech_power 64285
execute if score temp_0 mech_data matches 7 run scoreboard players set @s mech_power 78571
execute if score temp_0 mech_data matches 8 run scoreboard players set @s mech_power 92807
execute if score temp_0 mech_data matches 9 run scoreboard players set @s mech_power 100000
