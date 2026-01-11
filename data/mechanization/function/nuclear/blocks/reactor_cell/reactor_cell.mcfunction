
# set CustomModelData
scoreboard players operation #model mechanization.data = @s fluid.storage.0
scoreboard players operation #model mechanization.data = #cons.90 mechanization.data
execute if score @s fluid.storage.0 matches 1.. run scoreboard players add #model mechanization.data 1
execute if score @s fluid.storage.0 matches 1.. run item modify entity @s contents {"function":"minecraft:set_custom_model_data","floats":{"values":[{"type":"minecraft:score","target":{"type":"minecraft:fixed","name":"#model"},"score":"mechanization.data","scale":1}],"mode":"replace_all"}}

# set color
execute if score @s fluid.storage.0 matches 1.. store result score #color mechanization.data run data get entity @s item.components."minecraft:custom_data".fluids[0]
execute if score @s fluid.storage.0 matches 1.. run item modify entity @s contents {"function":"minecraft:set_custom_model_data","tints":{"values":[{"type":"minecraft:score","target":{"type":"minecraft:fixed","name":"#color"},"score":"mechanization.data","scale":1}],"mode":"replace_all"}}

# break
execute unless block ~ ~ ~ minecraft:barrier run function mechanization:base/utils/break_block/break_machine
