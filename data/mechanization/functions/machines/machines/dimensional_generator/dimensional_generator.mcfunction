
# add fuel
function mechanization:base/utils/redstone_active

execute if score #active mechanization.data matches 1 if score @s[tag=!mechanization.upgraded.ender,tag=!mechanization.upgraded.nether] energy.storage matches ..4000 if score @s mechanization.data matches ..0 if data block ~ ~ ~ Items[{Slot:0b}] run function mechanization:machines/machines/dimensional_gen/fuel_overworld
execute if score #active mechanization.data matches 1 if score @s[tag=mechanization.upgraded.ender] energy.storage matches ..4000 if score @s mechanization.data matches ..0 if data block ~ ~ ~ Items[{Slot:0b}] run function mechanization:machines/machines/dimensional_gen/fuel_end
execute if score #active mechanization.data matches 1 if score @s[tag=mechanization.upgraded.nether] energy.storage matches ..4000 if score @s mechanization.data matches ..0 if data block ~ ~ ~ Items[{Slot:0b}] run function mechanization:machines/machines/dimensional_gen/fuel_nether

# display
item replace block ~ ~ ~ container.1 with minecraft:structure_block{CustomModelData:6421202,HideFlags:63,display:{Name:'{"text":""}'},mechanization:{gui_item:1b}}

execute store success entity @s Item.tag.CustomModelData int 6422015 if entity @s
execute if score @s energy.storage matches ..4000 if score @s mechanization.data matches 1.. store success entity @s Item.tag.CustomModelData int 6422911 if entity @s

# effect
execute if score #active mechanization.data matches 1 if score @s[tag=!mechanization.muffled] energy.storage matches ..4000 if score @s mechanization.data matches 1.. run playsound mechanization:machines.ender_generator block @a[distance=..16] ~ ~ ~ 0.2 1
execute if score #active mechanization.data matches 1 run scoreboard players set #burn_time mechanization.data 20
execute if score #active mechanization.data matches 1 run scoreboard players operation #burn_time mechanization.data *= @s mechanization.data
execute if score #active mechanization.data matches 1 store result block ~ ~ ~ BurnTime short 1 run scoreboard players get #burn_time mechanization.data

# power & fuel
execute if score #active mechanization.data matches 1 if score @s[tag=!mechanization.upgraded] energy.storage matches ..4000 if score @s mechanization.data matches 1.. run scoreboard players operation @s energy.storage += #machines.cf.dim_gen.power mechanization.data
execute if score #active mechanization.data matches 1 if score @s[tag=mechanization.upgraded] energy.storage matches ..4000 if score @s mechanization.data matches 1.. run scoreboard players operation @s energy.storage += #machines.cf.dim_gen.power.machine_upgrade mechanization.data
execute if score #active mechanization.data matches 1 if score @s energy.storage matches ..4000 if score @s mechanization.data matches 1.. run scoreboard players remove @s mechanization.data 1

# cleanup
execute unless block ~ ~ ~ minecraft:furnace run function mechanization:base/utils/break_machine_t3
