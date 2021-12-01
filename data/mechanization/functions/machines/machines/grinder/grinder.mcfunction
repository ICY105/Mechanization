
#load scoreboard values
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.stored_energy matches -2147483648.. store result score @s mechanization.stored_energy run data get entity @s Item.tag.mech_power
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.network_id matches -2147483648.. store result score @s mechanization.network_id run data get entity @s Item.tag.mech_gridid

### Main

#ui
item replace block ~ ~ ~ container.1 with minecraft:structure_block{CustomModelData:6421202,du_gui:1b,HideFlags:63,display:{Name:'{"text":""}'}}

#check output
execute if score @s mechanization.timer matches 1 if entity @s[tag=!mech_upgraded] run function mechanization:machines/machines/grinder/output
execute if score @s mechanization.timer matches 1 if entity @s[tag=mech_upgraded,tag=!mech_upgrade_nether,tag=!mech_upgrade_ender] run function mechanization:machines/machines/grinder/output_upgrade
execute if score @s mechanization.timer matches 1 if entity @s[tag=mech_upgrade_nether] run function mechanization:machines/machines/grinder/output_upgrade_nether
execute if score @s mechanization.timer matches 1 if entity @s[tag=mech_upgrade_ender] run function mechanization:machines/machines/grinder/output_upgrade_ender

#check input
execute unless score @s mechanization.timer matches 2.. if entity @s[tag=!mech_upgraded] run function mechanization:machines/machines/grinder/input
execute unless score @s mechanization.timer matches 2.. if entity @s[tag=mech_upgraded,tag=!mech_upgrade_nether,tag=!mech_upgrade_ender] run function mechanization:machines/machines/grinder/input_upgrade
execute unless score @s mechanization.timer matches 2.. if entity @s[tag=mech_upgrade_nether] run function mechanization:machines/machines/grinder/input_upgrade_nether
execute unless score @s mechanization.timer matches 2.. if entity @s[tag=mech_upgrade_ender] run function mechanization:machines/machines/grinder/input_upgrade_ender

#update
execute if score @s mechanization.stored_energy < $machines.cf.grinder.power mechanization.data run scoreboard players set @s mechanization.timer 0
execute if score @s mechanization.timer matches 1.. run scoreboard players operation @s mechanization.stored_energy -= $machines.cf.grinder.power mech_data
execute if score @s mechanization.timer matches 1.. run scoreboard players remove @s mechanization.timer 1
execute if score @s mechanization.timer matches 1.. unless data block ~ ~ ~ Items[{Slot:0b}] run scoreboard players set @s mechanization.timer 0

execute if score @s mechanization.timer matches 1.. if entity @s[tag=!mech_muffler] run playsound mechanization:machines.grinder block @a[distance=..16] ~ ~ ~ 0.75 0.9
execute if score @s mechanization.timer matches 1.. store success entity @s Item.tag.CustomModelData int 6422907 if entity @s
execute if score @s mechanization.timer matches 0 store success entity @s Item.tag.CustomModelData int 6422009 if entity @s

###

#store scoreboard values
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_power int 1 run scoreboard players get @s mech_power
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

#cleanup
execute unless block ~ ~ ~ minecraft:furnace run function mechanization:base/utils/break_machine_t1
