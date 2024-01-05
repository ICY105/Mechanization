
# set CustomModelData
execute if score @s fluid.storage.0 matches ..0 run data modify entity @s item.tag.CustomModelData set value 6423008
execute if score @s fluid.storage.0 matches 1.. if score @s fluid.storage.1 matches ..0 run data modify entity @s item.tag.CustomModelData set value 6423009
execute if score @s fluid.storage.1 matches 1.. run data modify entity @s item.tag.CustomModelData set value 6423010

# set color
execute if score @s fluid.storage.0 matches 1.. run data modify entity @s item.tag.display.color set from entity @s item.tag.fluids[0].color

# break
execute unless block ~ ~ ~ minecraft:barrier run function mechanization:base/utils/break_block/break_machine
