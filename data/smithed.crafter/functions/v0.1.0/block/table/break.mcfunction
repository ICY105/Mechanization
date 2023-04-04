data modify storage smithed.crafter:main temp.output_item set from entity @s ArmorItems[3].tag.smithed.stored_output
data remove storage smithed.crafter:main temp.output_item.Slot
execute if data entity @s ArmorItems[3].tag.smithed.stored_output.id as @e[type=item, sort=nearest, distance=..2, tag=!global.ignore, tag=!global.ignore.kill] run function smithed.crafter:v0.1.0/block/table/break/delete_output

execute if entity @e[type=item, nbt={Item: {id: "minecraft:barrel", Count: 1b}}, limit=1, sort=nearest, distance=..3] run function smithed.crafter:v0.1.0/block/table/break/drop_item
kill @s
