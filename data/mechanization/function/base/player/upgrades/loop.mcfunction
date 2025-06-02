
execute align xyz unless block ~ ~ ~ #mechanization:raytrace_tools run function mechanization:base/player/upgrades/run
execute if score #loop mechanization.data matches 0.. align xyz if entity @e[dx=0,dy=0,dz=0,tag=mechanization.upgradable] run function mechanization:base/player/upgrades/run

scoreboard players remove #loop mechanization.data 1
execute if block ~ ~ ~ #mechanization:raytrace_tools if score #loop mechanization.data matches 1.. positioned ^ ^ ^0.05 run function mechanization:base/player/upgrades/loop
