tag @s remove mech_fire_cont

#consume energy
execute store result score in_0 mech_data run data get entity @s SelectedItem.tag.mech_gun.energy
function mechanization:base/energy/player_energy

execute if score out_0 mech_data matches 1 run playsound mechanization:gadgets.laser_gun player @a[distance=..24] ~ ~1 ~ 4

#summon bullet
execute if score out_0 mech_data matches 1 store result score temp_1 mech_data run data get entity @s SelectedItem.tag.mech_gun.damage
execute if score out_0 mech_data matches 1 store result score temp_2 mech_data run data get entity @s SelectedItem.tag.mech_gun.velocity
execute if score out_0 mech_data matches 1 store result score temp_3 mech_data run data get entity @s SelectedItem.tag.mech_gun.bouncy
execute if score out_0 mech_data matches 1 run function mechanization:gadgets/guns/bullet/spawn_bullet

#recoil
execute if score out_0 mech_data matches 1 store result score temp_1 mech_data run data get entity @s SelectedItem.tag.mech_gun.recoil_x
execute if score out_0 mech_data matches 1 store result score temp_2 mech_data run data get entity @s SelectedItem.tag.mech_gun.recoil_y
execute if score out_0 mech_data matches 1 run function mechanization:gadgets/guns/recoil

#weapon heat
execute if score out_0 mech_data matches 1 store result score temp_1 mech_data run data get entity @s SelectedItem.tag.mech_gun.heat
execute if score out_0 mech_data matches 1 run scoreboard players operation @s mech_weaponheat += temp_1 mech_data

#set fire rate
execute if score @s mech_firerate matches 1.. run scoreboard players set out_0 mech_data 0
execute if score out_0 mech_data matches 1 store result score temp_1 mech_data run data get entity @s SelectedItem.tag.mech_gun.fire_rate
execute if score out_0 mech_data matches 1 run scoreboard players operation @s mech_firerate = temp_1 mech_data
execute if score out_0 mech_data matches 1 if score @s mech_firerate matches 1..3 run tag @s add mech_fire_cont
execute if score out_0 mech_data matches 1 if score @s mech_firerate matches 1..3 run scoreboard players set @s mech_firerate 4
