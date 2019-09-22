scoreboard players operation @s du_uuid = incr_id du_uuid
scoreboard players add incr_id du_uuid 1

execute in minecraft:overworld run data modify block -29999999 0 1600 RecordItem.tag.mech.teleporters prepend value {uuid:0,grid_id:0,pos_x:0,pos_y:0,pos_z:0,dimension:0,Name:'{"text":"Unnamed"}'}

execute in minecraft:overworld store result block -29999999 0 1600 RecordItem.tag.mech.teleporters[0].uuid int 1 run scoreboard players get @s du_uuid
execute in minecraft:overworld store result block -29999999 0 1600 RecordItem.tag.mech.teleporters[0].pos_x int 1 run data get entity @s Pos[0]
execute in minecraft:overworld store result block -29999999 0 1600 RecordItem.tag.mech.teleporters[0].pos_y int 1 run data get entity @s Pos[1]
execute in minecraft:overworld store result block -29999999 0 1600 RecordItem.tag.mech.teleporters[0].pos_z int 1 run data get entity @s Pos[2]
execute in minecraft:overworld store result block -29999999 0 1600 RecordItem.tag.mech.teleporters[0].dimension int 1 run data get entity @s Dimension
execute in minecraft:overworld run data modify block -29999999 0 1600 RecordItem.tag.mech.teleporters[0].Name set from entity @s CustomName
