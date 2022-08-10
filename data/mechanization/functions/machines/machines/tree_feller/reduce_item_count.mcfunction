
execute store result score #count mechanization.data run data get entity @s Item.Count
scoreboard players remove #count mechanization.data 1
execute store result entity @s Item.Count byte 1 run scoreboard players get #count mechanization.data
execute if score #count mechanization.data matches ..0 run kill @s

scoreboard players set #success mechanization.data 1
