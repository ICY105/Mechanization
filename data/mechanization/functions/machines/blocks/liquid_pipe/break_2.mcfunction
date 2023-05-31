
execute positioned ~ ~1 ~ if entity @s[distance=..0.1] run scoreboard players remove @s mechanization.data 2
execute positioned ~ ~-1 ~ if entity @s[distance=..0.1] run scoreboard players remove @s mechanization.data 1
execute positioned ~ ~ ~-1 if entity @s[distance=..0.1] run scoreboard players remove @s mechanization.data 4
execute positioned ~ ~ ~1 if entity @s[distance=..0.1] run scoreboard players remove @s mechanization.data 8
execute positioned ~1 ~ ~ if entity @s[distance=..0.1] run scoreboard players remove @s mechanization.data 16
execute positioned ~-1 ~ ~ if entity @s[distance=..0.1] run scoreboard players remove @s mechanization.data 32

scoreboard players set $temp_2 mechanization.data 6421000
scoreboard players operation $temp_2 mechanization.data += @s mechanization.data
execute store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get $temp_2 mechanization.data

scoreboard players operation $predicate mechanization.data = @s mechanization.item_id
scoreboard players operation $temp_2 mechanization.data = $uuid.incr mechanization.item_id
scoreboard players add $uuid.incr mechanization.item_id 1
execute at @s run function mechanization:machines/machines/liquid_pipe/break_update
