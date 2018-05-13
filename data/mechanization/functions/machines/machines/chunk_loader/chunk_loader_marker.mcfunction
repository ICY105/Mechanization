#Store original Cords
execute store result score temp_0 mech_data run data get entity @s Pos[0]
execute store result score temp_1 mech_data run data get entity @s Pos[2]

#Load Stored Cords
execute store result entity @s Pos[0] double 1 run scoreboard players get @s mech_x
execute store result entity @s Pos[2] double 1 run scoreboard players get @s mech_z

#Check for Paired Chunk Loader
scoreboard players operation temp_2 mech_data = @s du_uuid
scoreboard players set temp_3 mech_data 0
execute as @e[tag=mech_chunk_loader] if score @s du_uuid = temp_2 mech_data run scoreboard players set temp_3 mech_data 1

execute if score temp_3 mech_data matches 1 run scoreboard players set @s mech_data 6
scoreboard players remove @s mech_data 1
kill @s[scores={mech_data=..0}]

#Overworld
execute if score @s mech_y matches 0 run function mechanization:machines/machines/chunk_loader/load_chunks

#Load original cords
execute store result entity @s Pos[0] double 1 run scoreboard players get temp_0 mech_data
execute store result entity @s Pos[2] double 1 run scoreboard players get temp_1 mech_data
