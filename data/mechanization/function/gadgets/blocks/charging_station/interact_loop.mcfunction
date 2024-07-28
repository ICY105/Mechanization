
execute align xyz as @e[type=minecraft:item_display,tag=mechanization.charging_station,dx=0,dy=0,dz=0,limit=1] run function mechanization:gadgets/blocks/charging_station/interact_run

scoreboard players remove #loop mechanization.data 1
execute if score #loop mechanization.data matches 0.. positioned ^ ^ ^0.05 run function mechanization:gadgets/blocks/charging_station/interact_loop

