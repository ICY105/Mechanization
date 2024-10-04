
scoreboard players set #model mechanization.data 6421000
scoreboard players operation #model mechanization.data += @s energy.data
item modify entity @s contents {"function":"minecraft:set_custom_model_data","value":{"type":"minecraft:score","target":{"type":"minecraft:fixed","name":"#model"},"score":"mechanization.data"}}
