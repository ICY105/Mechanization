
# init data
scoreboard players set #pos.x mechanization.data 500
scoreboard players set #pos.y mechanization.data 500

data modify storage mechanization:temp obj set value {rot: 0, d: 0, x: 500, y: 500, data:{}}
execute store result storage mechanization:temp obj.rot int 1 run scoreboard players get #rotation mechanization.data

# run
particle minecraft:dust{color:[0,0,1],scale:1} ~ ~-0.5 ~
particle minecraft:dust{color:[0,0,1],scale:1} ~ ~3.5 ~

function mechanization:nuclear/test/m.get_xy_data with storage mechanization:temp obj

execute if score #debug mechanization.data matches 1 run tellraw @p [{"score":{"name":"#pos.x","objective":"mechanization.data"}},{"text":" - "},{"score":{"name":"#pos.y","objective":"mechanization.data"}}]

execute store result score #temp mechanization.data run data get storage mechanization:temp obj.data.x 1000
scoreboard players operation #pos.x mechanization.data += #temp mechanization.data
execute if score #pos.x mechanization.data matches 1000.. run scoreboard players remove #pos.x mechanization.data 1000
execute if score #pos.x mechanization.data matches ..-1 run scoreboard players add #pos.x mechanization.data 1000
execute store result storage mechanization:temp obj.x int 1 run scoreboard players get #pos.x mechanization.data

execute store result score #temp mechanization.data run data get storage mechanization:temp obj.data.y 1000
scoreboard players operation #pos.y mechanization.data += #temp mechanization.data
execute if score #pos.y mechanization.data matches 1000.. run scoreboard players remove #pos.y mechanization.data 1000
execute if score #pos.y mechanization.data matches ..-1 run scoreboard players add #pos.y mechanization.data 1000
execute store result storage mechanization:temp obj.y int 1 run scoreboard players get #pos.y mechanization.data

execute if score #debug mechanization.data matches 1 run tellraw @p [{"score":{"name":"#pos.x","objective":"mechanization.data"}},{"text":" - "},{"score":{"name":"#pos.y","objective":"mechanization.data"}},{"text":" - "},{"nbt":"obj.data","storage":"mechanization:temp"}]

scoreboard players set #counter mechanization.data 0
data modify storage mechanization:temp obj.d set from storage mechanization:temp obj.data.d
function mechanization:nuclear/test/scan_2 with storage mechanization:temp obj

scoreboard players set #debug mechanization.data 0
