
#actions
tag @s remove du_sneaking
tag @s[scores={du_sneak=1..}] add du_sneaking
scoreboard players set @s du_sneak 0

tag @s remove du_jumping
tag @s[scores={du_jump=1..}] add du_jumping
scoreboard players set @s du_jump 0

#moving
tag @s remove du_moving

scoreboard players operation temp_0 du_data = @s du_move_x
scoreboard players operation temp_1 du_data = @s du_move_y
scoreboard players operation temp_2 du_data = @s du_move_z

execute store result score @s du_move_x run data get entity @s Pos[0] 100
execute store result score @s du_move_y run data get entity @s Pos[1] 100
execute store result score @s du_move_z run data get entity @s Pos[2] 100

execute unless score temp_0 du_data = @s du_move_x run tag @s add du_moving
execute unless score temp_1 du_data = @s du_move_y run tag @s add du_moving
execute unless score temp_2 du_data = @s du_move_z run tag @s add du_moving

#Assign Player IDs
scoreboard players operation @s[tag=!du_has_id] mech_uuid = incrID mech_uuid
execute if entity @s[tag=!du_has_id] run scoreboard players add incrID mech_uuid 1
tag @s[tag=!du_has_id] add du_has_id