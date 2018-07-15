
execute store result score temp_0 du_data run data get entity @s Inventory[31].Slot
execute if score temp_0 du_data = in_0 du_data store result score temp_2 du_data run data get entity @s Inventory[31].tag.AttributeModifiers[0].Amount
execute if score temp_0 du_data = in_0 du_data run scoreboard players remove temp_2 du_data 1
execute if score temp_0 du_data = in_0 du_data store result entity @s Inventory[31].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get temp_2 du_data

execute store result score temp_0 du_data run data get entity @s Inventory[30].Slot
execute if score temp_0 du_data = in_0 du_data store result score temp_2 du_data run data get entity @s Inventory[30].tag.AttributeModifiers[0].Amount
execute if score temp_0 du_data = in_0 du_data run scoreboard players remove temp_2 du_data 1
execute if score temp_0 du_data = in_0 du_data store result entity @s Inventory[30].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get temp_2 du_data

execute store result score temp_0 du_data run data get entity @s Inventory[29].Slot
execute if score temp_0 du_data = in_0 du_data store result score temp_2 du_data run data get entity @s Inventory[29].tag.AttributeModifiers[0].Amount
execute if score temp_0 du_data = in_0 du_data run scoreboard players remove temp_2 du_data 1
execute if score temp_0 du_data = in_0 du_data store result entity @s Inventory[29].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get temp_2 du_data

execute store result score temp_0 du_data run data get entity @s Inventory[28].Slot
execute if score temp_0 du_data = in_0 du_data store result score temp_2 du_data run data get entity @s Inventory[28].tag.AttributeModifiers[0].Amount
execute if score temp_0 du_data = in_0 du_data run scoreboard players remove temp_2 du_data 1
execute if score temp_0 du_data = in_0 du_data store result entity @s Inventory[28].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get temp_2 du_data

execute store result score temp_0 du_data run data get entity @s Inventory[27].Slot
execute if score temp_0 du_data = in_0 du_data store result score temp_2 du_data run data get entity @s Inventory[27].tag.AttributeModifiers[0].Amount
execute if score temp_0 du_data = in_0 du_data run scoreboard players remove temp_2 du_data 1
execute if score temp_0 du_data = in_0 du_data store result entity @s Inventory[27].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get temp_2 du_data
