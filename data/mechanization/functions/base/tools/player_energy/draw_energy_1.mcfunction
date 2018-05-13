scoreboard players set out_0 mech_data 1
scoreboard players operation temp_0 mech_data -= in_0 mech_data
execute store result entity @s Inventory[1].tag.Energy int 1 run scoreboard players get temp_0 mech_data

execute if score temp_0 mech_data matches 1..256 store result entity @s Inventory[1].tag.Damage int 13 if entity @s
execute if score temp_0 mech_data matches 256..8000 store result entity @s Inventory[1].tag.Damage int 14 if entity @s
execute if score temp_0 mech_data matches 8000..16000 store result entity @s Inventory[1].tag.Damage int 15 if entity @s
execute if score temp_0 mech_data matches 16000..24000 store result entity @s Inventory[1].tag.Damage int 16 if entity @s
execute if score temp_0 mech_data matches 24000..32000 store result entity @s Inventory[1].tag.Damage int 17 if entity @s
execute if score temp_0 mech_data matches 32000..40000 store result entity @s Inventory[1].tag.Damage int 18 if entity @s
execute if score temp_0 mech_data matches 40000..48000 store result entity @s Inventory[1].tag.Damage int 19 if entity @s
execute if score temp_0 mech_data matches 48000..64000 store result entity @s Inventory[1].tag.Damage int 20 if entity @s
execute if score temp_0 mech_data matches 64001.. store result entity @s Inventory[1].tag.Damage int 21 if entity @s
