
function du:base/base
execute as @a at @s run function du:player/player
execute if score worldgen du_data matches 1 if score timer_20 du_data matches 0 as @a[gamemode=!spectator] at @s run function du:worldgen/worldgen
