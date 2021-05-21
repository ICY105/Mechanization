
#load scoreboard values
execute unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s ArmorItems[3].tag.mech_power
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s ArmorItems[3].tag.mech_gridid
execute unless score @s mech_data matches -2147483648.. store result score @s mech_data run data get entity @s ArmorItems[3].tag.mech_data

#main
data merge entity @s {Fire:32676}
item replace block ~ ~ ~ container.1 with minecraft:structure_block{CustomModelData:6422203,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}

scoreboard players set @s[tag=!mech_active] mech_timer 0
execute if entity @s[tag=!mech_active,tag=!mech_upgraded,scores={mech_power=360..}] run function mechanization:machines/machines/grinder/input
execute if entity @s[tag=!mech_active,tag=mech_upgraded,tag=!mech_upgrade_nether,tag=!mech_upgrade_ender,scores={mech_power=360..}] run function mechanization:machines/machines/grinder/input_upgrade
execute if entity @s[tag=!mech_active,tag=mech_upgrade_nether,scores={mech_power=360..}] run function mechanization:machines/machines/grinder/input_upgrade_nether
execute if entity @s[tag=!mech_active,tag=mech_upgrade_ender,scores={mech_power=360..}] run function mechanization:machines/machines/grinder/input_upgrade_ender

scoreboard players add @s[tag=mech_active] mech_timer 1
execute if entity @s[tag=mech_active] run playsound mechanization:machines.grinder block @a[distance=..16] ~ ~ ~ 0.75 0.9

execute store success entity @s[tag=!mech_active] ArmorItems[3].tag.CustomModelData int 6422009 if entity @s
execute store success entity @s[tag=mech_active] ArmorItems[3].tag.CustomModelData int 6422907 if entity @s

execute if entity @s[tag=mech_active,tag=!mech_upgraded,scores={mech_timer=5..}] run function mechanization:machines/machines/grinder/output
execute if entity @s[tag=mech_active,tag=mech_upgraded,tag=!mech_upgrade_nether,tag=!mech_upgrade_ender,scores={mech_timer=5..}] run function mechanization:machines/machines/grinder/output_upgrade
execute if entity @s[tag=mech_active,tag=mech_upgrade_nether,scores={mech_timer=5..}] run function mechanization:machines/machines/grinder/output_upgrade_nether
execute if entity @s[tag=mech_active,tag=mech_upgrade_ender,scores={mech_timer=5..}] run function mechanization:machines/machines/grinder/output_upgrade_ender

execute if entity @s[tag=mech_active] unless block ~ ~ ~ furnace{Items:[{Slot:0b}]} run tag @s remove mech_active

#store scoreboard values
execute store result entity @s ArmorItems[3].tag.mech_power int 1 run scoreboard players get @s mech_power
execute store result entity @s ArmorItems[3].tag.mech_gridid int 1 run scoreboard players get @s mech_gridid
execute store result entity @s ArmorItems[3].tag.mech_data int 1 run scoreboard players get @s mech_data

#cleanup
execute unless block ~ ~ ~ furnace run function mechanization:base/utils/break_machine_t1
