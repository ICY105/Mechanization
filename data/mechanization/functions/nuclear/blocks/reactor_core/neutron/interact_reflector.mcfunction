
execute store result score #rot mechanization.data run data get entity @s Rotation[0] 1000
execute if score #rot mechanization.data matches ..-1 run scoreboard players add #rot mechanization.data 360000

function mechanization:nuclear/blocks/reactor_core/neutron/interact_reflector_backup

execute at @s if block ~0.01 ~ ~ #mechanization:neutron_reflector run scoreboard players set #angle mechanization.data 1
execute at @s if block ~ ~ ~0.01 #mechanization:neutron_reflector run scoreboard players set #angle mechanization.data 2
execute at @s if block ~-0.01 ~ ~ #mechanization:neutron_reflector run scoreboard players set #angle mechanization.data 3
execute at @s if block ~ ~ ~-0.01 #mechanization:neutron_reflector run scoreboard players set #angle mechanization.data 4

execute if score #rot mechanization.data matches 0..90000 if score #angle mechanization.data matches 2 run scoreboard players set #new_rot mechanization.data 180000
execute if score #rot mechanization.data matches 0..90000 if score #angle mechanization.data matches 3 run scoreboard players set #new_rot mechanization.data 360000
execute if score #rot mechanization.data matches 0..90000 run scoreboard players operation #new_rot mechanization.data -= #rot mechanization.data

execute if score #rot mechanization.data matches 90001..180000 if score #angle mechanization.data matches 4 run scoreboard players set #new_rot mechanization.data 180000
execute if score #rot mechanization.data matches 90001..180000 if score #angle mechanization.data matches 3 run scoreboard players set #new_rot mechanization.data 360000
execute if score #rot mechanization.data matches 90001..180000 run scoreboard players operation #new_rot mechanization.data -= #rot mechanization.data

execute if score #rot mechanization.data matches 180001..270000 if score #angle mechanization.data matches 4 run scoreboard players set #new_rot mechanization.data 180000
execute if score #rot mechanization.data matches 180001..270000 if score #angle mechanization.data matches 1 run scoreboard players set #new_rot mechanization.data 360000
execute if score #rot mechanization.data matches 180001..270000 run scoreboard players operation #new_rot mechanization.data -= #rot mechanization.data

execute if score #rot mechanization.data matches 270001..360000 if score #angle mechanization.data matches 2 run scoreboard players set #new_rot mechanization.data 180000
execute if score #rot mechanization.data matches 270001..360000 if score #angle mechanization.data matches 1 run scoreboard players set #new_rot mechanization.data 360000
execute if score #rot mechanization.data matches 270001..360000 run scoreboard players operation #new_rot mechanization.data -= #rot mechanization.data

execute store result entity @s Rotation[0] float 0.001 run scoreboard players get #new_rot mechanization.data
execute at @s run tp @s ~ ~ ~ ~ ~
