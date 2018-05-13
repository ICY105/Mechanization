
execute store result score temp_1 mech_data run data get entity @s Inventory[2].tag.Damage

scoreboard players operation temp_2 mech_data = temp_1 mech_data
scoreboard players set temp_3 mech_data 2
scoreboard players operation temp_2 mech_data %= temp_3 mech_data

execute if score temp_2 mech_data matches 0 run scoreboard players remove temp_1 mech_data 1
execute if score temp_2 mech_data matches 1 run scoreboard players add temp_1 mech_data 1
execute if score temp_2 mech_data matches 0 store success entity @s Inventory[2].tag.AttributeModifiers[0].Amount double 0.0 if entity @s
execute if score temp_2 mech_data matches 1 store success entity @s Inventory[2].tag.AttributeModifiers[0].Amount double -0.6 if entity @s

execute store result entity @s Inventory[2].tag.Damage int 1 run scoreboard players get temp_1 mech_data
