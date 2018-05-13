
#Charging Station
execute as @e[tag=mech_charging_station,distance=..0.5] run function give:mech_gadgets/charging_station
execute as @e[tag=mech_charging_station,distance=..0.5] at @s run setblock ~ ~ ~ minecraft:air replace
kill @e[tag=mech_charging_station,distance=..0.5]

#Tinker Table
execute as @e[tag=mech_tinker_table,distance=..0.5] run function give:mech_gadgets/tinker_table
execute as @e[tag=mech_tinker_table,distance=..0.5] at @s run setblock ~ ~ ~ minecraft:air replace
kill @e[tag=mech_tinker_table,distance=..0.5]

#xp tank
execute as @e[tag=mech_xp_tank,distance=..0.5] run function give:mech_gadgets/xp_tank
execute as @e[tag=mech_xp_tank,distance=..0.5] store result entity @e[type=item,sort=nearest,limit=1] Item.tag.mech_xp int 1 run scoreboard players get @s mech_data
execute as @e[tag=mech_xp_tank,distance=..0.5] at @s run setblock ~ ~ ~ minecraft:air replace
kill @e[tag=mech_xp_tank,distance=..0.5]

