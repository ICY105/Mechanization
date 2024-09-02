
scoreboard players set #temp fluid.data 6421000
scoreboard players operation #temp fluid.data += @s fluid.data
execute store result entity @s item.tag.CustomModelData int 1 run scoreboard players get #temp fluid.data
