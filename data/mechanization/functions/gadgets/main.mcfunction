
# Machine Ticks
execute if score #timer.20 mechanization.data matches 7 as @e[type=minecraft:item_display,tag=mechanization.charging_station] at @s run function mechanization:gadgets/blocks/charging_station/charging_station
execute if score #timer.20 mechanization.data matches 8 as @e[type=minecraft:item_display,tag=mechanization.tinker_table,tag=!mechanization.active] at @s run function mechanization:gadgets/blocks/tinker_table/tinker_table
