
data modify storage mechanization:networks mss.item set from block ~ ~ ~ Items[{Slot:17b}]

data modify storage mechanization:networks mss.drive set from storage du:temp list
function mechanization:assembly/machines/mss/insert_item_drive

execute if score out_0 mech_data matches 0 unless data storage mechanization:networks mss.drive[23] run function mechanization:assembly/machines/mss/add_item

execute if score out_0 mech_data matches 1 run data modify storage du:temp list set from storage mechanization:networks mss.drive

execute if score out_0 mech_data matches -1..0 run data remove block -29999999 0 1601 Items
execute if score out_0 mech_data matches -1..0 run data modify block -29999999 0 1601 Items append from block ~ ~ ~ Items[{Slot:17b}]
execute if score out_0 mech_data matches -1..0 run loot spawn ^ ^ ^1 mine -29999999 0 1601 air{drop_contents:true}

