
## load scoreboard values
execute unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s ArmorItems[3].tag.mech_power
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s ArmorItems[3].tag.mech_gridid

### Main
data merge entity @s {Fire:32676}
replaceitem block ~ ~ ~ container.1 minecraft:structure_block{CustomModelData:6422202,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}

#get has item
scoreboard players set temp_0 mech_data 0
execute store result score temp_0 mech_data if block ~ ~ ~ minecraft:furnace{Items:[{Slot:0b}]}

#change burn & cooktime
execute if score temp_0 mech_data matches 1 if entity @s[scores={mech_power=20..},tag=!mech_upgraded] run data merge block ~ ~ ~ {BurnTime:200}
execute if score temp_0 mech_data matches 1 if entity @s[scores={mech_power=20..},tag=mech_upgraded,tag=!mech_upgrade_ender,tag=!mech_upgrade_nether] run data merge block ~ ~ ~ {BurnTime:200s,CookTimeTotal:150s}
execute if score temp_0 mech_data matches 1 if entity @s[scores={mech_power=20..},tag=mech_upgrade_ender] run data merge block ~ ~ ~ {BurnTime:200s,CookTimeTotal:100s}
execute if score temp_0 mech_data matches 1 if entity @s[scores={mech_power=200..},tag=mech_upgrade_nether] run data merge block ~ ~ ~ {BurnTime:200s,CookTime:1,CookTimeTotal:19s}

execute if score temp_0 mech_data matches 1 if entity @s[scores={mech_power=..19},tag=!mech_upgrade_nether] run data merge block ~ ~ ~ {BurnTime:1}
execute if score temp_0 mech_data matches 1 if entity @s[scores={mech_power=..199},tag=mech_upgrade_nether] run data merge block ~ ~ ~ {BurnTime:1}
execute if score temp_0 mech_data matches 0 if block ~ ~ ~ furnace[lit=true] run data merge block ~ ~ ~ {BurnTime:1}

#use power
execute if score temp_0 mech_data matches 1 if entity @s[scores={mech_power=20..},tag=!mech_upgrade_nether] run scoreboard players remove @s mech_power 20
execute if score temp_0 mech_data matches 1 if entity @s[scores={mech_power=100..},tag=mech_upgrade_nether] run scoreboard players remove @s mech_power 200

#display
execute if block ~ ~ ~ furnace[lit=false] unless block ~ ~ ~ furnace{BurnTime:0s} run function mechanization:base/utils/set_furnace_lit

execute if block ~ ~ ~ furnace[lit=false] store success entity @s ArmorItems[3].tag.CustomModelData int 6422003 if entity @s
execute if block ~ ~ ~ furnace[lit=true] store success entity @s ArmorItems[3].tag.CustomModelData int 6422905 if entity @s
execute if block ~ ~ ~ furnace[lit=true] run playsound mechanization:machines.electric_furnace block @a[distance=..16] ~ ~ ~ 0.75 1

## store scoreboard values
execute store result entity @s ArmorItems[3].tag.mech_power int 1 run scoreboard players get @s mech_power
execute store result entity @s ArmorItems[3].tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

## cleanup
execute unless block ~ ~ ~ furnace run function mechanization:base/utils/break_machine_t1
