
scoreboard players set $temp_0 mechanization.data 0
execute store result score $temp_0 mechanization.data run clear @s minecraft:knowledge_book 1
execute if score $temp_0 mechanization.data matches 1 run loot give @s loot mechanization:base/manual/start

advancement revoke @s only mechanization:triggers/craft_mechanical_manual
recipe take @s mechanization:mechanical_manual
