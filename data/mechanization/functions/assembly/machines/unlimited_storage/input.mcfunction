
execute unless score @s mech_data matches 1.. unless data block ~ ~ ~ Items[{Slot:2b}] run data modify entity @s Item.tag.item set from block ~ ~ ~ Items[{Slot:0b}]

data remove block -29999999 0 1601 Items
data modify block -29999999 0 1601 Items prepend from block ~ ~ ~ Items[{Slot:0b}]

setblock -29999999 1 1601 minecraft:dropper
data merge block -29999999 1 1601 {Items:[{Slot:1b,Count:1b,id:"minecraft:jigsaw"},{Slot:2b,Count:1b,id:"minecraft:jigsaw"},{Slot:3b,Count:1b,id:"minecraft:jigsaw"},{Slot:4b,Count:1b,id:"minecraft:jigsaw"},{Slot:5b,Count:1b,id:"minecraft:jigsaw"},{Slot:6b,Count:1b,id:"minecraft:jigsaw"},{Slot:6b,Count:1b,id:"minecraft:jigsaw"},{Slot:7b,Count:1b,id:"minecraft:jigsaw"},{Slot:8b,Count:1b,id:"minecraft:jigsaw"}]}
data modify block -29999999 1 1601 Items prepend from entity @s Item.tag.item

execute store result score $temp_0 mech_data run loot insert -29999999 1 1601 mine -29999999 0 1601 minecraft:air{drop_contents:true}
execute if score $temp_0 mech_data matches 1.. store result score $temp_1 mech_data run data get block ~ ~ ~ Items[{Slot:0b}].Count
execute if score $temp_0 mech_data matches 1.. run scoreboard players operation @s mech_data += $temp_1 mech_data
execute if score $temp_0 mech_data matches 1.. run item replace block ~ ~ ~ container.0 with minecraft:air
