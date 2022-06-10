execute store result score $temp smithed.data run data get storage smithed.item:main item.tag.Damage
scoreboard players remove $temp smithed.data 1
execute store result storage smithed.item:main item.tag.smithed.durability.damage int 1 run scoreboard players get $temp smithed.data

function smithed.item:impl/v0.0.1/durability/process/handle
