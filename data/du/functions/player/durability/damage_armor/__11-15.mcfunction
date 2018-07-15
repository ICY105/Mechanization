
execute store result score temp_0 du_data run data get entity @s Inventory[15].Slot
execute if score temp_0 du_data = in_0 du_data store result score temp_2 du_data run data get entity @s Inventory[15].tag.AttributeModifiers[0].Amount
execute if score temp_0 du_data = in_0 du_data run scoreboard players remove temp_2 du_data 1
execute if score temp_0 du_data = in_0 du_data store result entity @s Inventory[15].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get temp_2 du_data

execute store result score temp_0 du_data run data get entity @s Inventory[14].Slot
execute if score temp_0 du_data = in_0 du_data store result score temp_2 du_data run data get entity @s Inventory[14].tag.AttributeModifiers[0].Amount
execute if score temp_0 du_data = in_0 du_data run scoreboard players remove temp_2 du_data 1
execute if score temp_0 du_data = in_0 du_data store result entity @s Inventory[14].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get temp_2 du_data

execute store result score temp_0 du_data run data get entity @s Inventory[13].Slot
execute if score temp_0 du_data = in_0 du_data store result score temp_2 du_data run data get entity @s Inventory[13].tag.AttributeModifiers[0].Amount
execute if score temp_0 du_data = in_0 du_data run scoreboard players remove temp_2 du_data 1
execute if score temp_0 du_data = in_0 du_data store result entity @s Inventory[13].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get temp_2 du_data

execute store result score temp_0 du_data run data get entity @s Inventory[12].Slot
execute if score temp_0 du_data = in_0 du_data store result score temp_2 du_data run data get entity @s Inventory[12].tag.AttributeModifiers[0].Amount
execute if score temp_0 du_data = in_0 du_data run scoreboard players remove temp_2 du_data 1
execute if score temp_0 du_data = in_0 du_data store result entity @s Inventory[12].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get temp_2 du_data

execute store result score temp_0 du_data run data get entity @s Inventory[11].Slot
execute if score temp_0 du_data = in_0 du_data store result score temp_2 du_data run data get entity @s Inventory[11].tag.AttributeModifiers[0].Amount
execute if score temp_0 du_data = in_0 du_data run scoreboard players remove temp_2 du_data 1
execute if score temp_0 du_data = in_0 du_data store result entity @s Inventory[11].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get temp_2 du_data


