scoreboard players add @s du_health 0

scoreboard players operation in_0 du_data = in_0 mech_data
execute if entity @s[type=player] run function du:player/add_damage

execute if entity @s[type=!player] run scoreboard players operation @s du_health += in_0 mech_data

scoreboard players set in_0 du_data 0
execute if entity @s[type=drowned] run function mechanization:gadgets/guns/bullet/damage_undead
execute if entity @s[type=giant] run function mechanization:gadgets/guns/bullet/damage_undead
execute if entity @s[type=husk] run function mechanization:gadgets/guns/bullet/damage_undead
execute if entity @s[type=phantom] run function mechanization:gadgets/guns/bullet/damage_undead
execute if entity @s[type=skeleton] run function mechanization:gadgets/guns/bullet/damage_undead
execute if entity @s[type=stray] run function mechanization:gadgets/guns/bullet/damage_undead
execute if entity @s[type=wither_skeleton] run function mechanization:gadgets/guns/bullet/damage_undead
execute if entity @s[type=zombie] run function mechanization:gadgets/guns/bullet/damage_undead
execute if entity @s[type=zombie_pigman] run function mechanization:gadgets/guns/bullet/damage_undead
execute if entity @s[type=zombie_villager] run function mechanization:gadgets/guns/bullet/damage_undead

execute if score in_0 du_data matches 0 if entity @s[type=!player] run function du:player/damage