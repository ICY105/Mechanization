
# init data
data modify storage mechanization:temp obj set from entity @s data

execute store result score #pos.x mechanization.data run data get storage mechanization:temp obj.x
execute store result score #pos.y mechanization.data run data get storage mechanization:temp obj.y
execute store result score #rotation mechanization.data run data get storage mechanization:temp obj.rot

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

execute store result storage mechanization:temp obj.rot int 1 run scoreboard players get #rotation mechanization.data
execute store result storage mechanization:temp obj.rot_normal int 1 run scoreboard players get #rot_normal mechanization.data

# run
function mechanization:nuclear/blocks/reactor_core/neutron/scan_2
data modify entity @s data set from storage mechanization:temp obj
