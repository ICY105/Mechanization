
setblock -30000000 0 3216 minecraft:yellow_shulker_box

data modify block -30000000 0 3216 Items set from entity @s Item.tag.filter.tag.mechanization.items
execute store result score #result mechanization.data run loot insert -30000000 0 3216 mine -30000000 0 3201 minecraft:air{drop_contents:true}
execute if score #result mechanization.data matches 0 run scoreboard players set #success mechanization.data 0
