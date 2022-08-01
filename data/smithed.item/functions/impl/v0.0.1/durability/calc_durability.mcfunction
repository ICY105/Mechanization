execute store result score $temp smithed.data run data get storage smithed.item:main item.tag.smithed.durability.dur
execute store result score $temp1 smithed.data run data get storage smithed.item:main item.tag.smithed.durability.damage
execute store result score $temp2 smithed.data run data get storage smithed.item:main item.tag.Damage
execute store result score $temp3 smithed.data run data get storage smithed.item:main item.tag.smithed.durability.max
function smithed.item:impl/v0.0.1/durability/get_max

#change internal dur value

## durability.damage -= Damage
scoreboard players operation $temp1 smithed.data -= $temp2 smithed.data

execute if score $temp1 smithed.data matches 1.. if data storage smithed.item:main item.tag.Enchantments[{id: "minecraft:mending"}] run function smithed.item:impl/v0.0.1/durability/calc_mending

## durability.dur += (durability.damage - Damage)
scoreboard players operation $temp smithed.data += $temp1 smithed.data

## (durability.damage - Damage) + Damage
scoreboard players operation $temp1 smithed.data += $temp2 smithed.data

## if (base.MaxDur > 1 && durability.dur > durability.max) then durability.dur = durability.max
execute if score $temp4 smithed.data matches 1.. if score $temp smithed.data > $temp3 smithed.data run scoreboard players operation $temp smithed.data = $temp3 smithed.data

## if (durability.dur <= -1) then durability.dur = -1
execute if score $temp smithed.data matches ..-1 run scoreboard players set $temp smithed.data -1

## if (base.MaxDur >= 1) then item.tag.smithed.durability.dur = durability.dur 
execute if score $temp4 smithed.data matches 1.. store result storage smithed.item:main item.tag.smithed.durability.dur int 1 run scoreboard players get $temp smithed.data

#set dur bar

## temp5 = base.MaxDur
scoreboard players operation $temp5 smithed.data = $temp4 smithed.data

## temp6 = base.MaxDur - 8
scoreboard players operation $temp6 smithed.data = $temp4 smithed.data
scoreboard players remove $temp6 smithed.data 8

## temp5 *= durability.dur
scoreboard players operation $temp5 smithed.data *= $temp smithed.data

## temp5 /= durability.max
scoreboard players operation $temp5 smithed.data /= $temp3 smithed.data

## base.MaxDur -= temp5
scoreboard players operation $temp4 smithed.data -= $temp5 smithed.data

## if (base.MaxDur > 1 && base.MaxDur > temp6) then base.MaxDur = temp6 
execute if score $temp4 smithed.data matches 1.. if score $temp4 smithed.data > $temp6 smithed.data run scoreboard players operation $temp4 smithed.data = $temp6 smithed.data

execute if score $temp4 smithed.data matches 1.. store result storage smithed.item:main item.tag.Damage int 1 run scoreboard players get $temp4 smithed.data
execute if score $temp4 smithed.data matches 1.. store result storage smithed.item:main item.tag.smithed.durability.damage int 1 run scoreboard players get $temp4 smithed.data

#change durability of unbreakable items
execute if score $temp4 smithed.data matches 0 store result score $temp smithed.data run data get storage smithed.item:main item.tag.smithed.durability.dur
execute if score $temp4 smithed.data matches 0 run scoreboard players remove $temp smithed.data 1
execute if score $temp4 smithed.data matches 0 store result storage smithed.item:main item.tag.smithed.durability.dur int 1 run scoreboard players get $temp smithed.data

function smithed.item:impl/v0.0.1/lore/build

#output state
scoreboard players set $out smithed.data 1
execute if score $temp smithed.data matches ..-1 if data storage smithed.item:main item.tag.smithed.durability run scoreboard players set $out smithed.data 0
execute if score $temp smithed.data matches ..-1 if data storage smithed.item:main item.tag.smithed.durability{no_break: 1b} run scoreboard players set $out smithed.data -1
