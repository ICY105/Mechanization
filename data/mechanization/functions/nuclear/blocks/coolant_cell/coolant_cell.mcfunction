
# set CustomModelData
execute if score @s fluid.storage.0 matches ..0 run data modify entity @s item.tag.CustomModelData set value 6423008
execute if score @s fluid.storage.0 matches 1.. if score @s fluid.storage.1 matches ..0 run data modify entity @s item.tag.CustomModelData set value 6423009
execute if score @s fluid.storage.1 matches 1.. run data modify entity @s item.tag.CustomModelData set value 6423010

# set color
execute if score @s fluid.storage.0 matches 1.. run data modify entity @s item.tag.display.color set from entity @s item.tag.fluids[0].color

# transfer fluid vertically
scoreboard players set #transfer mechanization.data 0
execute if score @s fluid.storage.0 matches 1.. run data modify storage mechanization:temp obj set from entity @s item.tag.fluids[0]
execute if score @s fluid.storage.0 matches 1.. if score @s fluid.io.down matches -2 positioned ~ ~-1 ~ align xyz as @e[tag=mechanization.coolant_cell,dx=0,dy=0,dz=0,scores={fluid.io.up=1,fluid.storage.0=..999}] run function mechanization:nuclear/blocks/coolant_cell/m.transfer_vertically with storage mechanization:temp obj
execute if score @s fluid.storage.0 matches 1.. if score @s fluid.io.up matches -2 positioned ~ ~-1 ~ align xyz as @e[tag=mechanization.coolant_cell,dx=0,dy=0,dz=0,scores={fluid.io.down=1,fluid.storage.0=..999}] run function mechanization:nuclear/blocks/coolant_cell/m.transfer_vertically with storage mechanization:temp obj
scoreboard players operation @s fluid.storage.0 -= #transfer mechanization.data
execute if score #transfer mechanization.data matches 1.. if score @s fluid.storage.0 matches ..0 run data modify entity @s item.tag.fluids[0] set value {}

# break
execute unless block ~ ~ ~ minecraft:barrier run function mechanization:base/utils/break_block/break_machine
