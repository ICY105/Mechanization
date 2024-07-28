
scoreboard players set #result mechanization.data 0
execute store result score #result mechanization.data run clear @s minecraft:knowledge_book 1
execute if score #result mechanization.data matches 1 run loot give @s loot mechanization:base/machine_crafting_table

advancement revoke @s only mechanization:triggers/craft_machine_crafting_table
recipe take @s mechanization:machine_crafting_table

