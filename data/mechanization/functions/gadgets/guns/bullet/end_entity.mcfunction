
scoreboard players set $player.in_1 du_data 0
execute if entity @s[type=player] run function du:player/add_damage

execute if entity @s[type=!player] store result score temp_1 mech_data run data get entity @s Health 10
execute if entity @s[type=!player] run scoreboard players operation temp_1 mech_data -= $player.in_0 du_data
execute if entity @s[type=!player] store result entity @s Health float 0.1 run scoreboard players get temp_1 mech_data

effect give @s[type=!minecraft:player] minecraft:instant_damage 1 0 true
effect give @s[type=!minecraft:player] minecraft:instant_health 1 0 true


