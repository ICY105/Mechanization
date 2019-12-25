scoreboard players operation @s du_uuid = incr_id du_uuid
scoreboard players add incr_id du_uuid 1

data modify storage mechanization:networks teleporter prepend value {uuid:0,grid_id:0,pos_x:0,pos_y:0,pos_z:0,dimension:0,Name:'{"text":"Unnamed"}'}

execute store result storage mechanization:networks teleporter[0].uuid int 1 run scoreboard players get @s du_uuid
execute store result storage mechanization:networks teleporter[0].pos_x int 1 run data get entity @s Pos[0]
execute store result storage mechanization:networks teleporter[0].pos_y int 1 run data get entity @s Pos[1]
execute store result storage mechanization:networks teleporter[0].pos_z int 1 run data get entity @s Pos[2]
execute store result storage mechanization:networks teleporter[0].dimension int 1 run data get entity @s Dimension
data modify storage mechanization:networks teleporter[0].Name set from entity @s CustomName
