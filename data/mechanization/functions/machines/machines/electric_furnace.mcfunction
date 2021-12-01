
## load scoreboard values
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.stored_energy matches -2147483648.. store result score @s mechanization.stored_energy run data get entity @s Item.tag.mech_power
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.network_id matches -2147483648.. store result score @s mechanization.network_id run data get entity @s Item.tag.mech_gridid

### Main
item replace block ~ ~ ~ container.1 with minecraft:structure_block{CustomModelData:6421202,du_gui:1b,HideFlags:63,display:{Name:'{"text":""}'}}

#get has item
scoreboard players set $temp_0 mechanization.data 0
execute store result score $temp_0 mechanization.data if block ~ ~ ~ minecraft:furnace{Items:[{Slot:0b}]}

#change burn & cooktime
execute if score $temp_0 mechanization.data matches 1 if entity @s[scores={mech_power=20..},tag=!mech_upgraded] run data merge block ~ ~ ~ {BurnTime:200}
execute if score $temp_0 mechanization.data matches 1 if entity @s[scores={mech_power=20..},tag=mech_upgraded,tag=!mech_upgrade_ender,tag=!mech_upgrade_nether] run data merge block ~ ~ ~ {BurnTime:200s,CookTimeTotal:150s}
execute if score $temp_0 mechanization.data matches 1 if entity @s[scores={mech_power=20..},tag=mech_upgrade_ender] run data merge block ~ ~ ~ {BurnTime:200s,CookTimeTotal:100s}
execute if score $temp_0 mechanization.data matches 1 if entity @s[scores={mech_power=200..},tag=mech_upgrade_nether] run data merge block ~ ~ ~ {BurnTime:200s,CookTime:1,CookTimeTotal:19s}

execute if score $temp_0 mechanization.data matches 1 if entity @s[scores={mech_power=..19},tag=!mech_upgrade_nether] run data merge block ~ ~ ~ {BurnTime:1}
execute if score $temp_0 mechanization.data matches 1 if entity @s[scores={mech_power=..199},tag=mech_upgrade_nether] run data merge block ~ ~ ~ {BurnTime:1}
execute if score $temp_0 mechanization.data matches 0 if block ~ ~ ~ furnace[lit=true] run data merge block ~ ~ ~ {BurnTime:1}

#use power
execute if score $temp_0 mechanization.data matches 1 if entity @s[scores={mech_power=20..},tag=!mech_upgrade_nether] run scoreboard players remove @s mechanization.stored_energy 20
execute if score $temp_0 mechanization.data matches 1 if entity @s[scores={mech_power=100..},tag=mech_upgrade_nether] run scoreboard players remove @s mechanization.stored_energy 200

#display
execute if block ~ ~ ~ furnace[lit=false] unless block ~ ~ ~ furnace{BurnTime:0s} run function mechanization:base/utils/set_furnace_lit

execute if block ~ ~ ~ furnace[lit=false] store success entity @s Item.tag.CustomModelData int 6422003 if entity @s
execute if block ~ ~ ~ furnace[lit=true] store success entity @s Item.tag.CustomModelData int 6422905 if entity @s
execute if block ~ ~ ~ furnace[lit=true] if entity @s[tag=!mech_muffler] run playsound mechanization:machines.electric_furnace block @a[distance=..16] ~ ~ ~ 0.75 1

## store scoreboard values
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_power int 1 run scoreboard players get @s mech_power
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

## cleanup
execute unless block ~ ~ ~ furnace run function mechanization:base/utils/break_machine_t1
