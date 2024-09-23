
scoreboard players add #model mechanization.data 6422960
item replace block ~ ~ ~ container.8 with minecraft:structure_block[minecraft:custom_model_data=0,minecraft:hide_tooltip={},minecraft:custom_data={mechanization:{gui_item:1b}}]
item modify block ~ ~ ~ container.8 {"function":"minecraft:set_custom_model_data","value":{"type":"minecraft:score","target":{"type":"minecraft:fixed","name":"#model"},"score":"mechanization.data"}}
