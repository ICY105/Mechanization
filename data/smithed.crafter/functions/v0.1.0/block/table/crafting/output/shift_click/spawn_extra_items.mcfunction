############################################################
# Description: Spawns the extra items needed from creating an extra
# Creator: CreeperMagnet_
############################################################

summon item ~ ~ ~ {Tags: ["smithed.extra_item"], Item: {id: "minecraft:stone", Count: 1b}}
data modify entity @e[tag=smithed.extra_item, type=item, limit=1, sort=nearest] Item set from storage smithed.crafter:main root.temp.item
tag @e[tag=smithed.extra_item, type=item, limit=1, sort=nearest] remove smithed.extra_item
scoreboard players remove $temp2 smithed.data 1
execute if score $temp2 smithed.data matches 1.. run function smithed.crafter:v0.1.0/block/table/crafting/output/shift_click/spawn_extra_items
