execute if entity @s[scores={mech_data=0}] if block ~ ~ ~ minecraft:ender_chest[facing=south] store success score @s mech_data run setblock ~ ~ ~ minecraft:ender_chest[facing=west]
execute if entity @s[scores={mech_data=0}] if block ~ ~ ~ minecraft:ender_chest[facing=west] store success score @s mech_data run setblock ~ ~ ~ minecraft:ender_chest[facing=north]
execute if entity @s[scores={mech_data=0}] if block ~ ~ ~ minecraft:ender_chest[facing=north] store success score @s mech_data run setblock ~ ~ ~ minecraft:ender_chest[facing=east]
execute if entity @s[scores={mech_data=0}] if block ~ ~ ~ minecraft:ender_chest[facing=east] store success score @s mech_data run setblock ~ ~ ~ minecraft:ender_chest[facing=south]