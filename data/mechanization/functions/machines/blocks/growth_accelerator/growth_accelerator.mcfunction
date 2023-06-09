
# main
function mechanization:base/utils/redstone_active

scoreboard players set #success mechanization.data 0
execute if score #active mechanization.data matches 1 if score @s[tag=!mechanization.upgraded] energy.storage >= #machines.cf.growth.power mechanization.data run function mechanization:machines/blocks/growth_accelerator/accelerate
execute if score #active mechanization.data matches 1 if score @s[tag=mechanization.upgraded,tag=!mechanization.upgraded.nether] energy.storage >= #machines.cf.growth.power mechanization.data run function mechanization:machines/blocks/growth_accelerator/accelerate_upgrade
execute if score #active mechanization.data matches 1 if score @s[tag=mechanization.upgraded.ender] energy.storage >= #machines.cf.growth.power mechanization.data run function mechanization:machines/blocks/growth_accelerator/accelerate_ender
execute if score #active mechanization.data matches 1 if score @s[tag=mechanization.upgraded.nether] energy.storage >= #machines.cf.growth.power mechanization.data run function mechanization:machines/blocks/growth_accelerator/accelerate_nether
execute if score #success mechanization.data matches 1 run scoreboard players operation @s energy.storage -= #machines.cf.growth.power mechanization.data

# cleanup
execute unless block ~ ~ ~ minecraft:barrier run function mechanization:base/utils/break_block/break_machine_t1
