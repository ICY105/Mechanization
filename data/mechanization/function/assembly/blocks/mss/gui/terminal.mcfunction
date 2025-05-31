
# init disk score
execute unless score @s mechanization.data matches 1.. run scoreboard players set @s mechanization.data 1
execute unless score @s mechanization.item_id matches 1..9 run scoreboard players set @s mechanization.item_id 1

# init data
scoreboard players operation #drive_bay mechanization.data = @s mechanization.data
scoreboard players operation #drive_item mechanization.data = @s mechanization.item_id

data modify storage mechanization:temp obj set value {item:{}, drive_item:{}, drive_contents:[], converted_drive:[], block_contents:[]}

# spit out bad items
function mechanization:assembly/blocks/mss/slot_management/clean_slots

# cache drive item to storage
execute if items block ~ ~ ~ container.* *[minecraft:custom_data~{mss:{}}] run function mechanization:assembly/blocks/mss/drive_management/get_drive

# subtract extracted item counts
execute if data storage mechanization:temp obj.drive_contents[0] run function mechanization:assembly/blocks/mss/slot_management/extract_slots

# store drive item data
execute if data storage mechanization:temp obj.drive_contents[0] run function mechanization:assembly/blocks/mss/drive_management/store_drive

# insert items into system
execute if items block ~ ~ ~ container.17 * run data modify storage mechanization:temp obj.item set from block ~ ~ ~ Items[{Slot: 17b}]
execute if items block ~ ~ ~ container.17 * run function mechanization:assembly/blocks/mss/item_management/inject_item
execute if items block ~ ~ ~ container.17 * run item replace block ~ ~ ~ container.17 with minecraft:air

# control elements
scoreboard players set #control mechanization.data -1
execute unless items block ~ ~ ~ container.26 * if items block ~ ~ ~ container.8 * run scoreboard players set #control mechanization.data 2
execute unless items block ~ ~ ~ container.8 * if items block ~ ~ ~ container.26 * run scoreboard players set #control mechanization.data 1
execute if score @s energy.storage matches ..5 run scoreboard players set #control mechanization.data 0
execute if block ~ ~ ~ minecraft:barrel[open=false] run scoreboard players set #control mechanization.data 0
execute if score #control mechanization.data matches 0 run data modify storage mechanization:temp obj.drive_contents set value []

# set ui

execute if data storage mechanization:temp obj.drive_contents[0] run function mechanization:assembly/blocks/mss/gui/terminal_fill
execute unless data storage mechanization:temp obj.drive_contents[0] run function mechanization:assembly/blocks/mss/gui/terminal_fill_dark

# control elements 2
execute if block ~ ~ ~ minecraft:barrel[open=false] run function mechanization:base/utils/close_gui
execute if score #control mechanization.data matches 0 run return 0

scoreboard players remove @s energy.storage 6

execute if score #control mechanization.data matches 1 run function mechanization:assembly/blocks/mss/drive_management/search_previous
execute if score #control mechanization.data matches 2 run function mechanization:assembly/blocks/mss/drive_management/search_next
execute if score #control mechanization.data matches 1..2 run playsound minecraft:ui.button.click player @p

function mechanization:assembly/blocks/mss/drive_management/get_drive

# load disk
execute if data storage mechanization:temp obj.drive_contents[0] run function mechanization:assembly/blocks/mss/drive_management/convert_drive_data
execute if data storage mechanization:temp obj.drive_contents[0] run data modify block ~ ~ ~ Items append from storage mechanization:temp obj.converted_drive[]

# cleanup
scoreboard players operation @s mechanization.data = #drive_bay mechanization.data
scoreboard players operation @s mechanization.item_id = #drive_item mechanization.data

execute as @a[distance=..68] at @s if items entity @s hotbar.* *[minecraft:custom_data~{mss:{}}] run function mechanization:assembly/blocks/mss/clear_item_data/player_data
execute as @a[distance=..68] at @s if items entity @s inventory.* *[minecraft:custom_data~{mss:{}}] run function mechanization:assembly/blocks/mss/clear_item_data/player_data
