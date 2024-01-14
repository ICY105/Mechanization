
scoreboard players set #loop mechanization.data 120
playsound mechanization:base.wrench_break player @a ~ ~ ~
execute anchored eyes positioned ^ ^ ^ run function mechanization:base/player/wrench/loop
scoreboard players set #interaction mechanization.data 0
