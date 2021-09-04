
execute store result score $temp_0 mech_data run data get entity @s SelectedItem.tag.mech_upgrades.saber_range
scoreboard players operation $temp_1 mech_data = @s du_uuid

execute if score $temp_0 mech_data matches 1.. run summon minecraft:armor_stand ~ ~1 ~ {Tags:["mech_energy_saber","mech_temp"],NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,Pose:{Head:[0f,1f,0f]},CustomName:'{"translate":"mech.item.energy_saber"}'}
execute if score $temp_0 mech_data matches 1.. run item replace block -29999999 0 1601 container.0 from entity @s weapon.mainhand
execute if score $temp_0 mech_data matches 1.. run item replace entity @s[gamemode=!creative] weapon.mainhand with minecraft:air
execute if score $temp_0 mech_data matches 1.. as @e[type=armor_stand,tag=mech_temp,distance=..8] run function mechanization:gadgets/tools/energy_saber/throw_saber_2
