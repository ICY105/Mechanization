
# calculate quanity reflected
scoreboard players set #chance mechanization.data -1
execute if block ~ ~ ~ minecraft:oxidized_copper_block run scoreboard players set #chance mechanization.data 45
execute if block ~ ~ ~ minecraft:waxed_oxidized_copper_block run scoreboard players set #chance mechanization.data 45
execute if block ~ ~ ~ minecraft:weathered_copper_block run scoreboard players set #chance mechanization.data 50
execute if block ~ ~ ~ minecraft:waxed_weathered_copper_block run scoreboard players set #chance mechanization.data 50
execute if block ~ ~ ~ minecraft:exposed_copper_block run scoreboard players set #chance mechanization.data 60
execute if block ~ ~ ~ minecraft:waxed_exposed_copper_block run scoreboard players set #chance mechanization.data 60
execute if block ~ ~ ~ minecraft:copper_blocks run scoreboard players set #chance mechanization.data 65
execute if block ~ ~ ~ minecraft:waxed_copper_blocks run scoreboard players set #chance mechanization.data 65

execute if block ~ ~ ~ minecraft:iron_block run scoreboard players set #chance mechanization.data 70
execute if block ~ ~ ~ minecraft:spawner align xyz if entity @e[tag=mechanization.resource_block] run function mechanization:nuclear/blocks/reactor_core/neutron/interact_reflector_custom
execute if block ~ ~ ~ minecraft:gold_block run scoreboard players set #chance mechanization.data 75
execute if block ~ ~ ~ minecraft:netherite_block run scoreboard players set #chance mechanization.data 100
execute if score #chance mechanization.data matches -1 run return fail

    scoreboard players operation #total mechanization.data = #quantity_fast mechanization.data

scoreboard players operation #quantity_fast mechanization.data *= #chance mechanization.data
scoreboard players operation #remainder mechanization.data = #quantity_fast mechanization.data
scoreboard players operation #remainder mechanization.data %= #cons.100 mechanization.data
scoreboard players operation #quantity_fast mechanization.data /= #cons.100 mechanization.data
execute if score #remainder mechanization.data matches 1.. run scoreboard players add #quantity_fast mechanization.data 1

    scoreboard players operation #total mechanization.data -= #quantity_fast mechanization.data
    execute store result score #temp mechanization.data run data get storage mechanization:temp obj.reflection[0]
    scoreboard players operation #temp mechanization.data += #total mechanization.data
    execute store result storage mechanization:temp obj.reflection[0] int 1 run scoreboard players get #temp mechanization.data

    scoreboard players operation #total mechanization.data = #quantity_thermal mechanization.data

scoreboard players operation #quantity_thermal mechanization.data *= #chance mechanization.data
scoreboard players operation #remainder mechanization.data = #quantity_thermal mechanization.data
scoreboard players operation #remainder mechanization.data %= #cons.100 mechanization.data
scoreboard players operation #quantity_thermal mechanization.data /= #cons.100 mechanization.data
execute if score #remainder mechanization.data matches 1.. run scoreboard players add #quantity_thermal mechanization.data 1

    scoreboard players operation #total mechanization.data -= #quantity_thermal mechanization.data
    execute store result score #temp mechanization.data run data get storage mechanization:temp obj.reflection[1]
    scoreboard players operation #temp mechanization.data += #total mechanization.data
    execute store result storage mechanization:temp obj.reflection[1] int 1 run scoreboard players get #temp mechanization.data

# calculate rotation
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
