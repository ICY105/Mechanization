scoreboard players set out_0 mech_data 1
scoreboard players operation temp_0 mech_data -= in_0 mech_data
execute store result entity @s Inventory[2].tag.Energy int 1 run scoreboard players get temp_0 mech_data

execute if score temp_0 mech_data matches 1..256 store result entity @s Inventory[2].tag.Damage int 123 if entity @s
execute if score temp_0 mech_data matches 256..8000 store result entity @s Inventory[2].tag.Damage int 124 if entity @s
execute if score temp_0 mech_data matches 8000..16000 store result entity @s Inventory[2].tag.Damage int 125 if entity @s
execute if score temp_0 mech_data matches 16000..24000 store result entity @s Inventory[2].tag.Damage int 126 if entity @s
execute if score temp_0 mech_data matches 24000..32000 store result entity @s Inventory[2].tag.Damage int 127 if entity @s
execute if score temp_0 mech_data matches 32000..40000 store result entity @s Inventory[2].tag.Damage int 128 if entity @s
execute if score temp_0 mech_data matches 40000..48000 store result entity @s Inventory[2].tag.Damage int 129 if entity @s
execute if score temp_0 mech_data matches 48000..64000 store result entity @s Inventory[2].tag.Damage int 130 if entity @s
execute if score temp_0 mech_data matches 64001.. store result entity @s Inventory[2].tag.Damage int 131 if entity @s
