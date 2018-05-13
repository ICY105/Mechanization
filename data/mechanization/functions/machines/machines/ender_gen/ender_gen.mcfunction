data merge entity @s {Fire:32676}

#load scoreboard values
execute unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s ArmorItems[3].tag.mech_power
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s ArmorItems[3].tag.mech_gridid
execute unless score @s mech_data matches -2147483648.. store result score @s mech_data run data get entity @s ArmorItems[3].tag.mech_data

#main
execute if entity @s[scores={mech_power=..4000,mech_data=..0},tag=!mech_upgraded] run function mechanization:machines/machines/ender_gen/fuel_normal
execute if entity @s[scores={mech_power=..4000,mech_data=..0},tag=mech_upgraded] run function mechanization:machines/machines/ender_gen/fuel_upgraded

execute store success entity @s ArmorItems[3].tag.Damage short 70 if entity @s
execute if entity @s[scores={mech_power=..4000,mech_data=1..}] store success entity @s ArmorItems[3].tag.Damage short 71 if entity @s

execute if entity @s[scores={mech_power=..4000,mech_data=1..}] run playsound mechanization:machines.ender_generator block @a[distance=..16] ~ ~ ~ 0.2 1
execute if entity @s[scores={mech_power=..4000,mech_data=1..}] run scoreboard players add @s mech_power 32
execute if entity @s[scores={mech_power=..4000,mech_data=1..}] run scoreboard players remove @s mech_data 1

#store scoreboard values
execute store result entity @s ArmorItems[3].tag.mech_power int 1 run scoreboard players get @s mech_power
execute store result entity @s ArmorItems[3].tag.mech_gridid int 1 run scoreboard players get @s mech_gridid
execute store result entity @s ArmorItems[3].tag.mech_data int 1 run scoreboard players get @s mech_data

#cleanup
execute unless block ~ ~ ~ furnace run function give:mech_machines/machine_frame_tier_3
execute unless block ~ ~ ~ furnace run kill @s
