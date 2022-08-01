
execute store result score #slot mechanization.data run data get storage mechanization:temp list[0].Slot
data modify storage mechanization:temp list[0].Slot set value 01
data modify block -30000000 0 3201 Items append from storage mechanization:temp list[0]

execute if score #slot mechanization.data matches 0 run item replace entity @s hotbar.0 from block -30000000 0 3201 container.0

data remove storage mechanization:temp list[0]
execute if data storage mechanization:temp list[0] run function mechanization:assembly/machines/mss/clear_item_data_2
