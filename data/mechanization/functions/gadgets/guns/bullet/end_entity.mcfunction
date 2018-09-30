scoreboard players add @s du_health 0

scoreboard players operation in_0 du_data = in_0 mech_data
execute if entity @s[type=player] run function du:player/add_damage

execute if entity @s[type=!player] run scoreboard players operation @s du_health += in_0 mech_data
execute if entity @s[type=!player] run function du:player/damage