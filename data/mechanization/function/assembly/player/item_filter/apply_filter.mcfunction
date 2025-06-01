
# stop loop
scoreboard players set #loop mechanization.data -1
execute unless items block ~ ~ ~ container.* * run return 0

# add filler
execute unless items block ~ ~ ~ container.0 * run item replace block ~ ~ ~ container.0 with minecraft:barrier[minecraft:custom_data={mechanization:{gui_item:1b}}]
execute unless items block ~ ~ ~ container.1 * run item replace block ~ ~ ~ container.1 with minecraft:barrier[minecraft:custom_data={mechanization:{gui_item:1b}}]
execute unless items block ~ ~ ~ container.2 * run item replace block ~ ~ ~ container.2 with minecraft:barrier[minecraft:custom_data={mechanization:{gui_item:1b}}]
execute unless items block ~ ~ ~ container.3 * run item replace block ~ ~ ~ container.3 with minecraft:barrier[minecraft:custom_data={mechanization:{gui_item:1b}}]
execute unless items block ~ ~ ~ container.4 * run item replace block ~ ~ ~ container.4 with minecraft:barrier[minecraft:custom_data={mechanization:{gui_item:1b}}]
execute unless items block ~ ~ ~ container.5 * run item replace block ~ ~ ~ container.5 with minecraft:barrier[minecraft:custom_data={mechanization:{gui_item:1b}}]
execute unless items block ~ ~ ~ container.6 * run item replace block ~ ~ ~ container.6 with minecraft:barrier[minecraft:custom_data={mechanization:{gui_item:1b}}]
execute unless items block ~ ~ ~ container.7 * run item replace block ~ ~ ~ container.7 with minecraft:barrier[minecraft:custom_data={mechanization:{gui_item:1b}}]
execute unless items block ~ ~ ~ container.8 * run item replace block ~ ~ ~ container.8 with minecraft:barrier[minecraft:custom_data={mechanization:{gui_item:1b}}]

execute unless items block ~ ~ ~ container.9 * run item replace block ~ ~ ~ container.9 with minecraft:barrier[minecraft:custom_data={mechanization:{gui_item:1b}}]
execute unless items block ~ ~ ~ container.10 * run item replace block ~ ~ ~ container.10 with minecraft:barrier[minecraft:custom_data={mechanization:{gui_item:1b}}]
execute unless items block ~ ~ ~ container.11 * run item replace block ~ ~ ~ container.11 with minecraft:barrier[minecraft:custom_data={mechanization:{gui_item:1b}}]
execute unless items block ~ ~ ~ container.12 * run item replace block ~ ~ ~ container.12 with minecraft:barrier[minecraft:custom_data={mechanization:{gui_item:1b}}]
execute unless items block ~ ~ ~ container.13 * run item replace block ~ ~ ~ container.13 with minecraft:barrier[minecraft:custom_data={mechanization:{gui_item:1b}}]
execute unless items block ~ ~ ~ container.14 * run item replace block ~ ~ ~ container.14 with minecraft:barrier[minecraft:custom_data={mechanization:{gui_item:1b}}]
execute unless items block ~ ~ ~ container.15 * run item replace block ~ ~ ~ container.15 with minecraft:barrier[minecraft:custom_data={mechanization:{gui_item:1b}}]
execute unless items block ~ ~ ~ container.16 * run item replace block ~ ~ ~ container.16 with minecraft:barrier[minecraft:custom_data={mechanization:{gui_item:1b}}]
execute unless items block ~ ~ ~ container.17 * run item replace block ~ ~ ~ container.17 with minecraft:barrier[minecraft:custom_data={mechanization:{gui_item:1b}}]

execute unless items block ~ ~ ~ container.18 * run item replace block ~ ~ ~ container.18 with minecraft:barrier[minecraft:custom_data={mechanization:{gui_item:1b}}]
execute unless items block ~ ~ ~ container.19 * run item replace block ~ ~ ~ container.19 with minecraft:barrier[minecraft:custom_data={mechanization:{gui_item:1b}}]
execute unless items block ~ ~ ~ container.20 * run item replace block ~ ~ ~ container.20 with minecraft:barrier[minecraft:custom_data={mechanization:{gui_item:1b}}]
execute unless items block ~ ~ ~ container.21 * run item replace block ~ ~ ~ container.21 with minecraft:barrier[minecraft:custom_data={mechanization:{gui_item:1b}}]
execute unless items block ~ ~ ~ container.22 * run item replace block ~ ~ ~ container.22 with minecraft:barrier[minecraft:custom_data={mechanization:{gui_item:1b}}]
execute unless items block ~ ~ ~ container.23 * run item replace block ~ ~ ~ container.23 with minecraft:barrier[minecraft:custom_data={mechanization:{gui_item:1b}}]
execute unless items block ~ ~ ~ container.24 * run item replace block ~ ~ ~ container.24 with minecraft:barrier[minecraft:custom_data={mechanization:{gui_item:1b}}]
execute unless items block ~ ~ ~ container.25 * run item replace block ~ ~ ~ container.25 with minecraft:barrier[minecraft:custom_data={mechanization:{gui_item:1b}}]
execute unless items block ~ ~ ~ container.26 * run item replace block ~ ~ ~ container.26 with minecraft:barrier[minecraft:custom_data={mechanization:{gui_item:1b}}]

# copy items
setblock -30000000 0 3201 minecraft:yellow_shulker_box
item replace block -30000000 0 3201 container.0 from entity @s weapon.mainhand
data modify block -30000000 0 3201 Items[{Slot:0b}].components."minecraft:custom_data".mechanization.items set from block ~ ~ ~ Items
item modify block -30000000 0 3201 container.0 {function:"minecraft:set_components",components:{"minecraft:enchantment_glint_override":1b}}
item replace entity @s weapon.mainhand from block -30000000 0 3201 container.0

# remove filler
data remove block ~ ~ ~ Items[{components:{"minecraft:custom_data":{ mechanization:{gui_item:1b}}}}]
