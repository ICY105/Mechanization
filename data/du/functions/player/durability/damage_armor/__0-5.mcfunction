
execute store result score temp_0 du_data run data get entity @s Inventory[5].Slot
execute if score temp_0 du_data = in_0 du_data store result score temp_2 du_data run data get entity @s Inventory[5].tag.AttributeModifiers[0].Amount
execute if score temp_0 du_data = in_0 du_data run scoreboard players remove temp_2 du_data 1
execute if score temp_0 du_data = in_0 du_data store result entity @s Inventory[5].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get temp_2 du_data

execute store result score temp_0 du_data run data get entity @s Inventory[4].Slot
execute if score temp_0 du_data = in_0 du_data store result score temp_2 du_data run data get entity @s Inventory[4].tag.AttributeModifiers[0].Amount
execute if score temp_0 du_data = in_0 du_data run scoreboard players remove temp_2 du_data 1
execute if score temp_0 du_data = in_0 du_data store result entity @s Inventory[4].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get temp_2 du_data

execute store result score temp_0 du_data run data get entity @s Inventory[3].Slot
execute if score temp_0 du_data = in_0 du_data store result score temp_2 du_data run data get entity @s Inventory[3].tag.AttributeModifiers[0].Amount
execute if score temp_0 du_data = in_0 du_data run scoreboard players remove temp_2 du_data 1
execute if score temp_0 du_data = in_0 du_data store result entity @s Inventory[3].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get temp_2 du_data

execute store result score temp_0 du_data run data get entity @s Inventory[2].Slot
execute if score temp_0 du_data = in_0 du_data store result score temp_2 du_data run data get entity @s Inventory[2].tag.AttributeModifiers[0].Amount
execute if score temp_0 du_data = in_0 du_data run scoreboard players remove temp_2 du_data 1
execute if score temp_0 du_data = in_0 du_data store result entity @s Inventory[2].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get temp_2 du_data

execute store result score temp_0 du_data run data get entity @s Inventory[1].Slot
execute if score temp_0 du_data = in_0 du_data store result score temp_2 du_data run data get entity @s Inventory[1].tag.AttributeModifiers[0].Amount
execute if score temp_0 du_data = in_0 du_data run scoreboard players remove temp_2 du_data 1
execute if score temp_0 du_data = in_0 du_data store result entity @s Inventory[1].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get temp_2 du_data

execute store result score temp_0 du_data run data get entity @s Inventory[0].Slot
execute if score temp_0 du_data = in_0 du_data store result score temp_2 du_data run data get entity @s Inventory[0].tag.AttributeModifiers[0].Amount
execute if score temp_0 du_data = in_0 du_data run scoreboard players remove temp_2 du_data 1
execute if score temp_0 du_data = in_0 du_data store result entity @s Inventory[0].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get temp_2 du_data
