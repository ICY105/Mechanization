
# model rotation
execute store result score #rot mechanization.data run data get entity @s Pose.Head[1]
scoreboard players add #rot mechanization.data 20
execute store result entity @s Pose.Head[1] float 1 run scoreboard players get #rot mechanization.data

# move
function mechanization:gadgets/player/energy_saber/saber_projectile_2
execute if entity @s[tag=mechanization.speed] at @s run function mechanization:gadgets/player/energy_saber/saber_projectile_2
