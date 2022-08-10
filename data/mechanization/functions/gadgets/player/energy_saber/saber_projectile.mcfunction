
# model rotation
execute store result score #rot mechanization.data run data get entity @s Pose.Head[1]
scoreboard players add #rot mechanization.data 20
execute store result entity @s Pose.Head[1] float 1 run scoreboard players get #rot mechanization.data

# damage
scoreboard players operation #predicate mechanization.data = @s player_action.uuid.0
scoreboard players operation #damage mechanization.data = @s mechanization.weaponheat
execute positioned ~ ~-1 ~ as @e[distance=..0.75,type=#mechanization:living,nbt={HurtTime:0s},predicate=!mechanization:is_player] run function mechanization:base/utils/damage_entity

# move
function mechanization:gadgets/player/energy_saber/saber_projectile_2
execute if entity @s[tag=mechanization.speed] at @s run function mechanization:gadgets/player/energy_saber/saber_projectile_2
