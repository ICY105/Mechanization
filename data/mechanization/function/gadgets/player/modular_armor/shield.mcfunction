
# recharge
execute if score @s mechanization.shield < #shield mechanization.data run scoreboard players operation #player.in energy.data = #gadgets.cf.shield_power mechanization.data
scoreboard players operation #player.in energy.data *= #cons.-1 mechanization.data
execute if score @s mechanization.shield < #shield mechanization.data run function energy:v1/api/modify_player_energy
execute if score @s mechanization.shield < #shield mechanization.data if score #player.out energy.data matches 1.. run scoreboard players add @s mechanization.shield 1
execute if score @s mechanization.shield < #shield mechanization.data if score #player.out energy.data matches 1.. if data storage mechanization:temp list[].tag.mechanization.upgrades.items[].tag.mech_upgrade{effect:"shield_recharge"} run scoreboard players add @s mechanization.shield 1
tag @s remove mechanization.shield_stun

# cap if needed
execute if score @s mechanization.shield > #shield mechanization.data run scoreboard players operation @s mechanization.shield = #shield mechanization.data
execute unless score @s mechanization.shield matches 0.. run scoreboard players set @s mechanization.shield 0

# apply resistance
execute if score @s mechanization.shield matches 1.. run effect give @s minecraft:resistance 2 3 true
execute if score @s mechanization.shield matches 1.. run particle minecraft:dust{color:[0.0,0.5,1.0],scale:1} ~ ~ ~ 0.2 0 0.2 0 10
