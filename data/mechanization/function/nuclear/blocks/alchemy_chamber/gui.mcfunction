
# move/clear items
data modify storage mechanization:temp list set from block ~ ~ ~ Items
data remove storage mechanization:temp list[{tag:{mechanization:{gui_item:1b}}}]
data remove storage mechanization:temp list[{Slot:1b}]
data remove storage mechanization:temp list[{Slot:7b}]

data remove block -30000000 0 3201 Items
execute if data storage mechanization:temp list[0] run function mechanization:nuclear/blocks/alchemy_chamber/gui_move
execute if data block -30000000 0 3201 Items[0] run loot spawn ^ ^ ^1 mine -30000000 0 3201 minecraft:air{drop_contents:true}

function mechanization:nuclear/blocks/alchemy_chamber/gui_clear

# set bar state
scoreboard players operation #model mechanization.data = @s mechanization.data
scoreboard players operation #model mechanization.data *= #cons.16 mechanization.data
scoreboard players operation #model mechanization.data /= @s mechanization.time
execute if score #model mechanization.data matches 17.. run scoreboard players set #model mechanization.data 16

execute if score @s mechanization.time matches -1 run scoreboard players set #model mechanization.data 0
scoreboard players add #model mechanization.data 6423900
execute store result block ~ ~ ~ Items[{Slot:5b}].tag.CustomModelData int 1 run scoreboard players get #model mechanization.data
