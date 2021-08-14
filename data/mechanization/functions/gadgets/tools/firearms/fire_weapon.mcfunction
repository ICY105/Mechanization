
#consume energy
execute store result score in_0 mech_data run data get entity @s SelectedItem.tag.mech_gun.energy
function mechanization:base/energy/player_energy

execute if score out_0 mech_data matches 1 run playsound mechanization:gadgets.laser_gun player @a[distance=..24] ~ ~1 ~ 4

#summon bullet
execute if score out_0 mech_data matches 1 store result score temp_1 mech_data run data get entity @s SelectedItem.tag.mech_gun.damage
execute if score out_0 mech_data matches 1 store result score temp_2 mech_data run data get entity @s SelectedItem.tag.mech_gun.velocity
execute if score out_0 mech_data matches 1 store result score temp_3 mech_data run data get entity @s SelectedItem.tag.mech_gun.bouncy
execute if score out_0 mech_data matches 1 store result score temp_4 mech_data run data get entity @s SelectedItem.tag.mech_gun.count
execute if score out_0 mech_data matches 1 anchored eyes positioned ^ ^ ^ run function mechanization:gadgets/tools/firearms/bullet/spawn_bullet
execute if score out_0 mech_data matches 1 if score temp_4 mech_data matches 2.. anchored eyes positioned ^ ^ ^ rotated ~5 ~ run function mechanization:gadgets/tools/firearms/bullet/spawn_bullet
execute if score out_0 mech_data matches 1 if score temp_4 mech_data matches 3.. anchored eyes positioned ^ ^ ^ rotated ~-5 ~ run function mechanization:gadgets/tools/firearms/bullet/spawn_bullet
execute if score out_0 mech_data matches 1 if score temp_4 mech_data matches 4.. anchored eyes positioned ^ ^ ^ rotated ~ ~5 run function mechanization:gadgets/tools/firearms/bullet/spawn_bullet
execute if score out_0 mech_data matches 1 if score temp_4 mech_data matches 5.. anchored eyes positioned ^ ^ ^ rotated ~ ~-5 run function mechanization:gadgets/tools/firearms/bullet/spawn_bullet
execute if score out_0 mech_data matches 1 if score temp_4 mech_data matches 6.. anchored eyes positioned ^ ^ ^ rotated ~3 ~3 run function mechanization:gadgets/tools/firearms/bullet/spawn_bullet
execute if score out_0 mech_data matches 1 if score temp_4 mech_data matches 7.. anchored eyes positioned ^ ^ ^ rotated ~3 ~-3 run function mechanization:gadgets/tools/firearms/bullet/spawn_bullet
execute if score out_0 mech_data matches 1 if score temp_4 mech_data matches 8.. anchored eyes positioned ^ ^ ^ rotated ~-3 ~3 run function mechanization:gadgets/tools/firearms/bullet/spawn_bullet
execute if score out_0 mech_data matches 1 if score temp_4 mech_data matches 9.. anchored eyes positioned ^ ^ ^ rotated ~-3 ~-3 run function mechanization:gadgets/tools/firearms/bullet/spawn_bullet

#weapon heat
execute if score out_0 mech_data matches 1 store result score temp_1 mech_data run data get entity @s SelectedItem.tag.mech_gun.heat
execute if score out_0 mech_data matches 1 run scoreboard players operation @s mech_weaponheat += temp_1 mech_data

#set fire rate
execute if score @s mech_firerate matches 1.. run scoreboard players set out_0 mech_data 0
execute if score out_0 mech_data matches 1 store result score temp_1 mech_data run data get entity @s SelectedItem.tag.mech_gun.fire_rate
execute if score out_0 mech_data matches 1 run scoreboard players operation @s mech_firerate = temp_1 mech_data
