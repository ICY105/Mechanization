
# movement
tp @s[tag=!mechanization.invert] ^ ^ ^0.5
scoreboard players remove @s[tag=!mechanization.invert] mechanization.data 1
execute if score @s[tag=!mechanization.invert] mechanization.data matches 0 run tag @s add mechanization.invert
execute if entity @s[tag=!mechanization.invert] unless block ^ ^ ^0.5 #mechanization:raytrace_bullets run tag @s add mechanization.invert

execute if entity @s[tag=mechanization.invert] facing entity @a[sort=nearest,limit=1,distance=..32,predicate=mechanization:is_player] feet run tp @s ^ ^ ^0.75
execute if entity @s[tag=mechanization.invert] if entity @a[sort=nearest,limit=1,distance=..1,predicate=mechanization:is_player] run function mechanization:gadgets/player/energy_saber/saber_projectile_give
execute if entity @s[tag=mechanization.invert] unless entity @a[sort=nearest,limit=1,distance=..32,predicate=mechanization:is_player] run function mechanization:gadgets/player/energy_saber/saber_projectile_drop
