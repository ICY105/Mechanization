
setblock -30000000 0 3216 minecraft:yellow_shulker_box

data modify storage mechanization:temp obj set from entity @s Item
data modify storage mechanization:temp obj.Slot set value 0b
data modify block -30000000 0 3201 Items append from storage mechanization:temp obj
data modify block -30000000 0 3216 Items set from entity @s Item.tag.filter.mechanization.items
