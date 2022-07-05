
# check output
function mechanization:base/utils/redstone_active
execute if score #active mechanization.data matches 0 run scoreboard players set @s mechanization.timer 0

execute if score @s mechanization.timer matches 1 if entity @s[tag=!mechanization.upgraded] run function mechanization:machines/machines/grinder/output
execute if score @s mechanization.timer matches 1 if entity @s[tag=mechanization.upgraded,tag=!mechanization.upgraded.nether,tag=!mechanization.upgraded.ender] run function mechanization:machines/machines/grinder/output_upgrade
execute if score @s mechanization.timer matches 1 if entity @s[tag=mechanization.upgraded.nether] run function mechanization:machines/machines/grinder/output_upgrade_nether
execute if score @s mechanization.timer matches 1 if entity @s[tag=mechanization.upgraded.ender] run function mechanization:machines/machines/grinder/output_upgrade_ender

# check input
execute if score #active mechanization.data matches 1 unless score @s mechanization.timer matches 2.. if entity @s[tag=!mechanization.upgraded] run function mechanization:machines/machines/grinder/input
execute if score #active mechanization.data matches 1 unless score @s mechanization.timer matches 2.. if entity @s[tag=mechanization.upgraded,tag=!mechanization.upgraded.nether,tag=!mechanization.upgraded.ender] run function mechanization:machines/machines/grinder/input_upgrade
execute if score #active mechanization.data matches 1 unless score @s mechanization.timer matches 2.. if entity @s[tag=mechanization.upgraded.nether] run function mechanization:machines/machines/grinder/input_upgrade_nether
execute if score #active mechanization.data matches 1 unless score @s mechanization.timer matches 2.. if entity @s[tag=mechanization.upgraded.ender] run function mechanization:machines/machines/grinder/input_upgrade_ender

# update
execute if score @s energy.storage < #machines.cf.grinder.power mechanization.data run scoreboard players set @s mechanization.timer 0
execute if score @s mechanization.timer matches 1.. run scoreboard players operation @s energy.storage -= #machines.cf.grinder.power mechanization.data
execute if score @s mechanization.timer matches 1.. run scoreboard players remove @s mechanization.timer 1
execute if score @s mechanization.timer matches 1.. unless data block ~ ~ ~ Items[{Slot:0b}] run scoreboard players set @s mechanization.timer 0
execute if score @s mechanization.timer matches 1.. if entity @s[tag=!mechanization.muffled] run playsound mechanization:machines.grinder block @a[distance=..16] ~ ~ ~ 0.75 0.9

# ui
item replace block ~ ~ ~ container.1 with minecraft:structure_block{CustomModelData:6421202,HideFlags:63,display:{Name:'{"text":""}'},mechanization:{gui_item:1b}}
execute if score @s mechanization.timer matches 1.. store success entity @s Item.tag.CustomModelData int 6422907 if entity @s
execute if score @s mechanization.timer matches 0 store success entity @s Item.tag.CustomModelData int 6422009 if entity @s

#cleanup
execute unless block ~ ~ ~ minecraft:furnace run function mechanization:base/utils/break_machine_t1
