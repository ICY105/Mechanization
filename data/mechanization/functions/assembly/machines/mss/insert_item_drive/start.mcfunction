
#reset data
data remove block -29999999 0 1601 Items

#merge data
data modify storage mechanization:networks mss.item.Slot set value 0b
data modify block -29999999 0 1601 Items append from storage mechanization:networks mss.item
data remove block -29999999 0 1601 Items[].tag.display
data remove block -29999999 0 1601 Items[].tag.mss
execute unless data block -29999999 0 1601 Items[0].tag run data modify block -29999999 0 1601 Items[0].tag set value {}

#fill slots
data merge block -29999999 1 1601 {Items:[ {id:"minecraft:barrier",tag:{du_gui:1b},Slot:0b},{id:"minecraft:barrier",tag:{du_gui:1b},Slot:1b},{id:"minecraft:barrier",tag:{du_gui:1b},Slot:2b},{id:"minecraft:barrier",tag:{du_gui:1b},Slot:3b},{id:"minecraft:barrier",tag:{du_gui:1b},Slot:4b},{id:"minecraft:barrier",tag:{du_gui:1b},Slot:5b},{id:"minecraft:barrier",tag:{du_gui:1b},Slot:6b},{id:"minecraft:barrier",tag:{du_gui:1b},Slot:7b},{id:"minecraft:barrier",tag:{du_gui:1b},Slot:8b},{id:"minecraft:barrier",tag:{du_gui:1b},Slot:9b},{id:"minecraft:barrier",tag:{du_gui:1b},Slot:10b},{id:"minecraft:barrier",tag:{du_gui:1b},Slot:11b},{id:"minecraft:barrier",tag:{du_gui:1b},Slot:12b},{id:"minecraft:barrier",tag:{du_gui:1b},Slot:13b},{id:"minecraft:barrier",tag:{du_gui:1b},Slot:14b},{id:"minecraft:barrier",tag:{du_gui:1b},Slot:15b},{id:"minecraft:barrier",tag:{du_gui:1b},Slot:16b},{id:"minecraft:barrier",tag:{du_gui:1b},Slot:17b},{id:"minecraft:barrier",tag:{du_gui:1b},Slot:18b},{id:"minecraft:barrier",tag:{du_gui:1b},Slot:19b},{id:"minecraft:barrier",tag:{du_gui:1b},Slot:20b},{id:"minecraft:barrier",tag:{du_gui:1b},Slot:21b},{id:"minecraft:barrier",tag:{du_gui:1b},Slot:22b},{id:"minecraft:barrier",tag:{du_gui:1b},Slot:23b},{id:"minecraft:barrier",tag:{du_gui:1b},Slot:24b},{id:"minecraft:barrier",tag:{du_gui:1b},Slot:25b},{id:"minecraft:barrier",tag:{du_gui:1b},Slot:26b} ]}
data modify block -29999999 1 1601 Items append from storage mechanization:networks mss.drive[]
data remove block -29999999 1 1601 Items[].tag.display
data remove block -29999999 1 1601 Items[].tag.mss

#check it item is valid
execute store result score temp_0 mechanization.data run loot insert -29999999 1 1601 mine -29999999 0 1601 air{drop_contents:true}
execute if score temp_0 mechanization.data matches 1.. run function mechanization:assembly/machines/mss/insert_item_drive/check_slot_0
