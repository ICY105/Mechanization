
execute if block ~ ~ ~ #mechanization:inv_27 run function mechanization:assembly/player/item_filter/apply_filter 

# loop
scoreboard players remove #loop mechanization.data 1
execute if score #loop mechanization.data matches 1.. positioned ^ ^ ^0.05 run function mechanization:assembly/player/item_filter/find_chest
