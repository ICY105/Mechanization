
#load scoreboard values
execute store result score temp_0 mech_data run data get entity @s ArmorItems[3].tag.mech_gridid
scoreboard players operation temp_1 mech_data = @s du_uuid
scoreboard players operation temp_2 mech_data = @s mech_gridid
execute unless score temp_0 mech_data = temp_2 mech_data as @e[tag=mech_tele] if score @s du_uuid = temp_1 mech_data run scoreboard players operation @s mech_gridid = temp_2 mech_data

execute unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s ArmorItems[3].tag.mech_power
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s ArmorItems[3].tag.mech_gridid
execute unless score @s du_uuid matches -2147483648.. store result score @s du_uuid run data get entity @s ArmorItems[3].tag.du_uuid

#main
scoreboard players set temp_0 mech_data 0
execute positioned ~ ~1 ~ if entity @p[distance=..1] run scoreboard players set temp_0 mech_data 1

execute if score temp_0 mech_data matches 0 if score @s mech_timer matches 1..5 run stopsound @a[distance=..16] block mechanization:machines.teleporter_charging
execute if score temp_0 mech_data matches 0 run scoreboard players set @s mech_timer 0
execute if score temp_0 mech_data matches 1 if score @s mech_power matches 1024.. run scoreboard players add @s mech_timer 1

execute if score @s mech_timer matches 2 run playsound mechanization:machines.teleporter_charging block @a[distance=..16] ~ ~ ~

scoreboard players operation temp_0 mech_data = @s mech_gridid
scoreboard players operation temp_1 mech_data = @s du_uuid
execute store result score temp_2 mech_data run data get entity @s Dimension
execute if score @s mech_timer matches 6 run tag @a[distance=..1] add mech_teleporting
execute if score @s mech_timer matches 6 if entity @s[tag=!mech_upgraded] as @e[tag=mech_tele] if score @s mech_gridid = temp_0 mech_data if score @s mech_data = temp_2 mech_data unless score @s du_uuid = temp_1 mech_data run tag @s add mech_poss_tele
execute if score @s mech_timer matches 6 if entity @s[tag=mech_upgraded] as @e[tag=mech_tele] if score @s mech_gridid = temp_0 mech_data unless score @s du_uuid = temp_1 mech_data run tag @s add mech_poss_tele
execute if score @s mech_timer matches 6 as @e[tag=mech_poss_tele,limit=1,sort=random] at @s run function mechanization:machines/machines/teleporter/teleport
execute if score @s mech_timer matches 6 run tag @e[tag=mech_poss_tele] remove mech_poss_tele

execute if score @s mech_timer matches 6 as @a[tag=mech_teleporting] at @s positioned ~ ~-1 ~ run scoreboard players set @e[tag=mech_teleporter,distance=..1] mech_timer 7
execute if score @s mech_timer matches 6 at @p[tag=mech_teleporting] run playsound mechanization:machines.teleporter_boom block @a[distance=..16] ~ ~ ~
execute if score @s mech_timer matches 6 run tag @a remove mech_teleporting

execute if score @s mech_timer matches 6 run scoreboard players remove @s mech_power 1024

#store scoreboard values
execute store result entity @s ArmorItems[3].tag.mech_power int 1 run scoreboard players get @s mech_power
execute store result entity @s ArmorItems[3].tag.mech_gridid int 1 run scoreboard players get @s mech_gridid
execute store result entity @s ArmorItems[3].tag.du_uuid int 1 run scoreboard players get @s du_uuid

#cleanup
execute at @s unless block ~ ~ ~ barrier run function mechanization:machines/machines/teleporter/remove
