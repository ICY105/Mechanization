
scoreboard players set #success mechanization.data 0
scoreboard players operation #predicate mechanization.data = @s mechanization.item_id
execute as @e[type=minecraft:item_frame,tag=mechanization.item_inserter,predicate=mechanization:matches_uuid,distance=0..,sort=nearest] at @s run function mechanization:assembly/blocks/item_inserter/add_item

execute if score #success mechanization.data matches 1 run data modify storage mechanization:temp obj set from storage mechanization:temp list[0]
execute if score #success mechanization.data matches 1 run data modify storage mechanization:temp obj.id set value "minecraft:air"
execute if score #success mechanization.data matches 1 run data modify block ~ ~ ~ Items append from storage mechanization:temp obj
execute if score #success mechanization.data matches 1 run data modify storage mechanization:temp list set value []
