
# model rotation
execute store result score #rot mechanization.data run data get entity @s Pose.Head[1]
scoreboard players add #rot mechanization.data 20
execute store result entity @s Pose.Head[1] float 1 run scoreboard players get #rot mechanization.data

# damage
scoreboard players operation #predicate mechanization.data = @s player_action.uuid.0
scoreboard players operation #damage mechanization.data = @s mechanization.weaponheat
execute positioned ~ ~-1 ~ as @e[distance=..0.75,type=#mechanization:living,nbt={HurtTime:0s},predicate=!mechanization:is_player] run function mechanization:base/utils/damage_entity

# movement
tp @s[tag=!mechanization.invert] ^ ^ ^0.5
scoreboard players remove @s[tag=!mechanization.invert] mechanization.data 1
execute if score @s[tag=!mechanization.invert] mechanization.data matches 0 run tag @s add mechanization.invert
execute if entity @s[tag=!mechanization.invert] unless block ^ ^ ^0.5 #mechanization:raytrace_bullets run tag @s add mechanization.invert

execute if entity @s[tag=mechanization.invert] facing entity @a[sort=nearest,limit=1,distance=..32,predicate=mechanization:is_player] feet run tp @s ^ ^ ^0.75
execute if entity @s[tag=mechanization.invert] if entity @a[sort=nearest,limit=1,distance=..1,predicate=mechanization:is_player] run function mechanization:gadgets/player/energy_saber/saber_projectile_give
execute if entity @s[tag=mechanization.invert] unless entity @a[sort=nearest,limit=1,distance=..32,predicate=mechanization:is_player] run function mechanization:gadgets/player/energy_saber/saber_projectile_drop
