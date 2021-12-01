
#load scoreboard values
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.stored_energy matches -2147483648.. store result score @s mechanization.stored_energy run data get entity @s Item.tag.mech_power
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.network_id matches -2147483648.. store result score @s mechanization.network_id run data get entity @s Item.tag.mech_gridid
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.data matches -2147483648.. store result score @s mechanization.data run data get entity @s Item.tag.mech_data

#main
execute if entity @s[scores={mech_power=..4000,mech_data=..0},tag=!mech_upgrade_ender,tag=!mech_upgrade_nether] if data block ~ ~ ~ Items[{Slot:0b}] run function mechanization:machines/machines/dim_gen/fuel_overworld
execute if entity @s[scores={mech_power=..4000,mech_data=..0},tag=mech_upgrade_ender] if data block ~ ~ ~ Items[{Slot:0b}] run function mechanization:machines/machines/dim_gen/fuel_end
execute if entity @s[scores={mech_power=..4000,mech_data=..0},tag=mech_upgrade_nether] if data block ~ ~ ~ Items[{Slot:0b}] run function mechanization:machines/machines/dim_gen/fuel_nether

#display
item replace block ~ ~ ~ container.1 with minecraft:structure_block{CustomModelData:6421202,du_gui:1b,HideFlags:63,display:{Name:'{"text":""}'}}

execute store success entity @s Item.tag.CustomModelData int 6422015 if entity @s
execute if entity @s[scores={mech_power=..4000,mech_data=1..}] store success entity @s Item.tag.CustomModelData int 6422911 if entity @s

#effect
execute if entity @s[scores={mech_power=..4000,mech_data=1..},tag=!mech_muffler] run playsound mechanization:machines.ender_generator block @a[distance=..16] ~ ~ ~ 0.2 1
scoreboard players set temp_0 mechanization.data 20
scoreboard players operation temp_0 mechanization.data *= @s mech_data
execute store result block ~ ~ ~ BurnTime short 1 run scoreboard players get temp_0 mech_data

#power & fuel
execute if entity @s[scores={mech_power=..4000,mech_data=1..},tag=!mech_upgraded] run scoreboard players operation @s mechanization.stored_energy += $machines.cf.dim_gen.power mech_data
execute if entity @s[scores={mech_power=..4000,mech_data=1..},tag=mech_upgraded] run scoreboard players operation @s mechanization.stored_energy += $machines.cf.dim_gen.power_mu mech_data
execute if entity @s[scores={mech_power=..4000,mech_data=1..}] run scoreboard players remove @s mechanization.data 1

#store scoreboard values
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_power int 1 run scoreboard players get @s mech_power
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_gridid int 1 run scoreboard players get @s mech_gridid
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_data int 1 run scoreboard players get @s mech_data

#cleanup
execute unless block ~ ~ ~ minecraft:furnace run function mechanization:base/utils/break_machine_t3
