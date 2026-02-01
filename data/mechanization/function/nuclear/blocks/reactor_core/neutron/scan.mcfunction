
# init data
data modify storage mechanization:temp obj set from entity @s data

execute store result score #pos.x mechanization.data run data get storage mechanization:temp obj.x
execute store result score #pos.z mechanization.data run data get storage mechanization:temp obj.z
execute store result score #rotation mechanization.data run data get storage mechanization:temp obj.rot

# calc offsets
execute positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1
data modify storage mechanization:temp obj.pos set from entity @s Pos
execute store result score #dx mechanization.data run data get storage mechanization:temp Pos[0] 1000000
execute store result score #dz mechanization.data run data get storage mechanization:temp Pos[2] 1000000

tp @s ~ ~ ~ ~ ~

execute if entity @s[tag=mechanization.debug] run tellraw @p [{"text":"start = "},{"score":{"name":"#dx","objective":"mechanization.data"}},{"text":", "},{"score":{"name":"#dz","objective":"mechanization.data"}}]

# run
function mechanization:nuclear/blocks/reactor_core/neutron/scan_2

# store data
execute store result storage mechanization:temp obj.x int 1 run scoreboard players get #pos.x mechanization.data
execute store result storage mechanization:temp obj.z int 1 run scoreboard players get #pos.z mechanization.data
execute store result storage mechanization:temp obj.rot int 1 run scoreboard players get #rotation mechanization.data
data modify entity @s data set from storage mechanization:temp obj
