data merge entity @s {Fire:32676}

#load scoreboard values
execute unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s ArmorItems[3].tag.mech_power
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s ArmorItems[3].tag.mech_gridid
execute unless score @s mech_data matches -2147483648.. store result score @s mech_data run data get entity @s ArmorItems[3].tag.mech_data

#main
scoreboard players set @s[tag=!mech_active] mech_timer 0
execute if entity @s[tag=!mech_active,tag=!mech_upgraded,scores={mech_power=360..}] run function mechanization:machines/machines/grinder/check_start_normal
execute if entity @s[tag=!mech_active,tag=mech_upgraded,scores={mech_power=360..}] run function mechanization:machines/machines/grinder/check_start_upgraded

scoreboard players add @s[tag=mech_active] mech_timer 1
execute if entity @s[tag=mech_active] run playsound mechanization:machines.grinder block @a[distance=..16] ~ ~ ~ 0.5 0.9

execute store success entity @s[tag=!mech_active] ArmorItems[3].tag.Damage short 60 if entity @s
execute store success entity @s[tag=mech_active] ArmorItems[3].tag.Damage short 61 if entity @s

execute if entity @s[tag=mech_active,scores={mech_timer=6..}] run function mechanization:machines/machines/grinder/check_end_normal
execute if entity @s[tag=mech_active,tag=mech_upgraded,scores={mech_timer=3..}] run function mechanization:machines/machines/grinder/check_end_upgraded

execute if entity @s[tag=mech_active] unless block ~ ~ ~ furnace{Items:[{Slot:0b}]} run tag @s remove mech_active

#store scoreboard values
execute store result entity @s ArmorItems[3].tag.mech_power int 1 run scoreboard players get @s mech_power
execute store result entity @s ArmorItems[3].tag.mech_gridid int 1 run scoreboard players get @s mech_gridid
execute store result entity @s ArmorItems[3].tag.mech_data int 1 run scoreboard players get @s mech_data

#cleanup
execute unless block ~ ~ ~ furnace run function give:mech_machines/machine_frame_tier_2
execute unless block ~ ~ ~ furnace run kill @s
