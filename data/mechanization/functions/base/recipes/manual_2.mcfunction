replaceitem block ~ ~ ~ container.16 air
data remove block -29999999 0 1601 Items
function mechanization:base/utils/manual_2
execute store result block -29999999 0 1601 Items[0].Slot byte 16 if entity @s
data modify block ~ ~ ~ Items append from block -29999999 0 1601 Items[0]