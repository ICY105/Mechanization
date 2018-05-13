data merge entity @s {Fire:32676}

#load scoreboard values
execute unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s ArmorItems[3].tag.mech_power
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s ArmorItems[3].tag.mech_gridid

#main
scoreboard players set temp_0 mech_data 0
execute if block ~ ~ ~ minecraft:furnace{Items:[{Slot:0b}]} run scoreboard players set temp_0 mech_data 1
execute if score temp_0 mech_data matches 1 if entity @s[scores={mech_power=20..},tag=!mech_upgraded] run scoreboard players remove @s mech_power 20
execute if score temp_0 mech_data matches 1 if entity @s[scores={mech_power=80..},tag=mech_upgraded] run scoreboard players remove @s mech_power 80

execute if score temp_0 mech_data matches 1 if entity @s[scores={mech_power=20..},tag=!mech_upgraded] run data merge block ~ ~ ~ {BurnTime:200,CookTimeTotal:150}
execute if score temp_0 mech_data matches 1 if entity @s[scores={mech_power=80..},tag=mech_upgraded] run data merge block ~ ~ ~ {BurnTime:200,CookTime:1,CookTimeTotal:19}

execute if score temp_0 mech_data matches 1 if entity @s[scores={mech_power=20..}] run playsound mechanization:machines.electric_furnace block @a[distance=..16] ~ ~ ~ 0.3 1
execute if score temp_0 mech_data matches 1 if entity @s[scores={mech_power=..19}] run data merge block ~ ~ ~ {BurnTime:0}

execute if score temp_0 mech_data matches 0 store success entity @s ArmorItems[3].tag.Damage short 43 if entity @s
execute if score temp_0 mech_data matches 1 if entity @s[scores={mech_power=20..}] store success entity @s ArmorItems[3].tag.Damage short 44 if entity @s

#store scoreboard values
execute store result entity @s ArmorItems[3].tag.mech_power int 1 run scoreboard players get @s mech_power
execute store result entity @s ArmorItems[3].tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

#cleanup
execute unless block ~ ~ ~ furnace run function give:mech_machines/machine_frame_tier_1
execute unless block ~ ~ ~ furnace run kill @s
