
# check for a destination
scoreboard players set #success mechanization.data 0
execute if data entity @s item.components."minecraft:custom_data".dest.x if data entity @s item.components."minecraft:custom_data".dest.y if data entity @s item.components."minecraft:custom_data".dest.z run scoreboard players set #success mechanization.data 1
execute if score #success mechanization.data matches 0 run data modify storage smithed.actionbar:input message set value {priority:"notification",json:'[{"translate":"text.mechanization.teleporter.no_destination","color":"green"}]'}
execute if score #success mechanization.data matches 0 positioned ~ ~1 ~ align xyz as @a[dx=0,dy=0,dz=0] at @s run function #smithed.actionbar:message
execute if score #success mechanization.data matches 0 run return fail


# check dimension
scoreboard players set #dimension mechanization.data 0
execute if data entity @s item.components."minecraft:custom_data".dest{dimension:"minecraft:overworld"} run scoreboard players set #dimension mechanization.data 1
execute if data entity @s item.components."minecraft:custom_data".dest{dimension:"minecraft:the_nether"} run scoreboard players set #dimension mechanization.data 2
execute if data entity @s item.components."minecraft:custom_data".dest{dimension:"minecraft:the_end"} run scoreboard players set #dimension mechanization.data 3

execute if score #dimension mechanization.data matches 0 run data modify storage smithed.actionbar:input message set value {priority:"notification",json:'[{"translate":"text.mechanization.teleporter.invalid_dimension","color":"green"}]'}
execute if score #dimension mechanization.data matches 0 positioned ~ ~1 ~ align xyz as @a[dx=0,dy=0,dz=0] at @s run function #smithed.actionbar:message
execute if score #dimension mechanization.data matches 0 run return fail

# trigger teleport
item modify entity @s contents {"function":"minecraft:set_custom_model_data","value":6422955}
scoreboard players add @s mechanization.time 1
execute if score @s mechanization.time matches 1 run playsound minecraft:block.portal.trigger block @a[distance=..16] ~ ~ ~
execute if score @s mechanization.time matches 5 run function mechanization:machines/blocks/teleporter/m.teleport_2 with entity @s item.components."minecraft:custom_data".dest
