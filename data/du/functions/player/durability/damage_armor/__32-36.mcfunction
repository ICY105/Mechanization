
execute store result score temp_0 du_data run data get entity @s Inventory[36].Slot
execute if score temp_0 du_data = in_0 du_data store result score temp_2 du_data run data get entity @s Inventory[36].tag.AttributeModifiers[0].Amount
execute if score temp_0 du_data = in_0 du_data run scoreboard players remove temp_2 du_data 1
execute if score temp_0 du_data = in_0 du_data store result entity @s Inventory[36].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get temp_2 du_data

execute store result score temp_0 du_data run data get entity @s Inventory[35].Slot
execute if score temp_0 du_data = in_0 du_data store result score temp_2 du_data run data get entity @s Inventory[35].tag.AttributeModifiers[0].Amount
execute if score temp_0 du_data = in_0 du_data run scoreboard players remove temp_2 du_data 1
execute if score temp_0 du_data = in_0 du_data store result entity @s Inventory[35].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get temp_2 du_data

execute store result score temp_0 du_data run data get entity @s Inventory[34].Slot
execute if score temp_0 du_data = in_0 du_data store result score temp_2 du_data run data get entity @s Inventory[34].tag.AttributeModifiers[0].Amount
execute if score temp_0 du_data = in_0 du_data run scoreboard players remove temp_2 du_data 1
execute if score temp_0 du_data = in_0 du_data store result entity @s Inventory[34].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get temp_2 du_data

execute store result score temp_0 du_data run data get entity @s Inventory[33].Slot
execute if score temp_0 du_data = in_0 du_data store result score temp_2 du_data run data get entity @s Inventory[33].tag.AttributeModifiers[0].Amount
execute if score temp_0 du_data = in_0 du_data run scoreboard players remove temp_2 du_data 1
execute if score temp_0 du_data = in_0 du_data store result entity @s Inventory[33].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get temp_2 du_data

execute store result score temp_0 du_data run data get entity @s Inventory[32].Slot
execute if score temp_0 du_data = in_0 du_data store result score temp_2 du_data run data get entity @s Inventory[32].tag.AttributeModifiers[0].Amount
execute if score temp_0 du_data = in_0 du_data run scoreboard players remove temp_2 du_data 1
execute if score temp_0 du_data = in_0 du_data store result entity @s Inventory[32].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get temp_2 du_data


