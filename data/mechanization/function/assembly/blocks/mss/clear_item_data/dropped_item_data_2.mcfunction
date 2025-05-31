
data remove entity @s Item.components."minecraft:lore"[0]
data remove entity @s Item.components."minecraft:custom_data".mss
execute store result score #entries mechanization.data run data get entity @s Item.components."minecraft:custom_data"
execute if score #entries mechanization.data matches 0 run data remove entity @s Item.components."minecraft:custom_data"
