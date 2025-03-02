
execute unless items block ~ ~ ~ container.1 * run item replace block ~ ~ ~ container.1 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/invisible"]
item modify block ~ ~ ~ container.1 {"function": "minecraft:set_components","components": {"minecraft:item_model": "mechanization:base/gui/energy_bar_3"}}
item modify block ~ ~ ~ container.1 {"function":"minecraft:set_custom_model_data","floats":{"values":[{"type":"minecraft:score","target":{"type":"minecraft:fixed","name":"#model"},"score":"mechanization.data","scale":1}],"mode":"replace_all"}}
