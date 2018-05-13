data merge entity @s {Fire:32000s}

#load scoreboard values
execute unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s ArmorItems[3].tag.mech_power
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s ArmorItems[3].tag.mech_gridid

#main
execute if score @s mech_power matches 144.. if block ~ ~ ~ dropper{Items:[{Slot:1b},{Slot:7b}]} run function mechanization:assembly/machines/dye_machine/start
execute if entity @s[tag=mech_upgraded] if score @s mech_power matches 144.. if block ~ ~ ~ dropper{Items:[{Slot:1b},{Slot:7b}]} run function mechanization:assembly/machines/dye_machine/start

#store scoreboard values
execute store result entity @s ArmorItems[3].tag.mech_power int 1 run scoreboard players get @s mech_power
execute store result entity @s ArmorItems[3].tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

#cleanup
execute unless block ~ ~ ~ dropper run function give:mech_machines/machine_frame_tier_2
execute unless block ~ ~ ~ dropper run kill @s