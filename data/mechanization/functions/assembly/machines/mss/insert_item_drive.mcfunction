
scoreboard players set out_0 mech_data 0

#reset data
data remove block -29999999 0 1601 Items

#merge data
data modify storage mechanization:networks mss.item.Slot set value 0b
data modify block -29999999 0 1601 Items append from storage mechanization:networks mss.item
data remove block -29999999 0 1601 Items[].tag.display
data remove block -29999999 0 1601 Items[].tag.mss
execute unless data block -29999999 0 1601 Items[0].tag run data modify block -29999999 0 1601 Items[0].tag set value {}

data modify block -29999999 1 1601 Items set from storage mechanization:networks mss.drive
data remove block -29999999 1 1601 Items[].tag.display
data remove block -29999999 1 1601 Items[].tag.mss

#fill empty slots
replaceitem block -29999999 1 1601 container.8 minecraft:barrier{du_gui:1b}
replaceitem block -29999999 1 1601 container.17 minecraft:barrier{du_gui:1b}
replaceitem block -29999999 1 1601 container.26 minecraft:barrier{du_gui:1b}

execute unless data storage mechanization:networks mss.drive[{Slot:0b}] run replaceitem block -29999999 1 1601 container.0 minecraft:barrier{du_gui:1b}
execute unless data storage mechanization:networks mss.drive[{Slot:1b}] run replaceitem block -29999999 1 1601 container.1 minecraft:barrier{du_gui:1b}
execute unless data storage mechanization:networks mss.drive[{Slot:2b}] run replaceitem block -29999999 1 1601 container.2 minecraft:barrier{du_gui:1b}
execute unless data storage mechanization:networks mss.drive[{Slot:3b}] run replaceitem block -29999999 1 1601 container.3 minecraft:barrier{du_gui:1b}
execute unless data storage mechanization:networks mss.drive[{Slot:4b}] run replaceitem block -29999999 1 1601 container.4 minecraft:barrier{du_gui:1b}
execute unless data storage mechanization:networks mss.drive[{Slot:5b}] run replaceitem block -29999999 1 1601 container.5 minecraft:barrier{du_gui:1b}
execute unless data storage mechanization:networks mss.drive[{Slot:6b}] run replaceitem block -29999999 1 1601 container.6 minecraft:barrier{du_gui:1b}
execute unless data storage mechanization:networks mss.drive[{Slot:7b}] run replaceitem block -29999999 1 1601 container.7 minecraft:barrier{du_gui:1b}

execute unless data storage mechanization:networks mss.drive[{Slot:9b}] run replaceitem block -29999999 1 1601 container.9 minecraft:barrier{du_gui:1b}
execute unless data storage mechanization:networks mss.drive[{Slot:10b}] run replaceitem block -29999999 1 1601 container.10 minecraft:barrier{du_gui:1b}
execute unless data storage mechanization:networks mss.drive[{Slot:11b}] run replaceitem block -29999999 1 1601 container.11 minecraft:barrier{du_gui:1b}
execute unless data storage mechanization:networks mss.drive[{Slot:12b}] run replaceitem block -29999999 1 1601 container.12 minecraft:barrier{du_gui:1b}
execute unless data storage mechanization:networks mss.drive[{Slot:13b}] run replaceitem block -29999999 1 1601 container.13 minecraft:barrier{du_gui:1b}
execute unless data storage mechanization:networks mss.drive[{Slot:14b}] run replaceitem block -29999999 1 1601 container.14 minecraft:barrier{du_gui:1b}
execute unless data storage mechanization:networks mss.drive[{Slot:15b}] run replaceitem block -29999999 1 1601 container.15 minecraft:barrier{du_gui:1b}
execute unless data storage mechanization:networks mss.drive[{Slot:16b}] run replaceitem block -29999999 1 1601 container.16 minecraft:barrier{du_gui:1b}

execute unless data storage mechanization:networks mss.drive[{Slot:18b}] run replaceitem block -29999999 1 1601 container.18 minecraft:barrier{du_gui:1b}
execute unless data storage mechanization:networks mss.drive[{Slot:19b}] run replaceitem block -29999999 1 1601 container.19 minecraft:barrier{du_gui:1b}
execute unless data storage mechanization:networks mss.drive[{Slot:20b}] run replaceitem block -29999999 1 1601 container.20 minecraft:barrier{du_gui:1b}
execute unless data storage mechanization:networks mss.drive[{Slot:21b}] run replaceitem block -29999999 1 1601 container.21 minecraft:barrier{du_gui:1b}
execute unless data storage mechanization:networks mss.drive[{Slot:22b}] run replaceitem block -29999999 1 1601 container.22 minecraft:barrier{du_gui:1b}
execute unless data storage mechanization:networks mss.drive[{Slot:23b}] run replaceitem block -29999999 1 1601 container.23 minecraft:barrier{du_gui:1b}
execute unless data storage mechanization:networks mss.drive[{Slot:24b}] run replaceitem block -29999999 1 1601 container.24 minecraft:barrier{du_gui:1b}
execute unless data storage mechanization:networks mss.drive[{Slot:25b}] run replaceitem block -29999999 1 1601 container.25 minecraft:barrier{du_gui:1b}

#check it item is valid
execute store result score temp_0 mech_data run loot insert -29999999 1 1601 mine -29999999 0 1601 air{drop_contents:true}
execute if score temp_0 mech_data matches 1.. run function mechanization:assembly/machines/mss/insert_item_drive/check_slot_0
