
# main
function mechanization:base/utils/redstone_active

execute if score #active mechanization.data matches 1 if score @s energy.storage >= #machines.cf.auto_farm.power mechanization.data if entity @s[tag=!mechanization.upgraded.nether,tag=!mechanization.upgraded.ender] run function mechanization:machines/blocks/auto_farm/normal
execute if score #active mechanization.data matches 1 if score @s energy.storage >= #machines.cf.auto_farm.power mechanization.data if entity @s[tag=mechanization.upgraded.ender] run function mechanization:machines/blocks/auto_farm/upgrade_ender
execute if score #active mechanization.data matches 1 if score @s energy.storage >= #machines.cf.auto_farm.power mechanization.data if entity @s[tag=mechanization.upgraded.nether] run function mechanization:machines/blocks/auto_farm/upgrade_nether
execute if score #active mechanization.data matches 1 if score @s energy.storage >= #machines.cf.auto_farm.power mechanization.data if entity @s[tag=mechanization.upgraded] run tp @e[type=item,distance=..5] ~ ~1 ~
execute if score #active mechanization.data matches 1 if score @s energy.storage >= #machines.cf.auto_farm.power mechanization.data run scoreboard players operation @s energy.storage -= #machines.cf.auto_farm.power mechanization.data

# cleanup
execute unless block ~ ~ ~ minecraft:barrier run function mechanization:base/utils/break_block/break_machine_t2
