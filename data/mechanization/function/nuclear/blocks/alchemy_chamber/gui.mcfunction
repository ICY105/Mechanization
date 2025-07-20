
# clear UI items in invalid slots
execute if items block ~ ~ ~ container.1 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block ~ ~ ~ container.1 with minecraft:air
execute if items block ~ ~ ~ container.7 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block ~ ~ ~ container.7 with minecraft:air

# drop invalid items
setblock -30000000 0 3201 minecraft:yellow_shulker_box replace
execute unless items block ~ ~ ~ container.0 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.0 from block ~ ~ ~ container.0
execute unless items block ~ ~ ~ container.2 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.2 from block ~ ~ ~ container.2
execute unless items block ~ ~ ~ container.3 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.3 from block ~ ~ ~ container.3
execute unless items block ~ ~ ~ container.4 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.4 from block ~ ~ ~ container.4
execute unless items block ~ ~ ~ container.5 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.5 from block ~ ~ ~ container.5
execute unless items block ~ ~ ~ container.6 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.6 from block ~ ~ ~ container.6
execute unless items block ~ ~ ~ container.8 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.8 from block ~ ~ ~ container.8
execute if items block -30000000 0 3201 container.* * run loot spawn ^ ^ ^1 mine -30000000 0 3201 minecraft:debug_stick[minecraft:custom_data={drop_contents:1b}]

# fill in 
item replace block ~ ~ ~ container.0 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/invisible"]
item replace block ~ ~ ~ container.2 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/invisible"]
item replace block ~ ~ ~ container.3 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/invisible"]
item replace block ~ ~ ~ container.4 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/invisible"]
item replace block ~ ~ ~ container.6 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/invisible"]
item replace block ~ ~ ~ container.8 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/invisible"]

# flux state bar
item replace block ~ ~ ~ container.5 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:nuclear/gui/alchemy_chamber_bar"]

scoreboard players operation #model mechanization.data = @s mechanization.data
scoreboard players operation #model mechanization.data *= #cons.16 mechanization.data
scoreboard players operation #model mechanization.data /= #flux mechanization.data
execute if score #model mechanization.data matches 17.. run scoreboard players set #model mechanization.data 16

execute if score #flux mechanization.time matches 1000000 run scoreboard players set #model mechanization.data 0
item modify block ~ ~ ~ container.5 {"function":"minecraft:set_custom_model_data","floats":{"values":[{"type":"minecraft:score","target":{"type":"minecraft:fixed","name":"#model"},"score":"mechanization.data","scale":1}],"mode":"replace_all"}}

# freeze hoppers
execute if block ~ ~-1 ~ minecraft:hopper run data modify block ~ ~-1 ~ TransferCooldown set value 30
execute align xyz positioned ~ ~-1.5 ~ as @e[type=minecraft:hopper_minecart,dx=0,dy=0,dz=0] run data modify entity @s Enabled set value 0b
