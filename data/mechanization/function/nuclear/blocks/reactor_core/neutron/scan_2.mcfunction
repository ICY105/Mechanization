
tp @s ~ ~ ~ ~ ~

execute if entity @s[tag=mechanization.debug] run tellraw @p [{"text":"scan = "},{"score":{"name":"#pos.x","objective":"mechanization.data"}},{"text":", "},{"score":{"name":"#pos.y","objective":"mechanization.data"}},{"text":" <> "},{"nbt":"Pos","entity":"@s"},{"text":" <> "},{"nbt":"obj","storage":"mechanization:temp"}]

# load offset data
data modify storage mechanization:temp obj.data set value {}

execute if score #pos.x mechanization.data matches 500 if score #pos.y mechanization.data matches 500 run function mechanization:nuclear/blocks/reactor_core/neutron/m.get_xy_data with storage mechanization:temp obj

execute if score #rot_flip mechanization.data matches 0 if score #pos.y mechanization.data matches 0 run function mechanization:nuclear/blocks/reactor_core/neutron/m.get_x_data with storage mechanization:temp obj
execute if score #rot_flip mechanization.data matches 0 if score #pos.x mechanization.data matches 0 unless score #pos.y mechanization.data matches 0 run function mechanization:nuclear/blocks/reactor_core/neutron/m.get_y_data with storage mechanization:temp obj
execute if score #rot_flip mechanization.data matches 1 if score #pos.y mechanization.data matches 0 run function mechanization:nuclear/blocks/reactor_core/neutron/m.get_y_data with storage mechanization:temp obj
execute if score #rot_flip mechanization.data matches 1 if score #pos.x mechanization.data matches 0 unless score #pos.y mechanization.data matches 0 run function mechanization:nuclear/blocks/reactor_core/neutron/m.get_x_data with storage mechanization:temp obj

execute unless data storage mechanization:temp obj.data.d run return 0

# calc distance offset
data modify storage mechanization:temp obj.offset set value {x:0.0, y:0.0, rot: 0}

execute if score #rot_flip mechanization.data matches 0 store result score #temp mechanization.data run data get storage mechanization:temp obj.data.x 1000
execute if score #rot_flip mechanization.data matches 1 store result score #temp mechanization.data run data get storage mechanization:temp obj.data.y 1000
#execute if score #rotation mechanization.data matches 0..45 run scoreboard players operation #temp mechanization.data *= #cons.-1 mechanization.data
execute store result storage mechanization:temp obj.offset.x double 0.001 run scoreboard players get #temp mechanization.data

scoreboard players operation #pos.x mechanization.data += #temp mechanization.data
execute if score #pos.x mechanization.data matches 1000.. run scoreboard players remove #pos.x mechanization.data 1000
execute if score #pos.x mechanization.data matches ..-1 run scoreboard players add #pos.x mechanization.data 1000
execute store result storage mechanization:temp obj.x int 1 run scoreboard players get #pos.x mechanization.data


execute if score #rot_flip mechanization.data matches 0 store result score #temp mechanization.data run data get storage mechanization:temp obj.data.y 1000
execute if score #rot_flip mechanization.data matches 1 store result score #temp mechanization.data run data get storage mechanization:temp obj.data.x 1000
#execute if score #rotation mechanization.data matches 46..89 run scoreboard players operation #temp mechanization.data *= #cons.-1 mechanization.data
execute store result storage mechanization:temp obj.offset.y double 0.001 run scoreboard players get #temp mechanization.data

scoreboard players operation #pos.y mechanization.data += #temp mechanization.data
execute if score #pos.y mechanization.data matches 1000.. run scoreboard players remove #pos.y mechanization.data 1000
execute if score #pos.y mechanization.data matches ..-1 run scoreboard players add #pos.y mechanization.data 1000
execute store result storage mechanization:temp obj.y int 1 run scoreboard players get #pos.y mechanization.data

execute if score #pos.y mechanization.data < #pos.x mechanization.data run scoreboard players set #pos.y mechanization.data 0
execute if score #pos.x mechanization.data < #pos.y mechanization.data run scoreboard players set #pos.x mechanization.data 0

# run neutron actions
execute at @s run function mechanization:nuclear/blocks/reactor_core/neutron/interactions/check_block

# loop
execute store result score #distance mechanization.data run data get storage mechanization:temp obj.data.d 10000
scoreboard players operation #loop mechanization.data -= #distance mechanization.data

function mechanization:nuclear/blocks/reactor_core/neutron/draw_particle

execute store result storage mechanization:temp obj.offset.rot int 1 run scoreboard players get #rotation mechanization.data
execute if score #loop mechanization.data matches 1.. run function mechanization:nuclear/blocks/reactor_core/neutron/m.scan_3 with storage mechanization:temp obj.offset
