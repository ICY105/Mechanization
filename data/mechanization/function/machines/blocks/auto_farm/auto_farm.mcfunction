
# main
function mechanization:base/utils/redstone_active

scoreboard players set #success mechanization.data 0
execute if score #active mechanization.data matches 1 if score @s energy.storage >= #machines.cf.auto_farm.power mechanization.data if entity @s[tag=!mechanization.upgraded.nether,tag=!mechanization.upgraded.ender] run function mechanization:machines/blocks/auto_farm/normal
execute if score #active mechanization.data matches 1 if score @s energy.storage >= #machines.cf.auto_farm.power mechanization.data if entity @s[tag=mechanization.upgraded.ender] run function mechanization:machines/blocks/auto_farm/upgrade_ender
execute if score #active mechanization.data matches 1 if score @s energy.storage >= #machines.cf.auto_farm.power mechanization.data if entity @s[tag=mechanization.upgraded.nether] run function mechanization:machines/blocks/auto_farm/upgrade_nether
execute if score #active mechanization.data matches 1 if score @s energy.storage >= #machines.cf.auto_farm.power mechanization.data if entity @s[tag=mechanization.upgraded] align xyz positioned ~-4 ~-1 ~-4 run tp @e[type=minecraft:item,dx=8,dz=8,dy=3] ~4.5 ~1 ~4.5
execute if score #success mechanization.data matches 1 run scoreboard players operation @s energy.storage -= #machines.cf.auto_farm.power mechanization.data

execute if score #success mechanization.data matches 0 run item modify entity @s contents {"function":"minecraft:set_custom_model_data","value":6422005}
execute if score #success mechanization.data matches 1 run item modify entity @s contents {"function":"minecraft:set_custom_model_data","value":6422953}

# cleanup
execute unless block ~ ~ ~ minecraft:barrier run function mechanization:base/utils/break_block/break_machine_t2
