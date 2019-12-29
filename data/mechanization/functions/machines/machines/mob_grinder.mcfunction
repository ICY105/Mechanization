
#load scoreboard values
execute unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s ArmorItems[3].tag.mech_power
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s ArmorItems[3].tag.mech_gridid

## Main
scoreboard players set temp_0 mech_data 0
function du:world/blocks/is_active

#spawn loot
execute if score $world.out_0 du_data matches 0 if entity @s[tag=!mech_upgraded,scores={mech_power=160..}] as @e[distance=..5,type=#mechanization:mob_grinder] at @s run loot spawn ~ ~1 ~ kill @s
execute if score $world.out_0 du_data matches 0 if entity @s[tag=!mech_upgrade_ender,tag=!mech_upgrade_nether,scores={mech_power=160..}] as @e[distance=..5,type=#mechanization:mob_grinder] run loot spawn ~ ~1 ~ kill @s
execute if score $world.out_0 du_data matches 0 if entity @s[tag=mech_upgrade_ender,scores={mech_power=160..}] as @e[distance=..9,type=#mechanization:mob_grinder] run loot spawn ~ ~1 ~ kill @s
execute if score $world.out_0 du_data matches 0 if entity @s[tag=mech_upgrade_nether,scores={mech_power=320..}] as @e[distance=..2,type=#mechanization:mob_grinder] run loot spawn ~ ~1 ~ kill @s
execute if score $world.out_0 du_data matches 0 if entity @s[tag=mech_upgrade_nether,scores={mech_power=160..}] as @e[distance=..2,type=#mechanization:mob_grinder] run loot spawn ~ ~1 ~ kill @s

#kill entities
execute if score $world.out_0 du_data matches 0 if entity @s[tag=!mech_upgrade_ender,tag=!mech_upgrade_nether,scores={mech_power=160..}] store result score temp_0 mech_data run tp @e[distance=..5,type=#mechanization:mob_grinder] ~ -300 ~
execute if score $world.out_0 du_data matches 0 if entity @s[tag=mech_upgrade_nether,scores={mech_power=160..}] store result score temp_0 mech_data run tp @e[distance=..2,type=#mechanization:mob_grinder] ~ -300 ~
execute if score $world.out_0 du_data matches 0 if entity @s[tag=mech_upgrade_ender,scores={mech_power=160..}] store result score temp_0 mech_data run tp @e[distance=..9,type=#mechanization:mob_grinder] ~ -300 ~

#power & effects
execute if score $world.out_0 du_data matches 0 if score temp_0 mech_data matches 1.. run particle flame ~ ~ ~ 2 0 2 0 100
execute if score $world.out_0 du_data matches 0 if score temp_0 mech_data matches 1.. run scoreboard players remove @s[tag=!mech_upgrade_nether] mech_power 160
execute if score $world.out_0 du_data matches 0 if score temp_0 mech_data matches 1.. run scoreboard players remove @s[tag=mech_upgrade_nether] mech_power 320

#store scoreboard values
execute store result entity @s ArmorItems[3].tag.mech_power int 1 run scoreboard players get @s mech_power
execute store result entity @s ArmorItems[3].tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

#cleanup
execute unless block ~ ~ ~ barrier run loot spawn ~ ~ ~ loot mechanization:base/tier_2_machine_frame
execute unless block ~ ~ ~ barrier run kill @s
