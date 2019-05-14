
#load scoreboard values
execute unless score @s mech_power matches -2147483648.. store result score @s mech_power run data get entity @s ArmorItems[3].tag.mech_power
execute unless score @s mech_gridid matches -2147483648.. store result score @s mech_gridid run data get entity @s ArmorItems[3].tag.mech_gridid

#main
scoreboard players set temp_0 mech_data 0
execute if score @s[tag=!mech_upgrade_nether] mech_power matches 80.. run function mechanization:machines/machines/growth_accelerator/accelerate
execute if score @s[tag=mech_upgraded,tag=!mech_upgrade_nether] mech_power matches 80.. run function mechanization:machines/machines/growth_accelerator/accelerate_upgrade
execute if score @s[tag=mech_upgrade_ender] mech_power matches 80.. run function mechanization:machines/machines/growth_accelerator/accelerate_ender
execute if score @s[tag=mech_upgrade_nether] mech_power matches 80.. run function mechanization:machines/machines/growth_accelerator/accelerate_nether
execute if score temp_0 mech_data matches 1 run scoreboard players remove @s mech_power 80

#store scoreboard values
execute store result entity @s ArmorItems[3].tag.mech_power int 1 run scoreboard players get @s mech_power
execute store result entity @s ArmorItems[3].tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

#cleanup
execute unless block ~ ~ ~ barrier run loot spawn ~ ~ ~ loot mechanization:base/tier_1_machine_frame
execute unless block ~ ~ ~ barrier run kill @s
