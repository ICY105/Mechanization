
execute store result score temp_0 du_data run data get entity @s Inventory[10].Slot
execute if score temp_0 du_data = in_0 du_data store result score temp_2 du_data run data get entity @s Inventory[10].tag.AttributeModifiers[0].Amount
execute if score temp_0 du_data = in_0 du_data run scoreboard players remove temp_2 du_data 1
execute if score temp_0 du_data = in_0 du_data store result entity @s Inventory[10].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get temp_2 du_data

execute store result score temp_0 du_data run data get entity @s Inventory[9].Slot
execute if score temp_0 du_data = in_0 du_data store result score temp_2 du_data run data get entity @s Inventory[9].tag.AttributeModifiers[0].Amount
execute if score temp_0 du_data = in_0 du_data run scoreboard players remove temp_2 du_data 1
execute if score temp_0 du_data = in_0 du_data store result entity @s Inventory[9].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get temp_2 du_data

execute store result score temp_0 du_data run data get entity @s Inventory[8].Slot
execute if score temp_0 du_data = in_0 du_data store result score temp_2 du_data run data get entity @s Inventory[8].tag.AttributeModifiers[0].Amount
execute if score temp_0 du_data = in_0 du_data run scoreboard players remove temp_2 du_data 1
execute if score temp_0 du_data = in_0 du_data store result entity @s Inventory[8].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get temp_2 du_data

execute store result score temp_0 du_data run data get entity @s Inventory[7].Slot
execute if score temp_0 du_data = in_0 du_data store result score temp_2 du_data run data get entity @s Inventory[7].tag.AttributeModifiers[0].Amount
execute if score temp_0 du_data = in_0 du_data run scoreboard players remove temp_2 du_data 1
execute if score temp_0 du_data = in_0 du_data store result entity @s Inventory[7].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get temp_2 du_data

execute store result score temp_0 du_data run data get entity @s Inventory[6].Slot
execute if score temp_0 du_data = in_0 du_data store result score temp_2 du_data run data get entity @s Inventory[6].tag.AttributeModifiers[0].Amount
execute if score temp_0 du_data = in_0 du_data run scoreboard players remove temp_2 du_data 1
execute if score temp_0 du_data = in_0 du_data store result entity @s Inventory[6].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get temp_2 du_data


