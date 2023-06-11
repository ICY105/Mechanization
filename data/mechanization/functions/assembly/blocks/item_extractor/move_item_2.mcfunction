
# copy to shulker box
data remove block -30000000 0 3201 Items
data modify block -30000000 0 3201 Items append from storage mechanization:temp list[0]

# check filter
scoreboard players set #success mechanization.data 1
execute if entity @s[tag=mechanization.filtered] run function mechanization:assembly/blocks/item_extractor/check_filter
execute if score #success mechanization.data matches 1 run function mechanization:assembly/blocks/item_extractor/move_item_3

# loop
data remove storage mechanization:temp list[0]
execute if data storage mechanization:temp list[0] run function mechanization:assembly/blocks/item_extractor/move_item_2
