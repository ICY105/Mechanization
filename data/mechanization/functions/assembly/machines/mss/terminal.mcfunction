
# check for disk
execute unless score @s mechanization.data matches 1.. run scoreboard players set @s mechanization.data 1
tag @s remove mechanization.active
execute if data entity @s Item.tag.drive.tag.mechanization.storage run tag @s add mechanization.active

# spit out bad items 
data remove block -30000000 0 3201 Items
function mechanization:assembly/machines/mss/terminal_verify_slots/start
execute if data block -30000000 0 3201 Items[{}] run loot spawn ^ ^ ^1 mine -30000000 0 3201 air{drop_contents:true}

# cache drive and block data to storage
execute if entity @s[tag=mechanization.active] run data modify storage mechanization:temp list set from entity @s Item.tag.drive.tag.mechanization.storage

# decrease counts
execute if entity @s[tag=mechanization.active] run function mechanization:assembly/machines/mss/terminal_drive_delta/start

# insert item
execute if data block ~ ~ ~ Items[{Slot:17b}] run function mechanization:assembly/machines/mss/terminal_insert_item

# restore drive
execute if entity @s[tag=mechanization.active] run data modify entity @s Item.tag.drive.tag.mechanization.storage set from storage mechanization:temp list

# control elements
execute if entity @s[tag=mechanization.active,scores={energy.storage=..5}] run function mechanization:assembly/machines/mss/get_drive/terminal_insert
execute if entity @s[tag=mechanization.active] if block ~ ~ ~ minecraft:barrel[open=false] run function mechanization:assembly/machines/mss/get_drive/terminal_insert

execute if entity @s[tag=mechanization.active,scores={energy.storage=128..}] unless data block ~ ~ ~ Items[{Slot:8b}] run function mechanization:assembly/machines/mss/get_drive/terminal_previous
execute if entity @s[tag=mechanization.active,scores={energy.storage=128..}] unless data block ~ ~ ~ Items[{Slot:26b}] run function mechanization:assembly/machines/mss/get_drive/terminal_next

#execute if entity @s[tag=!mechanization.active,scores={energy.storage=128..}] unless data block ~ ~ ~ Items[{Slot:8b}] run function mechanization:assembly/machines/mss/get_drive/terminal_current
execute if entity @s[tag=!mechanization.active,scores={energy.storage=128..}] if block ~ ~ ~ minecraft:barrel[open=true] run function mechanization:assembly/machines/mss/get_drive/terminal_current

tag @s remove mechanization.active
execute if data entity @s Item.tag.drive.tag.mechanization.storage run tag @s add mechanization.active
scoreboard players remove @s[tag=mechanization.active,scores={energy.storage=6..}] energy.storage 6

# set ui
data merge block ~ ~ ~ {Items:[ {id:"minecraft:structure_block",tag:{CustomModelData:6421202,mss:{ui:1b,slot:0b},display:{Name:'{"text":" "}'},mechanization:{gui_item:1b}},Count:1b,Slot:0b},{id:"minecraft:structure_block",tag:{CustomModelData:6421202,mss:{ui:1b,slot:1b},display:{Name:'{"text":" "}'},mechanization:{gui_item:1b}},Count:1b,Slot:1b},{id:"minecraft:structure_block",tag:{CustomModelData:6421202,mss:{ui:1b,slot:2b},display:{Name:'{"text":" "}'},mechanization:{gui_item:1b}},Count:1b,Slot:2b},{id:"minecraft:structure_block",tag:{CustomModelData:6421202,mss:{ui:1b,slot:3b},display:{Name:'{"text":" "}'},mechanization:{gui_item:1b}},Count:1b,Slot:3b},{id:"minecraft:structure_block",tag:{CustomModelData:6421202,mss:{ui:1b,slot:4b},display:{Name:'{"text":" "}'},mechanization:{gui_item:1b}},Count:1b,Slot:4b},{id:"minecraft:structure_block",tag:{CustomModelData:6421202,mss:{ui:1b,slot:5b},display:{Name:'{"text":" "}'},mechanization:{gui_item:1b}},Count:1b,Slot:5b},{id:"minecraft:structure_block",tag:{CustomModelData:6421202,mss:{ui:1b,slot:6b},display:{Name:'{"text":" "}'},mechanization:{gui_item:1b}},Count:1b,Slot:6b},{id:"minecraft:structure_block",tag:{CustomModelData:6421202,mss:{ui:1b,slot:7b},display:{Name:'{"text":" "}'},mechanization:{gui_item:1b}},Count:1b,Slot:7b},{id:"minecraft:structure_block",tag:{CustomModelData:6425901,mss:{ui:1b,slot:8b},display:{Name:'{"text":" "}'},mechanization:{gui_item:1b}},Count:1b,Slot:8b},{id:"minecraft:structure_block",tag:{CustomModelData:6421202,mss:{ui:1b,slot:9b},display:{Name:'{"text":" "}'},mechanization:{gui_item:1b}},Count:1b,Slot:9b},{id:"minecraft:structure_block",tag:{CustomModelData:6421202,mss:{ui:1b,slot:10b},display:{Name:'{"text":" "}'},mechanization:{gui_item:1b}},Count:1b,Slot:10b},{id:"minecraft:structure_block",tag:{CustomModelData:6421202,mss:{ui:1b,slot:11b},display:{Name:'{"text":" "}'},mechanization:{gui_item:1b}},Count:1b,Slot:11b},{id:"minecraft:structure_block",tag:{CustomModelData:6421202,mss:{ui:1b,slot:12b},display:{Name:'{"text":" "}'},mechanization:{gui_item:1b}},Count:1b,Slot:12b},{id:"minecraft:structure_block",tag:{CustomModelData:6421202,mss:{ui:1b,slot:13b},display:{Name:'{"text":" "}'},mechanization:{gui_item:1b}},Count:1b,Slot:13b},{id:"minecraft:structure_block",tag:{CustomModelData:6421202,mss:{ui:1b,slot:14b},display:{Name:'{"text":" "}'},mechanization:{gui_item:1b}},Count:1b,Slot:14b},{id:"minecraft:structure_block",tag:{CustomModelData:6421202,mss:{ui:1b,slot:15b},display:{Name:'{"text":" "}'},mechanization:{gui_item:1b}},Count:1b,Slot:15b},{id:"minecraft:structure_block",tag:{CustomModelData:6421202,mss:{ui:1b,slot:16b},display:{Name:'{"text":" "}'},mechanization:{gui_item:1b}},Count:1b,Slot:16b},{id:"minecraft:structure_block",tag:{CustomModelData:6421202,mss:{ui:1b,slot:18b},display:{Name:'{"text":" "}'},mechanization:{gui_item:1b}},Count:1b,Slot:18b},{id:"minecraft:structure_block",tag:{CustomModelData:6421202,mss:{ui:1b,slot:19b},display:{Name:'{"text":" "}'},mechanization:{gui_item:1b}},Count:1b,Slot:19b},{id:"minecraft:structure_block",tag:{CustomModelData:6421202,mss:{ui:1b,slot:20b},display:{Name:'{"text":" "}'},mechanization:{gui_item:1b}},Count:1b,Slot:20b},{id:"minecraft:structure_block",tag:{CustomModelData:6421202,mss:{ui:1b,slot:21b},display:{Name:'{"text":" "}'},mechanization:{gui_item:1b}},Count:1b,Slot:21b},{id:"minecraft:structure_block",tag:{CustomModelData:6421202,mss:{ui:1b,slot:22b},display:{Name:'{"text":" "}'},mechanization:{gui_item:1b}},Count:1b,Slot:22b},{id:"minecraft:structure_block",tag:{CustomModelData:6421202,mss:{ui:1b,slot:23b},display:{Name:'{"text":" "}'},mechanization:{gui_item:1b}},Count:1b,Slot:23b},{id:"minecraft:structure_block",tag:{CustomModelData:6421202,mss:{ui:1b,slot:24b},display:{Name:'{"text":" "}'},mechanization:{gui_item:1b}},Count:1b,Slot:24b},{id:"minecraft:structure_block",tag:{CustomModelData:6421202,mss:{ui:1b,slot:25b},display:{Name:'{"text":" "}'},mechanization:{gui_item:1b}},Count:1b,Slot:25b},{id:"minecraft:structure_block",tag:{CustomModelData:6425902,mss:{ui:1b,slot:26b},display:{Name:'{"text":" "}'},mechanization:{gui_item:1b}},Count:1b,Slot:26b} ]}
execute if entity @s[tag=!mechanization.active] run data modify block ~ ~ ~ Items[{tag:{CustomModelData:6421202}}].tag.CustomModelData set value 6421203

# load disk
execute if entity @s[tag=mechanization.active] run function mechanization:assembly/machines/mss/terminal_load_drive

# set block display
execute if score #timer.20 mechanization.data matches 0 if entity @s[tag=mechanization.active] store result entity @s Item.tag.CustomModelData int 6425010 if entity @s
execute if entity @s[tag=!mechanization.active] store result entity @s Item.tag.CustomModelData int 6425903 if entity @s

# cleanup
execute if entity @s[tag=mechanization.active] as @a[distance=..12] at @s if data entity @s Inventory[].tag.mss run function mechanization:assembly/machines/mss/clear_item_data

execute unless block ~ ~ ~ minecraft:barrel if entity @s[tag=mechanization.active] run function mechanization:assembly/machines/mss/get_drive/terminal_insert
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:base/utils/break_machine_t3
execute unless block ~ ~ ~ minecraft:barrel if entity @s[tag=mechanization.active] run kill @e[type=item,distance=..0.5]
