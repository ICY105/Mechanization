
scoreboard players set #temp energy.data 6421000
scoreboard players operation #temp energy.data += @s energy.data
execute store result entity @s item.tag.CustomModelData int 1 run scoreboard players get #temp energy.data


