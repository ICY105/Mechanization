tag @s remove mech_manual_open

execute store result score temp_0 mech_data run data get entity @s Inventory[0].tag.mech_itemid
execute if score temp_0 mech_data matches 1103 store result entity @s Inventory[0].tag.Damage int 1 run data get entity @s Inventory[0].tag.manual.base

execute store result score temp_0 mech_data run data get entity @s Inventory[1].tag.mech_itemid
execute if score temp_0 mech_data matches 1103 store result entity @s Inventory[1].tag.Damage int 1 run data get entity @s Inventory[1].tag.manual.base

execute store result score temp_0 mech_data run data get entity @s Inventory[2].tag.mech_itemid
execute if score temp_0 mech_data matches 1103 store result entity @s Inventory[2].tag.Damage int 1 run data get entity @s Inventory[2].tag.manual.base

execute store result score temp_0 mech_data run data get entity @s Inventory[3].tag.mech_itemid
execute if score temp_0 mech_data matches 1103 store result entity @s Inventory[3].tag.Damage int 1 run data get entity @s Inventory[3].tag.manual.base

execute store result score temp_0 mech_data run data get entity @s Inventory[4].tag.mech_itemid
execute if score temp_0 mech_data matches 1103 store result entity @s Inventory[4].tag.Damage int 1 run data get entity @s Inventory[4].tag.manual.base

execute store result score temp_0 mech_data run data get entity @s Inventory[5].tag.mech_itemid
execute if score temp_0 mech_data matches 1103 store result entity @s Inventory[5].tag.Damage int 1 run data get entity @s Inventory[5].tag.manual.base

execute store result score temp_0 mech_data run data get entity @s Inventory[6].tag.mech_itemid
execute if score temp_0 mech_data matches 1103 store result entity @s Inventory[6].tag.Damage int 1 run data get entity @s Inventory[6].tag.manual.base

execute store result score temp_0 mech_data run data get entity @s Inventory[7].tag.mech_itemid
execute if score temp_0 mech_data matches 1103 store result entity @s Inventory[7].tag.Damage int 1 run data get entity @s Inventory[7].tag.manual.base

execute store result score temp_0 mech_data run data get entity @s Inventory[8].tag.mech_itemid
execute if score temp_0 mech_data matches 1103 store result entity @s Inventory[8].tag.Damage int 1 run data get entity @s Inventory[8].tag.manual.base
