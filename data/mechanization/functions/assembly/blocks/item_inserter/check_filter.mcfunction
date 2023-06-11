
setblock -30000000 0 3216 minecraft:yellow_shulker_box

data modify block -30000000 0 3216 Items set from entity @s Item.tag.filter.tag.mechanization.items
execute store result score #allowed mechanization.data run loot insert -30000000 0 3216 mine -30000000 0 3201 minecraft:air{drop_contents:true}
execute if score #allowed mechanization.data matches 0 run scoreboard players set #allowed mechanization.data 0
