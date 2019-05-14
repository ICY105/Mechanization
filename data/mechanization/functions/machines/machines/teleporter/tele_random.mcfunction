
scoreboard players add @s du_data 1
execute if score @s du_data matches 1 run playsound mechanization:machines.teleporter_charging block @a ~ ~ ~ 1 1

execute if score @s du_data matches 5 run function mechanization:machines/machines/teleporter/tele_random_2
