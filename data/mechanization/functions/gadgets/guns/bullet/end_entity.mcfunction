
scoreboard players add @s du_health 0
scoreboard players set $player.in_1 du_data 0

scoreboard players operation $player.in_0 du_data = in_0 mech_data
execute if entity @s[type=player] run function du:player/add_damage

execute if entity @s[type=!player] run scoreboard players operation @s du_health += in_0 mech_data

scoreboard players set $player.in_0 du_data 0
execute if entity @s[type=#du:undead] run function mechanization:gadgets/guns/bullet/damage_undead

execute if score $player.in_0 du_data matches 0 if entity @s[type=!player] run function du:player/damage