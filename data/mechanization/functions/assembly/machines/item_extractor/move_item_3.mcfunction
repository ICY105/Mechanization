
scoreboard players set $out_0 mechanization.data 0
scoreboard players operation $predicate mechanization.data = @s du_uuid
execute as @e[tag=mech_item_inserter,sort=nearest,predicate=mechanization:matches_uuid] at @s run function mechanization:assembly/machines/item_inserter/add_item

execute if score $out_0 mechanization.data matches 1 run data modify storage du:temp obj set from block -29999999 0 1601 Items[0]
execute if score $out_0 mechanization.data matches 1 run data modify storage du:temp obj.id set value "minecraft:air"
execute if score $out_0 mechanization.data matches 1 run data modify block ~ ~ ~ Items append from storage du:temp obj
execute if score $out_0 mechanization.data matches 1 run data modify storage du:temp list set value []
