
# select cast
execute if items block ~ ~ ~ container.26 * unless items block ~ ~ ~ container.3 * run scoreboard players set @s mechanization.data 0
execute if items block ~ ~ ~ container.26 * unless items block ~ ~ ~ container.4 * run scoreboard players set @s mechanization.data 1
execute if items block ~ ~ ~ container.26 * unless items block ~ ~ ~ container.5 * run scoreboard players set @s mechanization.data 2
execute if items block ~ ~ ~ container.26 * unless items block ~ ~ ~ container.6 * run scoreboard players set @s mechanization.data 3
execute if items block ~ ~ ~ container.26 * unless items block ~ ~ ~ container.7 * run scoreboard players set @s mechanization.data 4
execute if items block ~ ~ ~ container.26 * unless items block ~ ~ ~ container.8 * run scoreboard players set @s mechanization.data 8
execute if items block ~ ~ ~ container.26 * unless items block ~ ~ ~ container.13 * run scoreboard players set @s mechanization.data 5
execute if items block ~ ~ ~ container.26 * unless items block ~ ~ ~ container.14 * run scoreboard players set @s mechanization.data 6
execute if items block ~ ~ ~ container.26 * unless items block ~ ~ ~ container.15 * run scoreboard players set @s mechanization.data 7

# clear UI items in invalid slots
execute if items block ~ ~ ~ container.0 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block ~ ~ ~ container.0 with minecraft:air
execute if items block ~ ~ ~ container.12 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block ~ ~ ~ container.12 with minecraft:air
execute if items block ~ ~ ~ container.18 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block ~ ~ ~ container.18 with minecraft:air
execute if score @s mechanization.data matches 8 if items block ~ ~ ~ container.21 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block ~ ~ ~ container.21 with minecraft:air

# drop invalid items
setblock -30000000 0 3201 minecraft:yellow_shulker_box replace
execute unless items block ~ ~ ~ container.1 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.1 from block ~ ~ ~ container.1
execute unless items block ~ ~ ~ container.2 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.2 from block ~ ~ ~ container.2
execute unless items block ~ ~ ~ container.3 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.3 from block ~ ~ ~ container.3
execute unless items block ~ ~ ~ container.4 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.3 from block ~ ~ ~ container.4
execute unless items block ~ ~ ~ container.5 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.5 from block ~ ~ ~ container.5
execute unless items block ~ ~ ~ container.6 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.6 from block ~ ~ ~ container.6
execute unless items block ~ ~ ~ container.7 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.7 from block ~ ~ ~ container.7
execute unless items block ~ ~ ~ container.8 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.8 from block ~ ~ ~ container.8
execute unless items block ~ ~ ~ container.9 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.9 from block ~ ~ ~ container.9
execute unless items block ~ ~ ~ container.10 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.10 from block ~ ~ ~ container.10
execute unless items block ~ ~ ~ container.11 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.11 from block ~ ~ ~ container.11
execute unless items block ~ ~ ~ container.13 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.13 from block ~ ~ ~ container.13
execute unless items block ~ ~ ~ container.14 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.14 from block ~ ~ ~ container.14
execute unless items block ~ ~ ~ container.15 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.15 from block ~ ~ ~ container.15
execute unless items block ~ ~ ~ container.16 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.16 from block ~ ~ ~ container.16
execute unless items block ~ ~ ~ container.17 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.17 from block ~ ~ ~ container.17
execute unless items block ~ ~ ~ container.19 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.19 from block ~ ~ ~ container.19
execute unless items block ~ ~ ~ container.20 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.20 from block ~ ~ ~ container.20
execute unless score @s mechanization.data matches 8 unless items block ~ ~ ~ container.21 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.21 from block ~ ~ ~ container.21
execute unless items block ~ ~ ~ container.22 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.21 from block ~ ~ ~ container.22
execute unless items block ~ ~ ~ container.23 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.23 from block ~ ~ ~ container.23
execute unless items block ~ ~ ~ container.24 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.24 from block ~ ~ ~ container.24
execute unless items block ~ ~ ~ container.25 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.25 from block ~ ~ ~ container.25
execute unless items block ~ ~ ~ container.26 #mechanization:gui_item[custom_data~{mechanization:{gui_item:1b}}] run item replace block -30000000 0 3201 container.26 from block ~ ~ ~ container.26
execute if data block -30000000 0 3201 Items[0] run loot spawn ^ ^ ^1 mine -30000000 0 3201 minecraft:debug_stick[minecraft:custom_data={drop_contents:1b}]

# move items
execute if items block ~ ~ ~ container.0 * run function mechanization:machines/blocks/casting_basin/m.gui_move_item {slot: 0}

# handle fluid slot IO
scoreboard players set #slot_io.in fluid.data 0
execute if items block ~ ~ ~ container.0 * run function mechanization:base/utils/fluid_slot_io/slot_io_0

# fill in items
item replace block ~ ~ ~ container.2 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},!minecraft:food,minecraft:item_model="mechanization:base/gui/invisible"]
item replace block ~ ~ ~ container.3 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},!minecraft:food,minecraft:item_model="mechanization:base/gui/invisible"]
item replace block ~ ~ ~ container.4 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b,gui_interact:1b}},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:machines/gui/ingot_cast",item_name='{"translate":"item.mechanization.ingot_cast","italic":false}',lore=['{"translate":"lore.mechanization.cast_cost","italic":false,"color":"gray","with":[{"text":"144"},{"text":"1"}]}']]
item replace block ~ ~ ~ container.5 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b,gui_interact:1b}},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:machines/gui/block_cast",item_name='{"translate":"item.mechanization.block_cast","italic":false}',lore=['{"translate":"lore.mechanization.cast_cost","italic":false,"color":"gray","with":[{"text":"1296"},{"text":"9"}]}','{"translate":"lore.mechanization.cast_cost_gem","italic":false,"color":"gray","with":[{"text":"648"},{"text":"9"}]}']]
item replace block ~ ~ ~ container.6 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b,gui_interact:1b}},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:machines/gui/nugget_cast",item_name='{"translate":"item.mechanization.nugget_cast","italic":false}',lore=['{"translate":"lore.mechanization.cast_cost","italic":false,"color":"gray","with":[{"text":"16"},{"text":"1/9"}]}']]
item replace block ~ ~ ~ container.7 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b,gui_interact:1b}},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:machines/gui/gem_cast",item_name='{"translate":"item.mechanization.gem_cast","italic":false}',lore=['{"translate":"lore.mechanization.cast_cost_gem","italic":false,"color":"gray","with":[{"text":"72"},{"text":"1"}]}']]
item replace block ~ ~ ~ container.8 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b,gui_interact:1b}},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:machines/gui/item_cast",item_name='{"translate":"item.mechanization.item_cast","italic":false}',lore=['{"translate":"lore.mechanization.cast_cost_item","italic":false,"color":"gray"}']]

item replace block ~ ~ ~ container.9 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},!minecraft:food,minecraft:item_model="mechanization:base/gui/invisible"]
item replace block ~ ~ ~ container.11 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},!minecraft:food,minecraft:item_model="mechanization:base/gui/invisible"]
item replace block ~ ~ ~ container.16 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},!minecraft:food,minecraft:item_model="mechanization:base/gui/invisible"]
item replace block ~ ~ ~ container.17 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},!minecraft:food,minecraft:item_model="mechanization:base/gui/invisible"]

item replace block ~ ~ ~ container.20 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},!minecraft:food,minecraft:item_model="mechanization:base/gui/invisible"]
execute unless score @s mechanization.data matches 8 run item replace block ~ ~ ~ container.21 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:base/gui/fill_slot"]
item replace block ~ ~ ~ container.22 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},!minecraft:food,minecraft:item_model="mechanization:base/gui/invisible"]
item replace block ~ ~ ~ container.23 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},!minecraft:food,minecraft:item_model="mechanization:base/gui/invisible"]
item replace block ~ ~ ~ container.24 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},!minecraft:food,minecraft:item_model="mechanization:base/gui/invisible"]
item replace block ~ ~ ~ container.25 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},!minecraft:food,minecraft:item_model="mechanization:base/gui/invisible"]
item replace block ~ ~ ~ container.26 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b}},minecraft:hide_tooltip={},!minecraft:food,minecraft:item_model="mechanization:base/gui/invisible"]

execute if entity @s[tag=!mechanization.upgraded] run item replace block ~ ~ ~ container.13 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b,gui_interact:1b}},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:machines/gui/rod_cast",item_name='{"translate":"item.mechanization.rod_cast","italic":false}',lore=['{"translate":"lore.mechanization.cast_cost","italic":false,"color":"gray","with":[{"text":"432"},{"text":"3"}]}','{"translate":"lore.mechanization.cast_upgrade","italic":false,"color":"gray"}']]
execute if entity @s[tag=!mechanization.upgraded] run item replace block ~ ~ ~ container.14 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b,gui_interact:1b}},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:machines/gui/plate_cast",item_name='{"translate":"item.mechanization.plate_cast","italic":false}',lore=['{"translate":"lore.mechanization.cast_cost","italic":false,"color":"gray","with":[{"text":"576"},{"text":"4"}]}','{"translate":"lore.mechanization.cast_upgrade","italic":false,"color":"gray"}']]
execute if entity @s[tag=!mechanization.upgraded] run item replace block ~ ~ ~ container.15 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b,gui_interact:1b}},minecraft:max_stack_size=1,!minecraft:food,minecraft:item_model="mechanization:machines/gui/gear_cast",item_name='{"translate":"item.mechanization.gear_cast","italic":false}',lore=['{"translate":"lore.mechanization.cast_cost","italic":false,"color":"gray","with":[{"text":"720"},{"text":"5"}]}','{"translate":"lore.mechanization.cast_upgrade","italic":false,"color":"gray"}']]

execute if entity @s[tag=mechanization.upgraded,tag=!mechanization.upgraded.ender] run item replace block ~ ~ ~ container.13 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b,gui_interact:1b}},minecraft:max_stack_size=1,minecraft:item_model="mechanization:machines/gui/rod_cast",!minecraft:food,item_name='{"translate":"item.mechanization.rod_cast","italic":false}',lore=['{"translate":"lore.mechanization.cast_cost","italic":false,"color":"gray","with":[{"text":"288"},{"text":"2"}]}']]
execute if entity @s[tag=mechanization.upgraded,tag=!mechanization.upgraded.ender] run item replace block ~ ~ ~ container.14 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b,gui_interact:1b}},minecraft:max_stack_size=1,minecraft:item_model="mechanization:machines/gui/plate_cast",!minecraft:food,item_name='{"translate":"item.mechanization.plate_cast","italic":false}',lore=['{"translate":"lore.mechanization.cast_cost","italic":false,"color":"gray","with":[{"text":"432"},{"text":"3"}]}']]
execute if entity @s[tag=mechanization.upgraded,tag=!mechanization.upgraded.ender] run item replace block ~ ~ ~ container.15 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b,gui_interact:1b}},minecraft:max_stack_size=1,minecraft:item_model="mechanization:machines/gui/gear_cast",!minecraft:food,item_name='{"translate":"item.mechanization.gear_cast","italic":false}',lore=['{"translate":"lore.mechanization.cast_cost","italic":false,"color":"gray","with":[{"text":"576"},{"text":"4"}]}']]

execute if entity @s[tag=mechanization.upgraded.ender] run item replace block ~ ~ ~ container.13 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b,gui_interact:1b}},minecraft:max_stack_size=1,minecraft:item_model="mechanization:machines/gui/rod_cast",!minecraft:food,item_name='{"translate":"item.mechanization.rod_cast","italic":false}',lore=['{"translate":"lore.mechanization.cast_cost","italic":false,"color":"gray","with":[{"text":"144"},{"text":"1"}]}']]
execute if entity @s[tag=mechanization.upgraded.ender] run item replace block ~ ~ ~ container.14 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b,gui_interact:1b}},minecraft:max_stack_size=1,minecraft:item_model="mechanization:machines/gui/plate_cast",!minecraft:food,item_name='{"translate":"item.mechanization.plate_cast","italic":false}',lore=['{"translate":"lore.mechanization.cast_cost","italic":false,"color":"gray","with":[{"text":"288"},{"text":"2"}]}']]
execute if entity @s[tag=mechanization.upgraded.ender] run item replace block ~ ~ ~ container.15 with minecraft:poisonous_potato[minecraft:custom_data={mechanization:{gui_item:1b,gui_interact:1b}},minecraft:max_stack_size=1,minecraft:item_model="mechanization:machines/gui/gear_cast",!minecraft:food,item_name='{"translate":"item.mechanization.gear_cast","italic":false}',lore=['{"translate":"lore.mechanization.cast_cost","italic":false,"color":"gray","with":[{"text":"432"},{"text":"3"}]}']]

function mechanization:base/utils/generate_energy_bar_ui

# casts
execute if score @s mechanization.data matches 1 run item replace block ~ ~ ~ container.3 from block ~ ~ ~ container.4
execute if score @s mechanization.data matches 2 run item replace block ~ ~ ~ container.3 from block ~ ~ ~ container.5
execute if score @s mechanization.data matches 3 run item replace block ~ ~ ~ container.3 from block ~ ~ ~ container.6
execute if score @s mechanization.data matches 4 run item replace block ~ ~ ~ container.3 from block ~ ~ ~ container.7
execute if score @s mechanization.data matches 8 run item replace block ~ ~ ~ container.3 from block ~ ~ ~ container.8
execute if score @s mechanization.data matches 5 run item replace block ~ ~ ~ container.3 from block ~ ~ ~ container.13
execute if score @s mechanization.data matches 6 run item replace block ~ ~ ~ container.3 from block ~ ~ ~ container.14
execute if score @s mechanization.data matches 7 run item replace block ~ ~ ~ container.3 from block ~ ~ ~ container.15

# tank 1
scoreboard players set #tank mechanization.data 0
function mechanization:base/utils/construct_fluid_ui
item replace block ~ ~ ~ container.1 from block -30000000 0 3201 container.0
item replace block ~ ~ ~ container.10 from block -30000000 0 3201 container.0
item replace block ~ ~ ~ container.19 from block -30000000 0 3201 container.0
item modify block ~ ~ ~ container.1 mechanization:change_tank_ui_item
item modify block ~ ~ ~ container.19 mechanization:change_tank_ui_item

# freeze hoppers
execute if block ~ ~-1 ~ minecraft:hopper run data modify block ~ ~-1 ~ TransferCooldown set value 10
execute align xyz positioned ~ ~-1.5 ~ as @e[type=minecraft:hopper_minecart,dx=0,dy=0,dz=0] run data modify entity @s Enabled set value 0b

# exit gui
execute if block ~ ~ ~ minecraft:barrel[open=false] run function mechanization:base/utils/close_gui
