
# select cast
execute unless data block ~ ~ ~ Items[{Slot:3b}] run scoreboard players set @s mechanization.data 0
execute unless data block ~ ~ ~ Items[{Slot:4b}] run scoreboard players set @s mechanization.data 1
execute unless data block ~ ~ ~ Items[{Slot:5b}] run scoreboard players set @s mechanization.data 2
execute unless data block ~ ~ ~ Items[{Slot:6b}] run scoreboard players set @s mechanization.data 3
execute unless data block ~ ~ ~ Items[{Slot:7b}] run scoreboard players set @s mechanization.data 4
execute unless data block ~ ~ ~ Items[{Slot:8b}] run scoreboard players set @s mechanization.data 5
execute unless data block ~ ~ ~ Items[{Slot:13b}] run scoreboard players set @s mechanization.data 6
execute unless data block ~ ~ ~ Items[{Slot:14b}] run scoreboard players set @s mechanization.data 7
clear @a[distance=..8] minecraft:carrot_on_a_stick{mechanization:{gui_item:1b}}

# move/clear items
data modify storage mechanization:temp list set from block ~ ~ ~ Items
data remove storage mechanization:temp list[{tag:{mechanization:{gui_item:1b}}}]
data remove storage mechanization:temp list[{Slot:0b}]
data remove storage mechanization:temp list[{Slot:12b}]
data remove storage mechanization:temp list[{Slot:18b}]

data remove block -30000000 0 3201 Items
execute if data storage mechanization:temp list[0] run function mechanization:machines/blocks/casting_basin/gui_move
execute if data block -30000000 0 3201 Items[0] run loot spawn ^ ^ ^1 mine -30000000 0 3201 minecraft:air{drop_contents:true}

function mechanization:machines/blocks/casting_basin/gui_clear

### fill in items
function mechanization:base/utils/generate_energy_bar_ui

# handle fluid slot IO
scoreboard players set #slot_io.in fluid.data 0
execute if data block ~ ~ ~ Items[{Slot:0b}] run function mechanization:base/utils/fluid_slot_io/slot_io_0

# tank
scoreboard players operation #storage mechanization.data = @s fluid.storage.0
data modify storage mechanization:temp obj set from entity @s item.tag.fluids[0]
function mechanization:base/utils/construct_fluid_ui
item replace block ~ ~ ~ container.10 from block -30000000 0 3201 container.0
data modify block ~ ~ ~ Items[{Slot:1b}].tag.display set from block -30000000 0 3201 Items[0].tag.display
data modify block ~ ~ ~ Items[{Slot:19b}].tag.display set from block -30000000 0 3201 Items[0].tag.display

# casts
execute if score @s mechanization.data matches 1 run item replace block ~ ~ ~ container.3 from block ~ ~ ~ container.4
execute if score @s mechanization.data matches 2 run item replace block ~ ~ ~ container.3 from block ~ ~ ~ container.5
execute if score @s mechanization.data matches 3 run item replace block ~ ~ ~ container.3 from block ~ ~ ~ container.6
execute if score @s mechanization.data matches 4 run item replace block ~ ~ ~ container.3 from block ~ ~ ~ container.7
execute if score @s mechanization.data matches 5 run item replace block ~ ~ ~ container.3 from block ~ ~ ~ container.8
execute if score @s mechanization.data matches 6 run item replace block ~ ~ ~ container.3 from block ~ ~ ~ container.13
execute if score @s mechanization.data matches 7 run item replace block ~ ~ ~ container.3 from block ~ ~ ~ container.14
