
$execute unless data storage mechanization:temp list[$(var)] run return 0

# copy to shulker box
$data modify block -30000000 0 3201 Items append from storage mechanization:temp list[$(var)]
data modify block -30000000 0 3201 Items[1].Slot set value 0b

# check filter
scoreboard players set #result mechanization.data 1
execute if entity @s[tag=mechanization.filtered] store result score #result mechanization.data run loot insert -30000000 1 1601 mine -30000000 0 3201 minecraft:debug_stick[minecraft:custom_data={drop_contents:1b}]
execute if score #result mechanization.data matches 1.. run function mechanization:assembly/blocks/item_extractor/m.move_item_3 with storage mechanization:temp
execute if score #result mechanization.data matches 1.. if score #success mechanization.data matches 1.. run return 1

# loop
scoreboard players add #loop mechanization.data 1
execute store result storage mechanization:temp var int 1 run scoreboard players get #loop mechanization.data
function mechanization:assembly/blocks/item_extractor/m.move_item_2 with storage mechanization:temp
