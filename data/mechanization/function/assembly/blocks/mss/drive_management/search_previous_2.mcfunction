
scoreboard players remove #search mechanization.data 1
execute unless score #drive_bay mechanization.data = #search mechanization.data run return 0

execute if score #drive_item mechanization.data matches 9 unless items block ~ ~ ~ container.8 *[minecraft:custom_data~{mechanization:{id:"mss_storage_drive"}}] run scoreboard players remove #drive_item mechanization.data 1
execute if score #drive_item mechanization.data matches 8 unless items block ~ ~ ~ container.7 *[minecraft:custom_data~{mechanization:{id:"mss_storage_drive"}}] run scoreboard players remove #drive_item mechanization.data 1
execute if score #drive_item mechanization.data matches 7 unless items block ~ ~ ~ container.6 *[minecraft:custom_data~{mechanization:{id:"mss_storage_drive"}}] run scoreboard players remove #drive_item mechanization.data 1
execute if score #drive_item mechanization.data matches 6 unless items block ~ ~ ~ container.5 *[minecraft:custom_data~{mechanization:{id:"mss_storage_drive"}}] run scoreboard players remove #drive_item mechanization.data 1
execute if score #drive_item mechanization.data matches 5 unless items block ~ ~ ~ container.4 *[minecraft:custom_data~{mechanization:{id:"mss_storage_drive"}}] run scoreboard players remove #drive_item mechanization.data 1
execute if score #drive_item mechanization.data matches 4 unless items block ~ ~ ~ container.3 *[minecraft:custom_data~{mechanization:{id:"mss_storage_drive"}}] run scoreboard players remove #drive_item mechanization.data 1
execute if score #drive_item mechanization.data matches 3 unless items block ~ ~ ~ container.2 *[minecraft:custom_data~{mechanization:{id:"mss_storage_drive"}}] run scoreboard players remove #drive_item mechanization.data 1
execute if score #drive_item mechanization.data matches 2 unless items block ~ ~ ~ container.1 *[minecraft:custom_data~{mechanization:{id:"mss_storage_drive"}}] run scoreboard players remove #drive_item mechanization.data 1
execute if score #drive_item mechanization.data matches 1 unless items block ~ ~ ~ container.0 *[minecraft:custom_data~{mechanization:{id:"mss_storage_drive"}}] run scoreboard players remove #drive_item mechanization.data 1

execute if score #drive_item mechanization.data matches ..0 run scoreboard players remove #drive_bay mechanization.data 1
execute if score #drive_item mechanization.data matches ..0 run scoreboard players set #drive_item mechanization.data 9

