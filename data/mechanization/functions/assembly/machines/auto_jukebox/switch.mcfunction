
# stop previous records
stopsound @a[distance=..32] record
tag @s add mech_active

# choose record
execute store result score #rng.in mechanization.data run data get block ~ ~ ~ Items
function mechanization:base/utils/random

execute if score #rng.out mechanization.data matches 0 run data modify storage mechanization:temp obj set from block ~ ~ ~ Items[0]
execute if score #rng.out mechanization.data matches 1 run data modify storage mechanization:temp obj set from block ~ ~ ~ Items[1]
execute if score #rng.out mechanization.data matches 2 run data modify storage mechanization:temp obj set from block ~ ~ ~ Items[2]
execute if score #rng.out mechanization.data matches 3 run data modify storage mechanization:temp obj set from block ~ ~ ~ Items[3]
execute if score #rng.out mechanization.data matches 4 run data modify storage mechanization:temp obj set from block ~ ~ ~ Items[4]
execute if score #rng.out mechanization.data matches 5 run data modify storage mechanization:temp obj set from block ~ ~ ~ Items[5]
execute if score #rng.out mechanization.data matches 6 run data modify storage mechanization:temp obj set from block ~ ~ ~ Items[6]
execute if score #rng.out mechanization.data matches 7 run data modify storage mechanization:temp obj set from block ~ ~ ~ Items[7]
execute if score #rng.out mechanization.data matches 8 run data modify storage mechanization:temp obj set from block ~ ~ ~ Items[8]
execute if score #rng.out mechanization.data matches 9 run data modify storage mechanization:temp obj set from block ~ ~ ~ Items[9]
execute if score #rng.out mechanization.data matches 10 run data modify storage mechanization:temp obj set from block ~ ~ ~ Items[10]
execute if score #rng.out mechanization.data matches 11 run data modify storage mechanization:temp obj set from block ~ ~ ~ Items[11]
execute if score #rng.out mechanization.data matches 12 run data modify storage mechanization:temp obj set from block ~ ~ ~ Items[12]
execute if score #rng.out mechanization.data matches 13 run data modify storage mechanization:temp obj set from block ~ ~ ~ Items[13]
execute if score #rng.out mechanization.data matches 14 run data modify storage mechanization:temp obj set from block ~ ~ ~ Items[14]
execute if score #rng.out mechanization.data matches 15 run data modify storage mechanization:temp obj set from block ~ ~ ~ Items[15]
execute if score #rng.out mechanization.data matches 16 run data modify storage mechanization:temp obj set from block ~ ~ ~ Items[16]
execute if score #rng.out mechanization.data matches 17 run data modify storage mechanization:temp obj set from block ~ ~ ~ Items[17]
execute if score #rng.out mechanization.data matches 18 run data modify storage mechanization:temp obj set from block ~ ~ ~ Items[18]
execute if score #rng.out mechanization.data matches 19 run data modify storage mechanization:temp obj set from block ~ ~ ~ Items[19]
execute if score #rng.out mechanization.data matches 20 run data modify storage mechanization:temp obj set from block ~ ~ ~ Items[20]
execute if score #rng.out mechanization.data matches 21 run data modify storage mechanization:temp obj set from block ~ ~ ~ Items[21]
execute if score #rng.out mechanization.data matches 22 run data modify storage mechanization:temp obj set from block ~ ~ ~ Items[22]
execute if score #rng.out mechanization.data matches 23 run data modify storage mechanization:temp obj set from block ~ ~ ~ Items[23]
execute if score #rng.out mechanization.data matches 24 run data modify storage mechanization:temp obj set from block ~ ~ ~ Items[24]
execute if score #rng.out mechanization.data matches 25 run data modify storage mechanization:temp obj set from block ~ ~ ~ Items[25]
execute if score #rng.out mechanization.data matches 26 run data modify storage mechanization:temp obj set from block ~ ~ ~ Items[26]
execute if score #rng.out mechanization.data matches 27 run data modify storage mechanization:temp obj set from block ~ ~ ~ Items[27]

# play record

# custom discs
scoreboard players set #custom_disc mechanization.data 0

execute if data storage mechanization:temp obj.tag.tcc{id:"charged_music_disc"} run function mechanization:compat/tcc/charged_music_disc
execute if data storage mechanization:temp obj.tag.oa run function mechanization:compat/ocean_additions/play_music_disc
execute if data storage mechanization:temp obj.tag.manic run function mechanization:compat/manic/play_music_disc

execute if data storage mechanization:temp obj.tag.mechanization{id:"music_disc_end_of_the_world"} run playsound mechanization:assembly.music.end_of_the_world record @a ~ ~ ~ 6
execute if data storage mechanization:temp obj.tag.mechanization{id:"music_disc_end_of_the_world"} store success score #custom_disc mechanization.data run title @a[distance=..32] actionbar [{"translate":"mech.block.auto_jukebox.switch","with":[{"translate":"mech.item.disc_end_of_the_world"}],"color":"light_purple"}]

execute if data storage mechanization:temp obj.tag.mechanization{id:"music_disc_hyperspace"} run playsound mechanization:assembly.music.hyperspace record @a ~ ~ ~ 6
execute if data storage mechanization:temp obj.tag.mechanization{id:"music_disc_hyperspace"} store success score #custom_disc mechanization.data run title @a[distance=..32] actionbar [{"translate":"mech.block.auto_jukebox.switch","with":[{"translate":"mech.item.disc_hyperspace"}],"color":"light_purple"}]

execute if data storage mechanization:temp obj.tag.mechanization{id:"music_disc_money_for_nothing"} run playsound mechanization:assembly.music.money_for_nothing record @a ~ ~ ~ 6
execute if data storage mechanization:temp obj.tag.mechanization{id:"music_disc_money_for_nothing"} store success score #custom_disc mechanization.data run title @a[distance=..32] actionbar [{"translate":"mech.block.auto_jukebox.switch","with":[{"translate":"mech.item.disc_money_for_nothing"}],"color":"light_purple"}]

execute if data storage mechanization:temp obj.tag.mechanization{id:"music_disc_wanderer"} run playsound mechanization:assembly.music.wanderer record @a ~ ~ ~ 6
execute if data storage mechanization:temp obj.tag.mechanization{id:"music_disc_wanderer"} store success score #custom_disc mechanization.data run title @a[distance=..32] actionbar [{"translate":"mech.block.auto_jukebox.switch","with":[{"translate":"mech.item.disc_wanderer"}],"color":"light_purple"}]

execute if data storage mechanization:temp obj.tag.mechanization{id:"music_disc_stranger_think"} run playsound mechanization:assembly.music.stranger_think record @a ~ ~ ~ 6
execute if data storage mechanization:temp obj.tag.mechanization{id:"music_disc_stranger_think"} store success score #custom_disc mechanization.data run title @a[distance=..32] actionbar [{"translate":"mech.block.auto_jukebox.switch","with":[{"translate":"mech.item.disc_stranger_think"}],"color":"light_purple"}]

execute if data storage mechanization:temp obj.tag.mechanization{id:"music_disc_atomic_amnesia"} run playsound mechanization:assembly.music.atomic_amnesia record @a ~ ~ ~ 6
execute if data storage mechanization:temp obj.tag.mechanization{id:"music_disc_atomic_amnesia"} store success score #custom_disc mechanization.data run title @a[distance=..32] actionbar [{"translate":"mech.block.auto_jukebox.switch","with":[{"translate":"mech.item.disc_atomic_amnesia"}],"color":"light_purple"}]

# vanilla discs
execute if score #custom_disc mechanization.data matches 0 if data storage mechanization:temp obj{id:"minecraft:music_disc_ward"} run playsound minecraft:music_disc.ward record @a ~ ~ ~ 6
execute if score #custom_disc mechanization.data matches 0 if data storage mechanization:temp obj{id:"minecraft:music_disc_ward"} run title @a[distance=..32] actionbar ["",{"translate":"mech.block.auto_jukebox.switch","with":["C418 - Ward"],"color":"light_purple"}]

execute if score #custom_disc mechanization.data matches 0 if data storage mechanization:temp obj{id:"minecraft:music_disc_13"} run playsound minecraft:music_disc.13 record @a ~ ~ ~ 6
execute if score #custom_disc mechanization.data matches 0 if data storage mechanization:temp obj{id:"minecraft:music_disc_13"} run title @a[distance=..32] actionbar ["",{"translate":"mech.block.auto_jukebox.switch","with":["C418 - 13"],"color":"light_purple"}]

execute if score #custom_disc mechanization.data matches 0 if data storage mechanization:temp obj{id:"minecraft:music_disc_cat"} run playsound minecraft:music_disc.cat record @a ~ ~ ~ 6
execute if score #custom_disc mechanization.data matches 0 if data storage mechanization:temp obj{id:"minecraft:music_disc_cat"} run title @a[distance=..32] actionbar ["",{"translate":"mech.block.auto_jukebox.switch","with":["C418 - Cat"],"color":"light_purple"}]

execute if score #custom_disc mechanization.data matches 0 if data storage mechanization:temp obj{id:"minecraft:music_disc_blocks"} run playsound minecraft:music_disc.blocks record @a ~ ~ ~ 6
execute if score #custom_disc mechanization.data matches 0 if data storage mechanization:temp obj{id:"minecraft:music_disc_blocks"} run title @a[distance=..32] actionbar ["",{"translate":"mech.block.auto_jukebox.switch","with":["C418 - Blocks"],"color":"light_purple"}]

execute if score #custom_disc mechanization.data matches 0 if data storage mechanization:temp obj{id:"minecraft:music_disc_chirp"} run playsound minecraft:music_disc.chirp record @a ~ ~ ~ 6
execute if score #custom_disc mechanization.data matches 0 if data storage mechanization:temp obj{id:"minecraft:music_disc_chirp"} run title @a[distance=..32] actionbar ["",{"translate":"mech.block.auto_jukebox.switch","with":["C418 - Chirp"],"color":"light_purple"}]

execute if score #custom_disc mechanization.data matches 0 if data storage mechanization:temp obj{id:"minecraft:music_disc_far"} run playsound minecraft:music_disc.far record @a ~ ~ ~ 6
execute if score #custom_disc mechanization.data matches 0 if data storage mechanization:temp obj{id:"minecraft:music_disc_far"} run title @a[distance=..32] actionbar ["",{"translate":"mech.block.auto_jukebox.switch","with":["C418 - Far"],"color":"light_purple"}]

execute if score #custom_disc mechanization.data matches 0 if data storage mechanization:temp obj{id:"minecraft:music_disc_mall"} run playsound minecraft:music_disc.mall record @a ~ ~ ~ 6
execute if score #custom_disc mechanization.data matches 0 if data storage mechanization:temp obj{id:"minecraft:music_disc_mall"} run title @a[distance=..32] actionbar ["",{"translate":"mech.block.auto_jukebox.switch","with":["C418 - Mall"],"color":"light_purple"}]

execute if score #custom_disc mechanization.data matches 0 if data storage mechanization:temp obj{id:"minecraft:music_disc_mellohi"} run playsound minecraft:music_disc.mellohi record @a ~ ~ ~ 6
execute if score #custom_disc mechanization.data matches 0 if data storage mechanization:temp obj{id:"minecraft:music_disc_mellohi"} run title @a[distance=..32] actionbar ["",{"translate":"mech.block.auto_jukebox.switch","with":["C418 - Mellohi"],"color":"light_purple"}]

execute if score #custom_disc mechanization.data matches 0 if data storage mechanization:temp obj{id:"minecraft:music_disc_stal"} run playsound minecraft:music_disc.stal record @a ~ ~ ~ 6
execute if score #custom_disc mechanization.data matches 0 if data storage mechanization:temp obj{id:"minecraft:music_disc_stal"} run title @a[distance=..32] actionbar ["",{"translate":"mech.block.auto_jukebox.switch","with":["C418 - Stal"],"color":"light_purple"}]

execute if score #custom_disc mechanization.data matches 0 if data storage mechanization:temp obj{id:"minecraft:music_disc_strad"} run playsound minecraft:music_disc.strad record @a ~ ~ ~ 6
execute if score #custom_disc mechanization.data matches 0 if data storage mechanization:temp obj{id:"minecraft:music_disc_strad"} run title @a[distance=..32] actionbar ["",{"translate":"mech.block.auto_jukebox.switch","with":["C418 - Strad"],"color":"light_purple"}]

execute if score #custom_disc mechanization.data matches 0 if data storage mechanization:temp obj{id:"minecraft:music_disc_11"} run playsound minecraft:music_disc.11 record @a ~ ~ ~ 6
execute if score #custom_disc mechanization.data matches 0 if data storage mechanization:temp obj{id:"minecraft:music_disc_11"} run title @a[distance=..32] actionbar ["",{"translate":"mech.block.auto_jukebox.switch","with":["C418 - 11"],"color":"light_purple"}]

execute if score #custom_disc mechanization.data matches 0 if data storage mechanization:temp obj{id:"minecraft:music_disc_wait"} run playsound minecraft:music_disc.wait record @a ~ ~ ~ 6
execute if score #custom_disc mechanization.data matches 0 if data storage mechanization:temp obj{id:"minecraft:music_disc_wait"} run title @a[distance=..32] actionbar ["",{"translate":"mech.block.auto_jukebox.switch","with":["C418 - Wait"],"color":"light_purple"}]

execute if score #custom_disc mechanization.data matches 0 if data storage mechanization:temp obj{id:"minecraft:music_disc_pigstep"} run playsound minecraft:music_disc.pigstep record @a ~ ~ ~ 6
execute if score #custom_disc mechanization.data matches 0 if data storage mechanization:temp obj{id:"minecraft:music_disc_pigstep"} run title @a[distance=..32] actionbar [{"translate":"mech.block.auto_jukebox.switch","with":["Lena Raine - Pigstep"],"color":"light_purple"}]

execute if score #custom_disc mechanization.data matches 0 if data storage mechanization:temp obj{id:"minecraft:music_disc_otherside"} run playsound minecraft:music_disc.otherside record @a ~ ~ ~ 6
execute if score #custom_disc mechanization.data matches 0 if data storage mechanization:temp obj{id:"minecraft:music_disc_otherside"} run title @a[distance=..32] actionbar [{"translate":"mech.block.auto_jukebox.switch","with":["Lena Raine - Otherside"],"color":"light_purple"}]

execute if score #custom_disc mechanization.data matches 0 if data storage mechanization:temp obj{id:"minecraft:music_disc_5"} run playsound minecraft:music_disc.5 record @a ~ ~ ~ 6
execute if score #custom_disc mechanization.data matches 0 if data storage mechanization:temp obj{id:"minecraft:music_disc_5"} run title @a[distance=..32] actionbar [{"translate":"mech.block.auto_jukebox.switch","with":["Samuel Aberg - 5"],"color":"light_purple"}]
