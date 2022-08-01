
execute store result score #count.2 mechanization.data run data get block ~ ~ ~ Items
execute if score #count.0 mechanization.data <= #count.2 mechanization.data run function mechanization:assembly/machines/mss/get_drive/get_drive_2 
scoreboard players operation #count.0 mechanization.data -= #count.2 mechanization.data
