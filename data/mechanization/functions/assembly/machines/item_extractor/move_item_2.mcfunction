
#copy to shulker box
data remove block -29999999 0 1601 Items
data modify block -29999999 0 1601 Items append from storage du:temp list[0]

#check filter
scoreboard players set $out_0 mechanization.data 1
execute if entity @s[tag=mech_filtered] run function mechanization:assembly/machines/item_extractor/check_filter
execute if score $out_0 mechanization.data matches 1 run function mechanization:assembly/machines/item_extractor/move_item_3

#loop
data remove storage du:temp list[0]
execute if data storage du:temp list[0] run function mechanization:assembly/machines/item_extractor/move_item_2
