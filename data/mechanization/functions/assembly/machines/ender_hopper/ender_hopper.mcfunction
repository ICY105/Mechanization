
execute if block ~ ~ ~ minecraft:hopper[enabled=true] unless data block ~ ~ ~ Items[4] run tp @e[type=item,distance=..12,tag=!smithed.ignore,tag=!smithed.entity,tag=!smithed.strict] ~ ~1 ~
execute unless block ~ ~ ~ minecraft:hopper run kill @s
