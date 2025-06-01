
scoreboard players set #success mechanization.data 0
scoreboard players operation #predicate mechanization.data = @s mechanization.item_id
execute as @e[type=minecraft:item_frame,tag=mechanization.item_injector,predicate=mechanization:matches_uuid,distance=0..,sort=nearest] at @s run function mechanization:assembly/blocks/item_injector/add_item

execute if score #success mechanization.data matches 0 run return 0

$data modify storage mechanization:temp list[$(var)].id set value "minecraft:air"
$data modify block ~ ~ ~ Items append from storage mechanization:temp list[$(var)]
