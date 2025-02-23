
setblock -30000000 0 3201 minecraft:yellow_shulker_box replace

execute unless items block ~ ~ ~ container.0 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.0 from block ~ ~ ~ container.0
execute unless items block ~ ~ ~ container.1 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.1 from block ~ ~ ~ container.1
execute unless items block ~ ~ ~ container.2 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.2 from block ~ ~ ~ container.2
execute unless items block ~ ~ ~ container.3 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.3 from block ~ ~ ~ container.3
execute unless items block ~ ~ ~ container.4 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.4 from block ~ ~ ~ container.4
execute unless items block ~ ~ ~ container.5 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.5 from block ~ ~ ~ container.5
execute unless items block ~ ~ ~ container.6 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.6 from block ~ ~ ~ container.6
execute unless items block ~ ~ ~ container.7 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.7 from block ~ ~ ~ container.7
execute unless items block ~ ~ ~ container.8 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.8 from block ~ ~ ~ container.8

execute unless items block ~ ~ ~ container.9 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.9 from block ~ ~ ~ container.9
execute unless items block ~ ~ ~ container.11 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.11 from block ~ ~ ~ container.11

execute unless items block ~ ~ ~ container.18 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.18 from block ~ ~ ~ container.18
execute unless items block ~ ~ ~ container.19 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.19 from block ~ ~ ~ container.19
execute unless items block ~ ~ ~ container.20 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.20 from block ~ ~ ~ container.20
execute unless items block ~ ~ ~ container.21 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.21 from block ~ ~ ~ container.21
execute unless items block ~ ~ ~ container.22 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.22 from block ~ ~ ~ container.22
execute unless items block ~ ~ ~ container.23 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.23 from block ~ ~ ~ container.23
execute unless items block ~ ~ ~ container.24 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.24 from block ~ ~ ~ container.24
execute unless items block ~ ~ ~ container.26 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.26 from block ~ ~ ~ container.26

item replace block ~ ~ ~ container.12 with minecraft:air
item replace block ~ ~ ~ container.13 with minecraft:air
item replace block ~ ~ ~ container.14 with minecraft:air
item replace block ~ ~ ~ container.15 with minecraft:air
item replace block ~ ~ ~ container.16 with minecraft:air
item replace block ~ ~ ~ container.17 with minecraft:air

execute if data block -30000000 0 3201 Items[0] run loot spawn ^ ^ ^1 mine -30000000 0 3201 minecraft:debug_stick[minecraft:custom_data={drop_contents:1b}]

data modify entity @s item.components."minecraft:custom_data".stored_item set value {}
