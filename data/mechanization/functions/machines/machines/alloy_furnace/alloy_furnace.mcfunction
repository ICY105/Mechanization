data merge entity @s {Fire:32676}

#load scoreboard values
execute unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s ArmorItems[3].tag.mech_power
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s ArmorItems[3].tag.mech_gridid

#main
scoreboard players set @s[tag=!mech_active] mech_timer 0
execute if entity @s[tag=!mech_active,scores={mech_power=180..}] run function mechanization:machines/machines/alloy_furnace/check_start_normal

scoreboard players add @s[tag=mech_active] mech_timer 1
execute if entity @s[tag=mech_active] run playsound mechanization:machines.electric_furnace block @a[distance=..16] ~ ~ ~ 0.3 1

execute store success entity @s[tag=!mech_active] ArmorItems[3].tag.Damage short 48 if entity @s
execute store success entity @s[tag=mech_active] ArmorItems[3].tag.Damage short 49 if entity @s

execute if entity @s[tag=mech_active,scores={mech_timer=6..}] run function mechanization:machines/machines/alloy_furnace/check_end_normal
execute if entity @s[tag=mech_active,tag=mech_upgraded,scores={mech_timer=3..}] run function mechanization:machines/machines/alloy_furnace/check_end_normal

#store scoreboard values
execute store result entity @s ArmorItems[3].tag.mech_power int 1 run scoreboard players get @s mech_power
execute store result entity @s ArmorItems[3].tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

#cleanup
execute unless block ~ ~ ~ dropper run function give:mech_machines/machine_frame_tier_1
execute unless block ~ ~ ~ dropper run kill @s
