
# main
function mechanization:base/utils/redstone_active

scoreboard players set #success mechanization.data 0
execute if score #active mechanization.data matches 1 if score @s[tag=!mechanization.upgraded] energy.storage >= #machines.cf.growth.power mechanization.data run function mechanization:machines/blocks/growth_accelerator/accelerate
execute if score #active mechanization.data matches 1 if score @s[tag=mechanization.upgraded,tag=!mechanization.upgraded.nether] energy.storage >= #machines.cf.growth.power mechanization.data run function mechanization:machines/blocks/growth_accelerator/accelerate_upgrade
execute if score #active mechanization.data matches 1 if score @s[tag=mechanization.upgraded.ender] energy.storage >= #machines.cf.growth.power mechanization.data run function mechanization:machines/blocks/growth_accelerator/accelerate_ender
execute if score #active mechanization.data matches 1 if score @s[tag=mechanization.upgraded.nether] energy.storage >= #machines.cf.growth.power mechanization.data run function mechanization:machines/blocks/growth_accelerator/accelerate_nether
execute if score #success mechanization.data matches 1 run scoreboard players operation @s energy.storage -= #machines.cf.growth.power mechanization.data
execute if score #success mechanization.data matches 1 run particle minecraft:happy_villager ~ ~1.6 ~ 0.3 0.1 0.3 0 8
execute if score #success mechanization.data matches 1 run playsound minecraft:item.bone_meal.use block @a[distance=..8]

# cleanup
execute unless block ~ ~ ~ minecraft:barrier run function mechanization:base/utils/break_block/break_machine_t1
