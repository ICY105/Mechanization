
# Machine Ticks
execute if score #timer.100 mechanization.data matches 0 as @e[type=minecraft:item_display,tag=mechanization.reactor_core] at @s run function mechanization:nuclear/blocks/reactor_core/reactor_core
