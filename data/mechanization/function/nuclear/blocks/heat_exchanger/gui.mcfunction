
# move/clear items
data modify storage mechanization:temp list set from block ~ ~ ~ Items
data remove storage mechanization:temp list[{tag:{mechanization:{gui_item:1b}}}]

data modify block -30000000 0 3201 Items set from storage mechanization:temp list
execute if data block -30000000 0 3201 Items[0] run loot spawn ^ ^ ^1 mine -30000000 0 3201 minecraft:air{drop_contents:true}

function mechanization:nuclear/blocks/heat_exchanger/gui_clear

# tank 1
scoreboard players set #tank mechanization.data 0
function mechanization:base/utils/construct_fluid_ui
item replace block ~ ~ ~ container.10 from block -30000000 0 3201 container.0
data modify block ~ ~ ~ Items[{Slot:1b}].tag.display set from block -30000000 0 3201 Items[0].tag.display
data modify block ~ ~ ~ Items[{Slot:19b}].tag.display set from block -30000000 0 3201 Items[0].tag.display

# tank 2
scoreboard players set #tank mechanization.data 1
function mechanization:base/utils/construct_fluid_ui
item replace block ~ ~ ~ container.12 from block -30000000 0 3201 container.0
data modify block ~ ~ ~ Items[{Slot:3b}].tag.display set from block -30000000 0 3201 Items[0].tag.display
data modify block ~ ~ ~ Items[{Slot:21b}].tag.display set from block -30000000 0 3201 Items[0].tag.display

# tank 3
scoreboard players set #tank mechanization.data 2
function mechanization:base/utils/construct_fluid_ui
item replace block ~ ~ ~ container.14 from block -30000000 0 3201 container.0
data modify block ~ ~ ~ Items[{Slot:5b}].tag.display set from block -30000000 0 3201 Items[0].tag.display
data modify block ~ ~ ~ Items[{Slot:23b}].tag.display set from block -30000000 0 3201 Items[0].tag.display

# tank 4
scoreboard players set #tank mechanization.data 3
function mechanization:base/utils/construct_fluid_ui
item replace block ~ ~ ~ container.16 from block -30000000 0 3201 container.0
data modify block ~ ~ ~ Items[{Slot:7b}].tag.display set from block -30000000 0 3201 Items[0].tag.display
data modify block ~ ~ ~ Items[{Slot:25b}].tag.display set from block -30000000 0 3201 Items[0].tag.display
