
forceload remove -30000000 3200
forceload add -30000000 3200

execute positioned -30000000 0 3200 unless block ~ ~ ~ minecraft:jukebox run setblock ~ ~ ~ minecraft:jukebox
execute positioned -30000000 0 3201 unless block ~ ~ ~ minecraft:yellow_shulker_box run setblock ~ ~ ~ minecraft:yellow_shulker_box
execute positioned -30000000 0 3202 unless block ~ ~ ~ minecraft:oak_wall_sign run setblock ~ ~ ~ minecraft:oak_wall_sign[facing=south]
execute positioned -30000000 0 3203 unless block ~ ~ ~ minecraft:repeating_command_block run setblock ~ ~ ~ minecraft:repeating_command_block{auto:1b, Command:"function  #smithed_u.chunk:command_block_tick"}

execute positioned -30000000 0 3200 run kill @e[tag=smithed_u.chunk,distance=..16]
summon minecraft:marker -30000000 0 3200 {Tags:["smithed_u.chunk","smithed.ignore","smithed.strict"]}
execute positioned -30000000 0 3200 as @e[tag=smithed_u.chunk,distance=..16] run data modify entity @s data.Dimension set from entity @p Dimension
