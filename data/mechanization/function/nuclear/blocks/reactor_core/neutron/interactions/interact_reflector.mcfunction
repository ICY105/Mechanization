
# calculate quanity reflected
scoreboard players set #chance mechanization.data -1
execute if block ~ ~ ~ minecraft:oxidized_copper run scoreboard players set #chance mechanization.data 45
execute if block ~ ~ ~ minecraft:waxed_oxidized_copper run scoreboard players set #chance mechanization.data 45
execute if block ~ ~ ~ minecraft:weathered_copper run scoreboard players set #chance mechanization.data 50
execute if block ~ ~ ~ minecraft:waxed_weathered_copper run scoreboard players set #chance mechanization.data 50
execute if block ~ ~ ~ minecraft:exposed_copper run scoreboard players set #chance mechanization.data 60
execute if block ~ ~ ~ minecraft:waxed_exposed_copper run scoreboard players set #chance mechanization.data 60
execute if block ~ ~ ~ minecraft:copper_block run scoreboard players set #chance mechanization.data 65
execute if block ~ ~ ~ minecraft:waxed_copper_block run scoreboard players set #chance mechanization.data 65

execute if block ~ ~ ~ minecraft:iron_block run scoreboard players set #chance mechanization.data 70
execute if block ~ ~ ~ minecraft:gold_block run scoreboard players set #chance mechanization.data 75
execute if block ~ ~ ~ minecraft:netherite_block run scoreboard players set #chance mechanization.data 95
execute if block ~ ~ ~ minecraft:spawner align xyz if entity @e[tag=mechanization.resource_block,dx=0,dy=0,dz=0] run function mechanization:nuclear/blocks/reactor_core/neutron/interact_reflector_custom
execute if score #chance mechanization.data matches -1 run return fail

scoreboard players operation #quantity_fast mechanization.data *= #chance mechanization.data
scoreboard players operation #remainder mechanization.data = #quantity_fast mechanization.data
scoreboard players operation #remainder mechanization.data %= #cons.100 mechanization.data
scoreboard players operation #quantity_fast mechanization.data /= #cons.100 mechanization.data
execute if score #remainder mechanization.data matches 1.. run scoreboard players add #quantity_fast mechanization.data 1

scoreboard players operation #quantity_thermal mechanization.data *= #chance mechanization.data
scoreboard players operation #remainder mechanization.data = #quantity_thermal mechanization.data
scoreboard players operation #remainder mechanization.data %= #cons.100 mechanization.data
scoreboard players operation #quantity_thermal mechanization.data /= #cons.100 mechanization.data
execute if score #remainder mechanization.data matches 1.. run scoreboard players add #quantity_thermal mechanization.data 1

# calculate rotation
execute store result score #rot mechanization.data run data get storage mechanization:temp obj.rot

scoreboard players set #angle mechanization.data 1
execute if score #pos.y mechanization.data matches 0 run scoreboard players set #angle mechanization.data 2
execute if entity @s[tag=mechanization.debug] run tellraw @p [{"text":"flip = "},{"score":{"name":"#pos.x","objective":"mechanization.data"}},{"text":", "},{"score":{"name":"#pos.y","objective":"mechanization.data"}}]

execute if score #rot mechanization.data matches 0..90 if score #angle mechanization.data matches 1 run scoreboard players set #new_rot mechanization.data 180
execute if score #rot mechanization.data matches 0..90 if score #angle mechanization.data matches 2 run scoreboard players set #new_rot mechanization.data 360
execute if score #rot mechanization.data matches 0..90 run scoreboard players operation #new_rot mechanization.data -= #rot mechanization.data

execute if score #rot mechanization.data matches 91..180 if score #angle mechanization.data matches 1 run scoreboard players set #new_rot mechanization.data 180
execute if score #rot mechanization.data matches 91..180 if score #angle mechanization.data matches 2 run scoreboard players set #new_rot mechanization.data 360
execute if score #rot mechanization.data matches 91..180 run scoreboard players operation #new_rot mechanization.data -= #rot mechanization.data

execute if score #rot mechanization.data matches 181..270 if score #angle mechanization.data matches 1 run scoreboard players set #new_rot mechanization.data 180
execute if score #rot mechanization.data matches 181..270 if score #angle mechanization.data matches 2 run scoreboard players set #new_rot mechanization.data 360
execute if score #rot mechanization.data matches 181..270 run scoreboard players operation #new_rot mechanization.data -= #rot mechanization.data

execute if score #rot mechanization.data matches 271..360 if score #angle mechanization.data matches 1 run scoreboard players set #new_rot mechanization.data 180
execute if score #rot mechanization.data matches 271..360 if score #angle mechanization.data matches 2 run scoreboard players set #new_rot mechanization.data 360
execute if score #rot mechanization.data matches 271..360 run scoreboard players operation #new_rot mechanization.data -= #rot mechanization.data

scoreboard players operation #rotation mechanization.data = #new_rot mechanization.data

# normalize rotation
scoreboard players set #rot_flip mechanization.data 0

execute if score #rotation mechanization.data matches 0..45 run scoreboard players operation #rot_normal mechanization.data = #rotation mechanization.data

execute if score #rotation mechanization.data matches 46..90 run scoreboard players set #rot_normal mechanization.data 90
execute if score #rotation mechanization.data matches 46..90 run scoreboard players operation #rot_normal mechanization.data -= #rotation mechanization.data
execute if score #rotation mechanization.data matches 46..90 run scoreboard players set #rot_flip mechanization.data 1

execute if score #rotation mechanization.data matches 91..134 run scoreboard players set #rot_normal mechanization.data -90
execute if score #rotation mechanization.data matches 91..134 run scoreboard players operation #rot_normal mechanization.data += #rotation mechanization.data
execute if score #rotation mechanization.data matches 91..134 run scoreboard players set #rot_flip mechanization.data 1

execute if score #rotation mechanization.data matches 135..180 run scoreboard players set #rot_normal mechanization.data 180
execute if score #rotation mechanization.data matches 135..180 run scoreboard players operation #rot_normal mechanization.data -= #rotation mechanization.data

execute if score #rotation mechanization.data matches 181..225 run scoreboard players set #rot_normal mechanization.data -180
execute if score #rotation mechanization.data matches 181..225 run scoreboard players operation #rot_normal mechanization.data += #rotation mechanization.data

execute if score #rotation mechanization.data matches 226..270 run scoreboard players set #rot_normal mechanization.data 270
execute if score #rotation mechanization.data matches 226..270 run scoreboard players operation #rot_normal mechanization.data -= #rotation mechanization.data
execute if score #rotation mechanization.data matches 226..270 run scoreboard players set #rot_flip mechanization.data 1

execute if score #rotation mechanization.data matches 271..315 run scoreboard players set #rot_normal mechanization.data -270
execute if score #rotation mechanization.data matches 271..315 run scoreboard players operation #rot_normal mechanization.data += #rotation mechanization.data
execute if score #rotation mechanization.data matches 271..315 run scoreboard players set #rot_flip mechanization.data 1

execute if score #rotation mechanization.data matches 316..359 run scoreboard players set #rot_normal mechanization.data 360
execute if score #rotation mechanization.data matches 316..359 run scoreboard players operation #rot_normal mechanization.data -= #rotation mechanization.data

execute if entity @s[tag=mechanization.debug] run tellraw @p [{"text":"flip = "},{"score":{"name":"#rot","objective":"mechanization.data"}},{"text":" + "},{"score":{"name":"#angle","objective":"mechanization.data"}},{"text":" = "},{"score":{"name":"#new_rot","objective":"mechanization.data"}}]

# store new rotation
execute store result storage mechanization:temp obj.rot int 1 run scoreboard players get #new_rot mechanization.data
execute store result storage mechanization:temp obj.rot_normal int 1 run scoreboard players get #rot_normal mechanization.data

execute store result entity @s Rotation[0] float 1 run scoreboard players get #new_rot mechanization.data
execute at @s run tp @s ~ ~ ~ ~ ~

tag @s add reflector
