
#in_0 mech_data = slot number
#in_1 mech_data = amount

scoreboard players set temp_0 mech_data 0

execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[8].Slot
execute if score temp_0 mech_data = in_0 mech_data store result score temp_1 mech_data run data get block ~ ~ ~ Items[8].Count
execute if score temp_0 mech_data = in_0 mech_data run scoreboard players operation temp_1 mech_data -= in_1 mech_data
execute if score temp_0 mech_data = in_0 mech_data store result block ~ ~ ~ Items[8].Count byte 1 run scoreboard players get temp_1 mech_data

execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[7].Slot
execute if score temp_0 mech_data = in_0 mech_data store result score temp_1 mech_data run data get block ~ ~ ~ Items[7].Count
execute if score temp_0 mech_data = in_0 mech_data run scoreboard players operation temp_1 mech_data -= in_1 mech_data
execute if score temp_0 mech_data = in_0 mech_data store result block ~ ~ ~ Items[7].Count byte 1 run scoreboard players get temp_1 mech_data

execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[6].Slot
execute if score temp_0 mech_data = in_0 mech_data store result score temp_1 mech_data run data get block ~ ~ ~ Items[6].Count
execute if score temp_0 mech_data = in_0 mech_data run scoreboard players operation temp_1 mech_data -= in_1 mech_data
execute if score temp_0 mech_data = in_0 mech_data store result block ~ ~ ~ Items[6].Count byte 1 run scoreboard players get temp_1 mech_data

execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[5].Slot
execute if score temp_0 mech_data = in_0 mech_data store result score temp_1 mech_data run data get block ~ ~ ~ Items[5].Count
execute if score temp_0 mech_data = in_0 mech_data run scoreboard players operation temp_1 mech_data -= in_1 mech_data
execute if score temp_0 mech_data = in_0 mech_data store result block ~ ~ ~ Items[5].Count byte 1 run scoreboard players get temp_1 mech_data

execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[4].Slot
execute if score temp_0 mech_data = in_0 mech_data store result score temp_1 mech_data run data get block ~ ~ ~ Items[4].Count
execute if score temp_0 mech_data = in_0 mech_data run scoreboard players operation temp_1 mech_data -= in_1 mech_data
execute if score temp_0 mech_data = in_0 mech_data store result block ~ ~ ~ Items[4].Count byte 1 run scoreboard players get temp_1 mech_data

execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[3].Slot
execute if score temp_0 mech_data = in_0 mech_data store result score temp_1 mech_data run data get block ~ ~ ~ Items[3].Count
execute if score temp_0 mech_data = in_0 mech_data run scoreboard players operation temp_1 mech_data -= in_1 mech_data
execute if score temp_0 mech_data = in_0 mech_data store result block ~ ~ ~ Items[3].Count byte 1 run scoreboard players get temp_1 mech_data

execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[2].Slot
execute if score temp_0 mech_data = in_0 mech_data store result score temp_1 mech_data run data get block ~ ~ ~ Items[2].Count
execute if score temp_0 mech_data = in_0 mech_data run scoreboard players operation temp_1 mech_data -= in_1 mech_data
execute if score temp_0 mech_data = in_0 mech_data store result block ~ ~ ~ Items[2].Count byte 1 run scoreboard players get temp_1 mech_data

execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[1].Slot
execute if score temp_0 mech_data = in_0 mech_data store result score temp_1 mech_data run data get block ~ ~ ~ Items[1].Count
execute if score temp_0 mech_data = in_0 mech_data run scoreboard players operation temp_1 mech_data -= in_1 mech_data
execute if score temp_0 mech_data = in_0 mech_data store result block ~ ~ ~ Items[1].Count byte 1 run scoreboard players get temp_1 mech_data

execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[0].Slot
execute if score temp_0 mech_data = in_0 mech_data store result score temp_1 mech_data run data get block ~ ~ ~ Items[0].Count
execute if score temp_0 mech_data = in_0 mech_data run scoreboard players operation temp_1 mech_data -= in_1 mech_data
execute if score temp_0 mech_data = in_0 mech_data store result block ~ ~ ~ Items[0].Count byte 1 run scoreboard players get temp_1 mech_data

