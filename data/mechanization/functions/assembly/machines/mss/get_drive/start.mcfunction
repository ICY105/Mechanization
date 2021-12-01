
scoreboard players set in_0 mechanization.data 0
execute as @e[type=minecraft:glow_item_frame,tag=mech_drive_bay,distance=..16] at @s run function mechanization:assembly/machines/mss/get_drive/count_drives

execute if score @s mechanization.data > in_0 mechanization.data run scoreboard players set @s mechanization.data 1
execute if score @s mechanization.data matches ..0 run scoreboard players operation @s mechanization.data = in_0 mech_data

data modify storage mechanization:networks mss.item set value {item:{},drive:[]}
scoreboard players operation in_0 mechanization.data = @s mech_data
execute as @e[type=minecraft:glow_item_frame,tag=mech_drive_bay,distance=..16,sort=nearest] at @s if score in_0 mechanization.data matches 1.. run function mechanization:assembly/machines/mss/get_drive/get_drive
