stopsound @a[distance=..24] record

execute if block ~ ~1 ~ hopper{Items:[{id:"minecraft:music_disc_ward"}]} run playsound minecraft:music_disc.ward record @a ~ ~ ~ 6
execute if block ~ ~1 ~ hopper{Items:[{id:"minecraft:music_disc_ward"}]} run title @a[distance=..32] actionbar ["",{"translate":"mech.block.auto_jukebox.switch","with":["C418 - Ward"],"color":"green"}]

execute if block ~ ~1 ~ hopper{Items:[{id:"minecraft:music_disc_13"}]} run playsound minecraft:music_disc.13 record @a ~ ~ ~ 6
execute if block ~ ~1 ~ hopper{Items:[{id:"minecraft:music_disc_13"}]} run title @a[distance=..32] actionbar ["",{"translate":"mech.block.auto_jukebox.switch","with":["C418 - 13"],"color":"green"}]

execute if block ~ ~1 ~ hopper{Items:[{id:"minecraft:music_disc_cat"}]} run playsound minecraft:music_disc.cat record @a ~ ~ ~ 6
execute if block ~ ~1 ~ hopper{Items:[{id:"minecraft:music_disc_cat"}]} run title @a[distance=..32] actionbar ["",{"translate":"mech.block.auto_jukebox.switch","with":["C418 - Cat"],"color":"green"}]

execute if block ~ ~1 ~ hopper{Items:[{id:"minecraft:music_disc_blocks"}]} run playsound minecraft:music_disc.blocks record @a ~ ~ ~ 6
execute if block ~ ~1 ~ hopper{Items:[{id:"minecraft:music_disc_blocks"}]} run title @a[distance=..32] actionbar ["",{"translate":"mech.block.auto_jukebox.switch","with":["C418 - Blocks"],"color":"green"}]

execute if block ~ ~1 ~ hopper{Items:[{id:"minecraft:music_disc_chirp"}]} run playsound minecraft:music_disc.chirp record @a ~ ~ ~ 6
execute if block ~ ~1 ~ hopper{Items:[{id:"minecraft:music_disc_chirp"}]} run title @a[distance=..32] actionbar ["",{"translate":"mech.block.auto_jukebox.switch","with":["C418 - Chirp"],"color":"green"}]

execute if block ~ ~1 ~ hopper{Items:[{id:"minecraft:music_disc_far"}]} run playsound minecraft:music_disc.far record @a ~ ~ ~ 6
execute if block ~ ~1 ~ hopper{Items:[{id:"minecraft:music_disc_far"}]} run title @a[distance=..32] actionbar ["",{"translate":"mech.block.auto_jukebox.switch","with":["C418 - Far"],"color":"green"}]

execute if block ~ ~1 ~ hopper{Items:[{id:"minecraft:music_disc_mall"}]} run playsound minecraft:music_disc.mall record @a ~ ~ ~ 6
execute if block ~ ~1 ~ hopper{Items:[{id:"minecraft:music_disc_mall"}]} run title @a[distance=..32] actionbar ["",{"translate":"mech.block.auto_jukebox.switch","with":["C418 - Mall"],"color":"green"}]

execute if block ~ ~1 ~ hopper{Items:[{id:"minecraft:music_disc_mellohi"}]} run playsound minecraft:music_disc.mellohi record @a ~ ~ ~ 6
execute if block ~ ~1 ~ hopper{Items:[{id:"minecraft:music_disc_mellohi"}]} run title @a[distance=..32] actionbar ["",{"translate":"mech.block.auto_jukebox.switch","with":["C418 - Mellohi"],"color":"green"}]

execute if block ~ ~1 ~ hopper{Items:[{id:"minecraft:music_disc_stal"}]} run playsound minecraft:music_disc.stal record @a ~ ~ ~ 6
execute if block ~ ~1 ~ hopper{Items:[{id:"minecraft:music_disc_stal"}]} run title @a[distance=..32] actionbar ["",{"translate":"mech.block.auto_jukebox.switch","with":["C418 - Stal"],"color":"green"}]

execute if block ~ ~1 ~ hopper{Items:[{id:"minecraft:music_disc_strad"}]} run playsound minecraft:music_disc.strad record @a ~ ~ ~ 6
execute if block ~ ~1 ~ hopper{Items:[{id:"minecraft:music_disc_strad"}]} run title @a[distance=..32] actionbar ["",{"translate":"mech.block.auto_jukebox.switch","with":["C418 - Strad"],"color":"green"}]

execute if block ~ ~1 ~ hopper{Items:[{id:"minecraft:music_disc_11"}]} run playsound minecraft:music_disc.11 record @a ~ ~ ~ 6
execute if block ~ ~1 ~ hopper{Items:[{id:"minecraft:music_disc_11"}]} run title @a[distance=..32] actionbar ["",{"translate":"mech.block.auto_jukebox.switch","with":["C418 - 11"],"color":"green"}]

execute if block ~ ~1 ~ hopper{Items:[{id:"minecraft:music_disc_wait"}]} run playsound minecraft:music_disc.wait record @a ~ ~ ~ 6
execute if block ~ ~1 ~ hopper{Items:[{id:"minecraft:music_disc_wait"}]} run title @a[distance=..32] actionbar ["",{"translate":"mech.block.auto_jukebox.switch","with":["C418 - Wait"],"color":"green"}]


tag @s remove mech_switch
tag @s add mech_active
