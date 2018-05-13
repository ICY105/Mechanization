data merge entity @s {Fire:32676}

#load scoreboard values
execute unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s ArmorItems[3].tag.mech_power
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s ArmorItems[3].tag.mech_gridid

#main
scoreboard players set temp_0 mech_data 0
execute store success score temp_0 mech_data if block ~ ~ ~ minecraft:furnace[lit=true] if entity @s
execute if score temp_0 mech_data matches 1 if entity @s[scores={mech_power=..2000},tag=!mech_upgraded] run scoreboard players add @s mech_power 16
execute if score temp_0 mech_data matches 1 if entity @s[scores={mech_power=..2000},tag=mech_upgraded] run scoreboard players add @s mech_power 24
execute if score temp_0 mech_data matches 1 if entity @s[scores={mech_power=..2000}] run playsound minecraft:block.fire.ambient block @a[distance=..6] ~ ~ ~ 0.5 1
execute if score temp_0 mech_data matches 1 if entity @s[scores={mech_power=..2000}] store success entity @s ArmorItems[3].tag.Damage short 39 if entity @s
execute if score temp_0 mech_data matches 0 store success entity @s ArmorItems[3].tag.Damage short 53 if entity @s
data merge block ~ ~ ~ {CookTime:-1000}

#store scoreboard values
execute store result entity @s ArmorItems[3].tag.mech_power int 1 run scoreboard players get @s mech_power
execute store result entity @s ArmorItems[3].tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

#cleanup
execute unless block ~ ~ ~ furnace run function give:mech_machines/machine_frame_tier_1
execute unless block ~ ~ ~ furnace run kill @s
