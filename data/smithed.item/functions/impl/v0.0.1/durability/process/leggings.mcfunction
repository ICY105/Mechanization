data modify storage smithed.item:main item set from entity @s Inventory[{Slot: 101b}]
function smithed.item:impl/v0.0.1/durability/process/handle

execute unless data storage smithed.item:main {item: "null"} unless score $out smithed.data matches -1 run item modify entity @s armor.legs smithed.item:update_nbt
execute if data storage smithed.item:main {item: "null"} run item replace entity @s armor.legs with air
