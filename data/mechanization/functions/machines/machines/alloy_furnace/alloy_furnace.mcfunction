
## load scoreboard values
execute unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s ArmorItems[3].tag.mech_power
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s ArmorItems[3].tag.mech_gridid

### Main
data merge entity @s {Fire:32676s}

#GUI blockers
execute unless data block ~ ~ ~ Items[{Slot:3b}] run replaceitem block ~ ~ ~ container.3 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
execute unless data block ~ ~ ~ Items[{Slot:4b}] run replaceitem block ~ ~ ~ container.4 minecraft:structure_block{CustomModelData:6422200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
execute unless data block ~ ~ ~ Items[{Slot:5b}] run replaceitem block ~ ~ ~ container.5 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
execute unless data block ~ ~ ~ Items[{Slot:6b}] run replaceitem block ~ ~ ~ container.6 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}
execute unless data block ~ ~ ~ Items[{Slot:8b}] run replaceitem block ~ ~ ~ container.8 minecraft:structure_block{CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}

#function
scoreboard players set @s[tag=!mech_active] mech_timer 0
scoreboard players add @s[tag=mech_active] mech_timer 1

execute if entity @s[tag=mech_active,tag=!mech_upgraded,scores={mech_timer=6..}] run function mechanization:machines/machines/alloy_furnace/output_normal
execute if entity @s[tag=mech_active,tag=mech_upgraded,scores={mech_timer=6..}] run function mechanization:machines/machines/alloy_furnace/output_upgrade

execute if entity @s[tag=!mech_active,tag=!mech_upgraded,scores={mech_power=180..}] run function mechanization:machines/machines/alloy_furnace/input_normal
execute if entity @s[tag=!mech_active,tag=mech_upgraded,scores={mech_power=180..}] run function mechanization:machines/machines/alloy_furnace/input_upgrade

#effects
execute store success entity @s[tag=!mech_active] ArmorItems[3].tag.CustomModelData int 6422000 if entity @s
execute store success entity @s[tag=mech_active] ArmorItems[3].tag.CustomModelData int 6422901 if entity @s
execute if entity @s[tag=mech_active] run playsound mechanization:machines.electric_furnace block @a[distance=..16] ~ ~ ~ 0.3 1

## store scoreboard values
execute store result entity @s ArmorItems[3].tag.mech_power int 1 run scoreboard players get @s mech_power
execute store result entity @s ArmorItems[3].tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

## cleanup
execute unless block ~ ~ ~ dropper run function mechanization:base/utils/break_machine_t1
