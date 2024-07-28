
scoreboard players set #count.0 mechanization.data 0
execute as @e[type=minecraft:item_display,tag=mechanization.drive_bay,distance=..16] at @s run function mechanization:assembly/blocks/mss/get_drive/count_drives

execute if score @s mechanization.data > #count.0 mechanization.data run scoreboard players set @s mechanization.data 1
execute if score @s mechanization.data matches ..0 run scoreboard players operation @s mechanization.data = #count.0 mechanization.data

data modify storage mechanization:networks mss.item set value {item:{},drive:[]}
scoreboard players operation #count.0 mechanization.data = @s mechanization.data
execute as @e[type=minecraft:item_display,tag=mechanization.drive_bay,distance=..16,sort=nearest] at @s if score #count.0 mechanization.data matches 1.. run function mechanization:assembly/blocks/mss/get_drive/get_drive
