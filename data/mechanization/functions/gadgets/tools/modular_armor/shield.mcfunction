
#recharge
execute if score @s[tag=!mechanization.player.shield_stun] mechanization.player.shield < $in_1 mechanization.data run scoreboard players operation $in_0 mechanization.data = $gadgets.cf.shield_power mech_data
execute if score @s[tag=!mechanization.player.shield_stun] mechanization.player.shield < $in_1 mechanization.data run function mechanization:base/energy/player_energy
execute if score @s[tag=!mechanization.player.shield_stun] mechanization.player.shield < $in_1 mechanization.data if score $out_0 mechanization.data matches 1.. run scoreboard players add @s mechanization.player.shield 1
execute if score @s[tag=!mechanization.player.shield_stun] mechanization.player.shield < $in_1 mechanization.data if score $out_0 mechanization.data matches 1.. if data storage du:temp list[].tag.mech_upgrades.items[].tag.mech_upgrade{effect:"shield_recharge"} run scoreboard players add @s mechanization.player.shield 1
tag @s remove mechanization.player.shield_stun

#cap if needed
execute if score @s mechanization.player.shield > $in_1 mechanization.data run scoreboard players operation @s mechanization.player.shield = $in_1 mech_data
execute unless score @s mechanization.player.shield matches 0.. run scoreboard players set @s mechanization.player.shield 0

#apply resistance
execute if score @s mechanization.player.shield matches 1.. run effect give @s minecraft:resistance 2 3 true
execute if score @s mechanization.player.shield matches 1.. run particle minecraft:dust 0 0.5 1 1 ~ ~ ~ 0.2 0 0.2 0 10
