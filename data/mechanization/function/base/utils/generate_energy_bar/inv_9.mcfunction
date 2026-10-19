
execute unless items block ~ ~ ~ container.8 * run item replace block ~ ~ ~ container.8 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:tooltip_display={hide_tooltip:1b},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/invisible"]
item modify block ~ ~ ~ container.8 {"type": "minecraft:set_components","components": {"minecraft:item_model": "mechanization:base/gui/energy_bar_9"}}
item modify block ~ ~ ~ container.8 mechanization:set_custom_model_float
