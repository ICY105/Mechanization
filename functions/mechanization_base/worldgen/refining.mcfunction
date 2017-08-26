scoreboard players set @s startFire 0

function mechanization_base:place_head

execute @e[type=area_effect_cloud,tag=atSkull] ~ ~ ~ function mechanization_base:worldgen/refining2

execute @e[type=area_effect_cloud,tag=atSkull] ~ ~ ~ scoreboard players tag @e[type=item] add atSkull {Item:{id:"minecraft:skull"}}
kill @e[tag=atSkull]