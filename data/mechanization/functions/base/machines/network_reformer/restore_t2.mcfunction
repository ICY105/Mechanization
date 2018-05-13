execute store result score temp_0 mech_data run data get entity @s ArmorItems[3].tag.Damage

execute if score temp_0 mech_data matches 10 run scoreboard players set @s mech_power 0
execute if score temp_0 mech_data matches 11 run scoreboard players set @s mech_power 25000
execute if score temp_0 mech_data matches 12 run scoreboard players set @s mech_power 75000
execute if score temp_0 mech_data matches 13 run scoreboard players set @s mech_power 125000
execute if score temp_0 mech_data matches 14 run scoreboard players set @s mech_power 175000
execute if score temp_0 mech_data matches 15 run scoreboard players set @s mech_power 225000
execute if score temp_0 mech_data matches 16 run scoreboard players set @s mech_power 275000
execute if score temp_0 mech_data matches 17 run scoreboard players set @s mech_power 325000
execute if score temp_0 mech_data matches 18 run scoreboard players set @s mech_power 350000
