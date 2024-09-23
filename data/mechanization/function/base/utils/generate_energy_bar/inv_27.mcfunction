
scoreboard players add #model mechanization.data 6422920
item replace block ~ ~ ~ container.26 with minecraft:structure_block[minecraft:hide_tooltip={},minecraft:custom_data={mechanization:{gui_item:1b}}]
item modify block ~ ~ ~ container.26 {"function":"minecraft:set_custom_model_data","value":{"type":"minecraft:score","target":{"type":"minecraft:fixed","name":"#model"},"score":"mechanization.data"}}
