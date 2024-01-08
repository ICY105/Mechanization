
# Machine Ticks
execute if score #timer.20 mechanization.data matches 3 as @e[type=minecraft:item_display,tag=mechanization.heat_exchanger] at @s run function mechanization:nuclear/blocks/heat_exchanger/heat_exchanger
execute if score #timer.20 mechanization.data matches 4 as @e[type=minecraft:item_display,tag=mechanization.centrifuge] at @s run function mechanization:nuclear/blocks/centrifuge/centrifuge

execute if score #timer.100 mechanization.data matches 0 as @e[type=minecraft:item_display,tag=mechanization.reactor_core] at @s run function mechanization:nuclear/blocks/reactor_core/reactor_core
execute if score #timer.100 mechanization.data matches 10 as @e[type=minecraft:item_display,tag=mechanization.coolant_cell] at @s run function mechanization:nuclear/blocks/coolant_cell/coolant_cell
execute if score #timer.100 mechanization.data matches 20 as @e[type=minecraft:item_display,tag=mechanization.steam_condenser] at @s run function mechanization:nuclear/blocks/steam_condenser/steam_condenser
execute if score #timer.100 mechanization.data matches 30 as @e[type=minecraft:item_display,tag=mechanization.moderator_cell] at @s run function mechanization:nuclear/blocks/moderator_cell/moderator_cell
execute if score #timer.100 mechanization.data matches 40 as @e[type=minecraft:item_display,tag=mechanization.control_rod] at @s run function mechanization:nuclear/blocks/control_rod/control_rod
