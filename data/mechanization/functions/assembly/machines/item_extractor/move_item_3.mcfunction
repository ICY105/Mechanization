
scoreboard players set #success mechanization.data 0
scoreboard players operation $predicate mechanization.data = @s mechanization.item_id
execute as @e[tag=mechanization.item_inserter,sort=nearest,predicate=mechanization:matches_uuid] at @s run function mechanization:assembly/machines/item_inserter/add_item

execute if score #success mechanization.data matches 1 run data modify storage mechanization:temp obj set from block -30000000 0 3201 Items[0]
execute if score #success mechanization.data matches 1 run data modify storage mechanization:temp obj.id set value "minecraft:air"
execute if score #success mechanization.data matches 1 run data modify block ~ ~ ~ Items append from storage mechanization:temp obj
execute if score #success mechanization.data matches 1 run data modify storage mechanization:temp list set value []
