
scoreboard players set #result mechanization.data 0
execute store result score #result mechanization.data run clear @s minecraft:knowledge_book 1
execute if score #result mechanization.data matches 1 run loot give @s loot mechanization:base/manual/start

advancement revoke @s only mechanization:triggers/craft_mechanical_manual
recipe take @s mechanization:mechanical_manual
