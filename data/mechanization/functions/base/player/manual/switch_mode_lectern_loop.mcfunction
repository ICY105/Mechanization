
execute if block ~ ~ ~ minecraft:lectern if data block ~ ~ ~ Book.tag.mechanization{id:"mechanical_manual"} run function mechanization:base/player/manual/switch_mode_lectern_run

scoreboard players remove #loop mechanization.data 1
execute if score #loop mechanization.data matches 1.. positioned ^ ^ ^0.05 run function mechanization:base/player/manual/switch_mode_lectern_loop

