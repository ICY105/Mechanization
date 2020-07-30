
#check for disk
tag @s remove mech_active
execute if data entity @s HandItems[0].tag.mech_storage run tag @s add mech_active

#spit out bad items 
data remove block -29999999 0 1601 Items
function mechanization:assembly/machines/mss/terminal_verify_slots
execute if data block -29999999 0 1601 Items[{}] run loot spawn ^ ^ ^1 mine -29999999 0 1601 air{drop_contents:true}

#cache drive to storage
execute if entity @s[tag=mech_active] run data modify storage du:temp list set from entity @s HandItems[0].tag.mech_storage

#decrease counts
execute if entity @s[tag=mech_active] run function mechanization:assembly/machines/mss/terminal_drive_delta

#insert item
execute if data block ~ ~ ~ Items[{Slot:17b}] run function mechanization:assembly/machines/mss/terminal_insert_item

#restore drive
execute if entity @s[tag=mech_active] run data modify entity @s HandItems[0].tag.mech_storage set from storage du:temp list

#set ui
data merge block ~ ~ ~ {Items:[ {id:"minecraft:barrier",tag:{CustomModelData:0,mss:{ui:1b,slot:0b},display:{Name:'{"text":" "}'},du_gui:1b},Count:1b,Slot:0b},{id:"minecraft:barrier",tag:{CustomModelData:0,mss:{ui:1b,slot:1b},display:{Name:'{"text":" "}'},du_gui:1b},Count:1b,Slot:1b},{id:"minecraft:barrier",tag:{CustomModelData:0,mss:{ui:1b,slot:2b},display:{Name:'{"text":" "}'},du_gui:1b},Count:1b,Slot:2b},{id:"minecraft:barrier",tag:{CustomModelData:0,mss:{ui:1b,slot:3b},display:{Name:'{"text":" "}'},du_gui:1b},Count:1b,Slot:3b},{id:"minecraft:barrier",tag:{CustomModelData:0,mss:{ui:1b,slot:4b},display:{Name:'{"text":" "}'},du_gui:1b},Count:1b,Slot:4b},{id:"minecraft:barrier",tag:{CustomModelData:0,mss:{ui:1b,slot:5b},display:{Name:'{"text":" "}'},du_gui:1b},Count:1b,Slot:5b},{id:"minecraft:barrier",tag:{CustomModelData:0,mss:{ui:1b,slot:6b},display:{Name:'{"text":" "}'},du_gui:1b},Count:1b,Slot:6b},{id:"minecraft:barrier",tag:{CustomModelData:0,mss:{ui:1b,slot:7b},display:{Name:'{"text":" "}'},du_gui:1b},Count:1b,Slot:7b},{id:"minecraft:arrow",tag:{CustomModelData:0,mss:{ui:1b,slot:8b},display:{Name:'{"text":" "}'},du_gui:1b},Count:1b,Slot:8b},{id:"minecraft:barrier",tag:{CustomModelData:0,mss:{ui:1b,slot:9b},display:{Name:'{"text":" "}'},du_gui:1b},Count:1b,Slot:9b},{id:"minecraft:barrier",tag:{CustomModelData:0,mss:{ui:1b,slot:10b},display:{Name:'{"text":" "}'},du_gui:1b},Count:1b,Slot:10b},{id:"minecraft:barrier",tag:{CustomModelData:0,mss:{ui:1b,slot:11b},display:{Name:'{"text":" "}'},du_gui:1b},Count:1b,Slot:11b},{id:"minecraft:barrier",tag:{CustomModelData:0,mss:{ui:1b,slot:12b},display:{Name:'{"text":" "}'},du_gui:1b},Count:1b,Slot:12b},{id:"minecraft:barrier",tag:{CustomModelData:0,mss:{ui:1b,slot:13b},display:{Name:'{"text":" "}'},du_gui:1b},Count:1b,Slot:13b},{id:"minecraft:barrier",tag:{CustomModelData:0,mss:{ui:1b,slot:14b},display:{Name:'{"text":" "}'},du_gui:1b},Count:1b,Slot:14b},{id:"minecraft:barrier",tag:{CustomModelData:0,mss:{ui:1b,slot:15b},display:{Name:'{"text":" "}'},du_gui:1b},Count:1b,Slot:15b},{id:"minecraft:barrier",tag:{CustomModelData:0,mss:{ui:1b,slot:16b},display:{Name:'{"text":" "}'},du_gui:1b},Count:1b,Slot:16b},{id:"minecraft:barrier",tag:{CustomModelData:0,mss:{ui:1b,slot:18b},display:{Name:'{"text":" "}'},du_gui:1b},Count:1b,Slot:18b},{id:"minecraft:barrier",tag:{CustomModelData:0,mss:{ui:1b,slot:19b},display:{Name:'{"text":" "}'},du_gui:1b},Count:1b,Slot:19b},{id:"minecraft:barrier",tag:{CustomModelData:0,mss:{ui:1b,slot:20b},display:{Name:'{"text":" "}'},du_gui:1b},Count:1b,Slot:20b},{id:"minecraft:barrier",tag:{CustomModelData:0,mss:{ui:1b,slot:21b},display:{Name:'{"text":" "}'},du_gui:1b},Count:1b,Slot:21b},{id:"minecraft:barrier",tag:{CustomModelData:0,mss:{ui:1b,slot:22b},display:{Name:'{"text":" "}'},du_gui:1b},Count:1b,Slot:22b},{id:"minecraft:barrier",tag:{CustomModelData:0,mss:{ui:1b,slot:23b},display:{Name:'{"text":" "}'},du_gui:1b},Count:1b,Slot:23b},{id:"minecraft:barrier",tag:{CustomModelData:0,mss:{ui:1b,slot:24b},display:{Name:'{"text":" "}'},du_gui:1b},Count:1b,Slot:24b},{id:"minecraft:barrier",tag:{CustomModelData:0,mss:{ui:1b,slot:25b},display:{Name:'{"text":" "}'},du_gui:1b},Count:1b,Slot:25b},{id:"minecraft:arrow",tag:{CustomModelData:0,mss:{ui:1b,slot:26b},display:{Name:'{"text":" "}'},du_gui:1b},Count:1b,Slot:26b} ]}

#control elements
execute unless data block ~ ~ ~ Items[{Slot:9b}] run function mechanization:assembly/machines/mss/terminal_next_drive
execute unless data block ~ ~ ~ Items[{Slot:26b}] run function mechanization:assembly/machines/mss/terminal_next_drive

#load disk
execute if entity @s[tag=mech_active] run function mechanization:assembly/machines/mss/terminal_load_drive
