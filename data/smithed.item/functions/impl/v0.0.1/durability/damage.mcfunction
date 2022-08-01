execute unless data storage smithed.item:main item.tag.smithed.durability.dur run function smithed.item:impl/v0.0.1/durability/init

function smithed.item:impl/v0.0.1/durability/calc_durability
execute if score $out smithed.data matches -1..0 run playsound minecraft:entity.item.break player @a[distance=..16]
execute if score $out smithed.data matches 0 run data modify storage smithed.item:main item set value "null"

