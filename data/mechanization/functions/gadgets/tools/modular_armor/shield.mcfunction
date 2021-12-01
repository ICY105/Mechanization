
#recharge
execute if score @s[tag=!mech_shield_stun] mech_shield < $in_1 mech_data run scoreboard players operation $in_0 mech_data = $gadgets.cf.shield_power mech_data
execute if score @s[tag=!mech_shield_stun] mech_shield < $in_1 mech_data run function mechanization:base/energy/player_energy
execute if score @s[tag=!mech_shield_stun] mech_shield < $in_1 mech_data if score $out_0 mech_data matches 1.. run scoreboard players add @s mech_shield 1
execute if score @s[tag=!mech_shield_stun] mech_shield < $in_1 mech_data if score $out_0 mech_data matches 1.. if data storage du:temp list[].tag.mech_upgrades.items[].tag.mech_upgrade{effect:"shield_recharge"} run scoreboard players add @s mech_shield 1
tag @s remove mech_shield_stun

#cap if needed
execute if score @s mech_shield > $in_1 mech_data run scoreboard players operation @s mech_shield = $in_1 mech_data
execute unless score @s mech_shield matches 0.. run scoreboard players set @s mech_shield 0

#apply resistance
execute if score @s mech_shield matches 1.. run effect give @s minecraft:resistance 2 3 true
execute if score @s mech_shield matches 1.. run particle minecraft:dust 0 0.5 1 1 ~ ~ ~ 0.2 0 0.2 0 10
