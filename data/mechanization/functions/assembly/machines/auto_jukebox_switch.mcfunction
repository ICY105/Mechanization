stopsound @a[distance=..24] record

execute if block ~ ~1 ~ hopper{Items:[{id:"minecraft:music_disc_ward"}]} run playsound minecraft:record.ward record @a ~ ~ ~ 6
execute if block ~ ~1 ~ hopper{Items:[{id:"minecraft:music_disc_13"}]} run playsound minecraft:record.13 record @a ~ ~ ~ 6
execute if block ~ ~1 ~ hopper{Items:[{id:"minecraft:music_disc_cat"}]} run playsound minecraft:record.cat record @a ~ ~ ~ 6
execute if block ~ ~1 ~ hopper{Items:[{id:"minecraft:music_disc_blocks"}]} run playsound minecraft:record.blocks record @a ~ ~ ~ 6
execute if block ~ ~1 ~ hopper{Items:[{id:"minecraft:music_disc_chirp"}]} run playsound minecraft:record.chirp record @a ~ ~ ~ 6
execute if block ~ ~1 ~ hopper{Items:[{id:"minecraft:music_disc_far"}]} run playsound minecraft:record.far record @a ~ ~ ~ 6
execute if block ~ ~1 ~ hopper{Items:[{id:"minecraft:music_disc_mall"}]} run playsound minecraft:record.mall record @a ~ ~ ~ 6
execute if block ~ ~1 ~ hopper{Items:[{id:"minecraft:music_disc_mellohi"}]} run playsound minecraft:record.mellohi record @a ~ ~ ~ 6
execute if block ~ ~1 ~ hopper{Items:[{id:"minecraft:music_disc_stal"}]} run playsound minecraft:record.stal record @a ~ ~ ~ 6
execute if block ~ ~1 ~ hopper{Items:[{id:"minecraft:music_disc_strad"}]} run playsound minecraft:record.strad record @a ~ ~ ~ 6
execute if block ~ ~1 ~ hopper{Items:[{id:"minecraft:music_disc_11"}]} run playsound minecraft:record.11 record @a ~ ~ ~ 6
execute if block ~ ~1 ~ hopper{Items:[{id:"minecraft:music_disc_wait"}]} run playsound minecraft:record.wait record @a ~ ~ ~ 6

tag @s remove mech_switch
tag @s add mech_active
